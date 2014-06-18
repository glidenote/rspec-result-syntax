" rspec-result-syntax
" ref https://github.com/yuroyoro/dotfiles/blob/master/.vim/syntax/rspec-result.vim

if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'rspec-result'
endif

syntax case match

syntax match RSpecGreen /^[\.F]*\.[\.F]*$/
syntax match RSpecGreen /^.*, 0 failures$/
syntax match RSpecRed /F/
syntax match RSpecRed /^.*, [1-9]* failures.*$/
syntax match RSpecRed /^.*, 1 failure.*$/
syntax match RSpecRed /^ *(.*$/
syntax match RSpecRed /^ *expected.*$/
syntax match RSpecRed /^ *got.*$/
syntax match RSpecRed /^ *Failure\/Error:.*$/
syntax match RSpecRed /^.*(FAILED - [0-9]*)$/
syntax match RSpecRed /^rspec .*:.*$/
syntax match RSpecComment / # .*$/
syntax match RSpecNormal /^Failures:/
syntax match RSpecNormal /^Finished/
syntax match RSpecNormal /^Failed/

highlight RSpecGreen   ctermfg=White ctermbg=Green guifg=White guibg=Green
highlight RSpecRed     ctermfg=Red   guifg=Red
highlight RSpecComment ctermfg=Cyan  guifg=Cyan
highlight RSpecNormal  ctermfg=White guifg=Black guibg=White

let b:current_syntax = 'rspec-result'

if main_syntax == 'rspec-result'
  unlet main_syntax
endif
