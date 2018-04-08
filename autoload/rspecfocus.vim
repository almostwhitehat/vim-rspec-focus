function! rspecfocus#AddFocusToPreviousRspecBlock()
  ?^\s*\(context\|it\|describe\)
  s/ do$/, focus: true do
  :w
endfunction

function! rspecfocus#RemoveAllFocus()
  %s/, focus: true do$/ do/g
  :w
endfunction
