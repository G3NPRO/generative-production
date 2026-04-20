-- filters/slide-duration.lua
--
-- Reads the active Quarto profile from the QUARTO_PROFILE environment variable
-- (Quarto sets this during `quarto render --profile X`). If the profile name
-- matches the pattern "<N>min" (e.g., "15min"), every slide whose
-- `data-duration` attribute does not include N is removed.
--
-- A "slide" is a Pandoc section whose first block is a level-2 header
-- (standard Reveal.js convention in Quarto).
--
-- Slide headings look like:
--   ## Some title {data-duration="5,15,30,60" data-section="prompting" data-level="intro"}
-- Missing attributes are ignored (the slide stays).

local function active_duration()
  local profile = os.getenv("QUARTO_PROFILE") or ""
  -- QUARTO_PROFILE may be a comma-separated list; find the first <N>min entry
  for token in string.gmatch(profile, "([^,]+)") do
    local trimmed = token:match("^%s*(.-)%s*$")
    local n = trimmed:match("^(%d+)min$")
    if n then return n end
  end
  return nil
end

local function duration_matches(attr, target)
  if not attr or attr == "" then
    return true  -- no metadata means keep
  end
  for d in string.gmatch(attr, "(%d+)") do
    if d == target then
      return true
    end
  end
  return false
end

function Pandoc(doc)
  local target = active_duration()
  if not target then
    return doc  -- no duration profile active, pass through
  end

  local filtered = {}
  local skipping = false
  local skip_level = nil

  for _, block in ipairs(doc.blocks) do
    if block.t == "Header" and block.level == 2 then
      local attr = block.attributes and block.attributes["data-duration"]
      if not duration_matches(attr, target) then
        skipping = true
        skip_level = block.level
      else
        skipping = false
        skip_level = nil
        table.insert(filtered, block)
      end
    elseif block.t == "Header" and skipping and block.level <= skip_level then
      local attr = block.attributes and block.attributes["data-duration"]
      if duration_matches(attr, target) then
        skipping = false
        skip_level = nil
        table.insert(filtered, block)
      end
    elseif not skipping then
      table.insert(filtered, block)
    end
  end

  doc.blocks = filtered
  return doc
end
