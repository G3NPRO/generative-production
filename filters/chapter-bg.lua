-- Applies a shared dark background to every section-title slide in the
-- revealjs deck. Keeps the site-deck source clean: markdown needs no
-- inline {background-color="..."} attribute.
--
-- Applies to:
--   - Level-1 headings (`# Section`) — top-level columns.
--   - Level-2 headings with class `.divider` (`## X {.divider}`) —
--     subsection interstitials.
--
-- A specific heading can still override by writing its own
-- background-color attribute inline; this filter only fills in the default.

local CHAPTER_BG = '#1a1532'

local function has_divider_class(classes)
  for _, c in ipairs(classes) do
    if c == 'divider' then return true end
  end
  return false
end

function Header(el)
  if not quarto.doc.is_format('revealjs') then return el end
  if el.attributes['background-color'] then return el end

  local is_section = el.level == 1
  local is_divider = el.level == 2 and has_divider_class(el.classes)

  if is_section or is_divider then
    el.attributes['background-color'] = CHAPTER_BG
  end
  return el
end
