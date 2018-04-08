function AddFocusToPreviousRspecBlock()
  ?^\s*\(context\|it\|describe\)
  s/ do$/, focus: true do
  :w
endfunction

function RemoveAllFocus()
  %s/, focus: true do$/ do/g
  :w
endfunction

nnoremap ff :<C-U>call AddFocusToPreviousRspecBlock()<CR>
nnoremap FF :<C-U>call RemoveAllFocus()<CR>
