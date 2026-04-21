-- Applies a shared dark background to every section-title slide in the
-- revealjs deck. Keeps the site-deck source clean: H1 markdown needs no
-- inline {background-color="..."} attribute.
--
-- A specific H1 can still override by writing its own background-color
-- attribute inline; this filter only fills in the default.

local CHAPTER_BG = '#1a1532'

function Header(el)
  if quarto.doc.is_format('revealjs')
     and el.level == 1
     and not el.attributes['background-color'] then
    el.attributes['background-color'] = CHAPTER_BG
  end
  return el
end
