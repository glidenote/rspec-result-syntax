# rspec-result-syntax

This is vim syntax for RSpec(Serverspec) result.

## Requirement

 * [thinca/vim-quickrun](https://github.com/thinca/vim-quickrun)
 * [Shougo/vimproc.vim](https://github.com/Shougo/vimproc.vim)

## Install

### Vundle

1. Setup the [vundle](https://github.com/gmarik/vundle) package manager
2. Set the bundles for [rspec-result-syntax](https://github.com/glidenote/rspec-result-syntax)

``` vim
Bundle 'glidenote/rspec-result-syntax'
```

3. Open up Vim and start installation with `:BundleInstall`

### Neobundle

1. Setup the [neobundle](https://github.com/Shougo/neobundle.vim) package manager
2. Set the bundles for [rspec-result-syntax](https://github.com/glidenote/rspec-result-syntax)

``` vim
NeoBundle 'glidenote/rspec-result-syntax'
```

3. Open up Vim and start installation with `:NeoBundleInstall`

## Setup

### RSpec setting example

```vim
let g:quickrun_config = {}
let g:quickrun_config['ruby.rspec'] = {
      \'command'                  : 'rspec',
      \'cmdopt'                   : '-cfd',
      \'args'                     : "%{line('.')}",
      \'exec'                     : ['bundle exec %c %o %s:%a'],
      \'outputter/buffer/filetype': 'rspec-result',
      \'filetype'                 : 'rspec-result'
      \}

augroup RSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END 
```

### Serverspec setting example

```vim
let g:quickrun_config = {}
let g:quickrun_config['ruby.serverspec'] = {
      \'command'                  : 'rspec',
      \'cmdopt'                   : '-cfd',
      \'args'                     : "%{line('.')}",
      \'exec'                     : ['bundle exec %c %o %s:%a'],
      \'outputter/buffer/filetype': 'rspec-result',
      \'filetype'                 : 'rspec-result'
      \}

augroup Serverspec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.serverspec
augroup END 
```

## License

Lcense: Same terms as Vim itself (see [license](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license))
