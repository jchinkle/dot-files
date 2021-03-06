" .vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Plugins:
Plugin 'mileszs/ack.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'adelarsq/vim-matchit'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'danchoi/ruby_bashrockets.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'jgdavey/tslime.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-dotenv'
Plugin 'elixir-editors/vim-elixir'
Plugin 'tpope/vim-endwise'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'thoughtbot/vim-rspec'
Plugin 'deris/vim-shot-f'
Plugin 'tpope/vim-surround'
Plugin 'guns/xterm-color-table.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set shell=/bin/bash\ -i

let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack!
cnoreabbrev aG Ack!
cnoreabbrev Ag Ack!
cnoreabbrev AG Ack!
cnoreabbrev Ack Ack!

syntax on                         " show syntax highlighting
filetype plugin indent on
set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set expandtab                     " use spaces, not tab characters
set nocompatible                  " don't need to be compatible with old vim
set nu                            " show line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set mouse=a                       " enable mouse support
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
" set list listchars=tab:»·,trail:· " show extra space characters
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set relativenumber

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1

" put useful info in status bar
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" set dark background and color scheme
"set background=dark
"colorscheme base16-railscasts
set background=dark
" solarized options
let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:airline_solarized_bg='dark'
colorscheme solarized

"tslime:
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" set up some custom colors
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=2
" highlight IncSearch    ctermbg=0   ctermfg=3
" highlight Search       ctermbg=0   ctermfg=9
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=0   ctermfg=3
" highlight SpellBad     ctermbg=0   ctermfg=1
highlight SpecialKey ctermbg=darkred guibg=darkred ctermfg=white


" change status bar based on current mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=0 ctermfg=2
endif

" clojure: turn on rainbow parenthesis
let g:vimclojure#ParenRainbow=1

" set leader key to comma
let mapleader = ","

" ctrlp config
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 1

map <Leader>p <C-^> " Go to previous file

" unmap F1 help
nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

" map . in visual mode
vnoremap . :norm.<cr>

" map markdown preview
map <leader>m :!open -a Marked %<cr><cr>

" map git commands
map <leader>b :Gblame<cr>
map <leader>L :!clear && git log -p %<cr>
map <leader>d :!clear && git diff %<cr>

" open gist after it's been created
let g:gist_open_browser_after_post = 1

" shortcuts for going next/previous in quickfix (for git log spelunking)
nmap [q :cprevious<cr>
nmap ]q :cnext<cr>

" map Silver Searcher
map <leader>a :Ag!<space>

" clear the command line and search highlighting
noremap <C-l> :nohlsearch<CR>

" map %% to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

"map > :cn<cr>
"map < :cp<cr>

" toggle spell check with <F5>
map <F5> :setlocal spell! spelllang=en_us<cr>
imap <F5> <ESC>:setlocal spell! spelllang=en_us<cr>

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

augroup templates
  autocmd BufNewFile *.jsx 0r ~/.vim/templates/skeleton.jsx
augroup END

" jump to last position in file
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

" multi-purpose tab key (auto-complete)
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" rename current file, via Gary Bernhardt
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':Move ' . new_name
  endif
endfunction

map <leader>n :call RenameFile()<cr>

let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec} --color --format Fuubar --require ~/quickfix.rb --format QuickfixFormatter --out quickfix.out\n")'
let g:jslint_command = 'call Send_to_Tmux("rake jslint {jslint_files}\n")'


function! RunAllSpecs()
  write
  execute 'call Send_to_Tmux("bundle exec rspec spec --color --format Fuubar --require ~/quickfix.rb --format QuickfixFormatter --out quickfix.out\n")'
endfunction

function! RunAllAllSpecs()
  write
  execute 'call Send_to_Tmux("bundle exec rspec spec --exclude-pattern \"\"\n")'
endfunction

function! RunAllJSSpecs()
  write
  execute 'call Send_to_Tmux("yarn jest\n")'
endfunction

function! RunJSSpecs()
  write
  let l:spec = @%
  let l:jestcommand = substitute('call Send_to_Tmux("yarn jest {spec}\n")', "{spec}", l:spec, "g")
  execute(l:jestcommand)
endfunction

function! RunJSLint()
  write
  let a:jslint_files = ""
  execute substitute(g:jslint_command, "{jslint_files}", a:jslint_files, "g")
endfunction

function! RunJSLintFile()
  write
  let a:jslint_files = "paths=" . @%
  execute substitute(g:jslint_command, "{jslint_files}", a:jslint_files, "g")
endfunction

function! InJSFile()
  return match(expand("%"), ".js$") != -1
endfunction

function! GitS()
  execute 'call Send_to_Tmux("git s\n")'
endfunction

map <Leader>T :call RunCurrentSpecFile()<CR>
map <Leader>t :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>r :call RunAllSpecs()<CR>
map <Leader>R :call RunAllAllSpecs()<CR>
" map <Leader>J :call RunJSLint()<CR>
" map <Leader>j :call RunJSLintFile()<CR>
map <Leader>j :call RunJSSpecs()<CR>
map <Leader>J :call RunAllJSSpecs()<CR>
map <leader>q :cg quickfix.out \| cwindow<CR>
map <Leader>s :call GitS()<CR>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set relativenumber!
  else
    set number
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

map <Leader>= :Tab / =<CR>
map <Leader>ho :Tab /=><CR>
map <Leader>: :Tab /:<CR>
map <Leader>hn :Tabularize/\w:\zs/l0l1<CR>`
map <Leader>w :%s/\s\+$//e<CR>:nohl<CR>

map <Leader>[ :Bashrockets<CR>
map <Leader>] :Hashrockets<CR>
" map <Tab> :A<CR>
map <Tab> <C-w><C-w>

map <Leader>c [m0<c-v>%I#

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

autocmd FileType slim setlocal list
autocmd FileType slimbars setlocal list
autocmd BufNewFile,BufRead *.slimbars set filetype=slim

map <Leader>z :! ctags -R<CR>
map <Leader>i :r ~/.initialize.rb<CR>

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>
