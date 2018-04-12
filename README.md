# rspec-focus.vim
Most rspec test suites follow the [convention](https://relishapp.com/rspec/rspec-core/docs/filtering/inclusion-filters) of an inclusion filter for `:focus` tagged specs. I like to use [guard-rspec](https://github.com/guard/guard-rspec) to watch filesystem changes and run spec files. This plugin provides functions for easily adding and removing a `:focus` tag from the nearest spec, and writing the file, to trigger guard.

## Installation
Add the plugin with you favorite plugin manager. Or do it manually. It's up to you, I won't judge.

Add two mappings - one for adding the `:focus` tag, and one for removing it. Below are mine - I use `ff` for adding focus, and `FF` for removing it.
```
nnoremap ff :call rspecfocus#AddFocusToPreviousRspecBlock()<CR>
nnoremap FF :call rspecfocus#RemoveAllFocus()<CR>
```

## Usage
Use your mapping anywhere inside a spec file to add a `:focus` to the nearest spec block. If you're inside an `it` expectation, that will be focused. If you're inside a `context` or `describe` block, that will be focused.

It always looks backwards, to ensure the spec under your cursor is included in the focus.
