-- filters/slide-duration.lua
--
-- Reads the active Quarto profile (e.g., "15min") and elides any slide
-- whose `data-duration` attribute doesn't include the matching duration
-- number. A "slide" is a Pandoc section starting with a level-2 header
-- (standard Reveal.js convention in Quarto).
--
-- Slide headings look like:
--   ## Some title {data-duration="5,15,30,60" data-section="prompting" data-level="intro"}
-- Missing attributes are ignored (the slide stays).

local active_duration = nil

for _, profile in ipairs(quarto.doc.profile or {}) do
  local n = profile:match("^(%d+)min$")
  if n then
    active_duration = n
    break
  end
end

local function duration_matches(attr)
  if not attr or attr == "" then
    return true  -- no metadata means keep
  end
  for d in string.gmatch(attr, "(%d+)") do
    if d == active_duration then
      return true
    end
  end
  return false
end

function Pandoc(doc)
  if not active_duration then
    return doc  -- no duration profile active, pass through
  end

  local filtered = {}
  local skipping = false
  local skip_level = nil

  for _, block in ipairs(doc.blocks) do
    if block.t == "Header" and block.level == 2 then
      local attr = block.attributes and block.attributes["data-duration"]
      if not duration_matches(attr) then
        skipping = true
        skip_level = block.level
      else
        skipping = false
        skip_level = nil
        table.insert(filtered, block)
      end
    elseif block.t == "Header" and skipping and block.level <= skip_level then
      -- next section of equal or higher level ends the skip
      local attr = block.attributes and block.attributes["data-duration"]
      if duration_matches(attr) then
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
