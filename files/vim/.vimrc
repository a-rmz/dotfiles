" ======================================
"              Plugin setup
" ======================================
" Load the plugins
call plug#begin('~/.vim/plugged')

" Themes
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'pwntester/cobalt2.vim'
Plug 'trevordmiller/nova-vim'
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'

" Startify
" Startup screen
Plug 'mhinz/vim-startify'

" OrgMode
" Text outlining and task management for Vim based on Emacs' Org-Mode
Plug 'jceb/vim-orgmode'
" SpeedDating
" Dependency for OrgMode
Plug 'tpope/vim-speeddating'
" Univeral Text Linking 
" Execute URLs, footnotes, open emails, organize ideas
Plug 'vim-scripts/utl.vim'
" vim-easy-align
" 🌻 A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" VimWiki
" Personal Wiki for Vim
Plug 'vimwiki/vimwiki'

" Nerds!
" NerdTREE
" On-demand loading
Plug 'scrooloose/nerdtree'

" NerdCommenter
" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" Lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim-devicons
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more  
" https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'

" Tagbar
Plug 'majutsushi/tagbar'

" Surround.vim
" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Goyo
" Distraction-free writing in Vim.
Plug 'junegunn/goyo.vim'
" Limelight
" All the world's indeed a stage and we are merely players
Plug 'junegunn/limelight.vim'
" vim-pencil
" Rethinking Vim as a tool for writers
Plug 'reedes/vim-pencil'

" Gitgutter
" A Vim plugin which shows a git diff in the gutter (sign column) and
" stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/vim-fz'

" Ack.vim
Plug 'mileszs/ack.vim'

" vim-polyglot
" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'

" A Vim plugin for TypeScript
Plug 'Quramy/tsuquyomi'

" vim-graphql
" A Vim plugin that provides GraphQL file detection,
" syntax highlighting, and indentation.
Plug 'jparise/vim-graphql'


" vim-go
" Go development plugin for Vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Markdown for Vim
" A complete environment to create Markdown files with a syntax highlight that doesn't suck!
Plug 'gabrielelana/vim-markdown'

" Dockerfile.vim
" Vim syntax file & snippets for Docker's Dockerfile 
Plug 'ekalinin/Dockerfile.vim'

" jedi-vim
" Using the jedi autocompletion library for VIM.
Plug 'davidhalter/jedi-vim'

" vim-vue
" Syntax Highlight for Vue.js components 
Plug 'posva/vim-vue'

" Asynchronous Lint Engine
Plug 'w0rp/ale'

" vim-closetag
" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

" EditorConfig
" EditorConfig plugin for Vim http://editorconfig.org
Plug 'editorconfig/editorconfig-vim'

" Fugitive
" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Supertab
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" CamelCaseMotion
" A vim script to provide CamelCase motion through words (fork of inkarkat's camelcasemotion script)
" https://github.com/bkad/CamelCaseMotion
Plug 'bkad/CamelCaseMotion'


" Initialize plugin system
call plug#end()
 

" Disable Vim's default file explorer 
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" ======================================
"               ALE
" ======================================
let g:airline#extensions#ale#enabled = 1
let b:ale_linters = {
\ 'python': ['flake8']
\}

let g:ale_fixers = {
\ 'css': ['prettier'],
\ 'javascript': ['eslint'],
\ 'python': ['black'],
\ 'typescript': ['tslint'],
\ 'scss': ['stylelint'],
\ 'xml': ['xmllint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

" ======================================
"            JavaScrighlight LineNr
" ======================================
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" ======================================
"                Settings
" ======================================
" Tabs and spaces
:set tabstop=2
:set shiftwidth=2
:set expandtab
" Sexy comments aligned to the beginning of the line
let g:NERDDefaultAlign = 'start'
let g:ackprg = 'ag --nogroup --column'

" Map leader to space
let mapleader=' '
set mouse=a                           " Set mouse support

" background processes
set clipboard=unnamed                 " use native clipboard
set lazyredraw                        " no unneeded redraws
set nobackup                          " don't save backups
set noerrorbells                      " no error bells please
set noswapfile                        " no swapfiles

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set cursorline
set number
set wildmode=longest:list,full        " command line completion
set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too
set showmatch                         " highlight matching parenthesis

set backspace=indent,eol,start        " make backspace work like most other programs

set foldmethod=syntax
set foldlevel=99


" ======================================
"                vim-vue
" ======================================
let g:vue_pre_processors = ['scss']

" ======================================
"            Visual Settings
" ======================================
let g:onedark_terminal_italics = 1
let g:one_allow_italics = 1
let g:enable_bold_font = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

set background=dark
" colorscheme hybrid_material
" colorscheme hybrid_reverse
" colorscheme PaperColor
" colorscheme one
" colorscheme onedark
" colorscheme cobalt2
" colorscheme OceanicNext
" colorscheme base16-gruvbox-dark-soft
colorscheme nord

if (g:colors_name =~ "hybrid")
  let g:airline_theme = "hybrid"
elseif (g:colors_name =~ "OceanicNext")
  let g:airline_theme="oceanicnext"
elseif (g:colors_name =~ "one")
  let g:airline_theme="one"
elseif (g:colors_name =~ "base16")
  highlight CursorLine ctermbg=18
  highlight LineNr ctermfg=19 ctermbg=black
  let g:airline_theme="base16"
endif

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Open NERDTree everytime Vim opens
" autocmd VimEnter * NERDTree

" How can I close vim if the only window left open is a NERDTree?
augroup NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

let NERDTreeMinimalUI = 1
let NERDTreeShowBookmarks = 1

augroup WriterMode
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
augroup END

" ======================================
"            Useful mappings
" ======================================
" NERDTree Mappings
map nt :NERDTreeToggle<cr>
map nf :NERDTreeFind<cr>

" NerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Tagbar
nmap tt :TagbarToggle<CR>

" Limelight
nmap <Leader>ll :Limelight!!<CR>

" Navigate through windows
" noremap <C-J> <C-W>j<C-W>_
" noremap <C-K> <C-W>k<C-W>_
" noremap <C-H> <C-W>h<C-W>_
" noremap <C-L> <C-W>l<C-W>_

" fzf
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>g :GFiles<CR>
nmap <Leader>t :Tags<CR>

" Line numbers
:set number
:nmap nn :set invnumber<CR>


" CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" Shortcuts
nmap <C-N> :new<CR>

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

nmap cp ciw<C-r>0<Esc>

nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_name = '.session.vim'

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }


let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }


function! FmtJSON()
  :%!python -m json.tool
endfunction

" ========================================
"      Devicons + NERDTree config
" ========================================

" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

function! NERDTreeHighlightIcon(extension, icon, fg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .'_icon ctermbg=none ctermfg='. a:fg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .'_icon #'. a:icon .'# containedin=NERDTreeFile,'.a:extension
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('xml', 'red', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('spec', 'Gray', 'none', '#686868', '#151515')

augroup NERDTreeColor
  " Reference colors:
  " https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim

  " TypeScript
  call NERDTreeHighlightIcon('ts', '', 32)
  " Python
  call NERDTreeHighlightIcon('py', '', 67)
  " Sass
  call NERDTreeHighlightIcon('scss', '', 175)
  " Dockerfile
  call NERDTreeHighlightIcon('Dockerfile', '', 'blue')
  " JavaScript
  call NERDTreeHighlightIcon('js', '', 'yellow')
  " HTML
  call NERDTreeHighlightIcon('html', '', 'yellow')
  " YAML
  call NERDTreeHighlightIcon('yaml', '', 'gray')
  " MD
  call NERDTreeHighlightIcon('md', '', 'magenta')
  " SQL
  call NERDTreeHighlightIcon('sql', '', 163)
  " Ruby
  call NERDTreeHighlightIcon('rb', '', 88)
augroup END

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
