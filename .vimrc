" Got Some Help from vim bootstrap
" CORE ------------------------------------------------------------------- {{{

let g:alelinters = {}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin(expand('~/.vim/plugged'))

  Plug 'AndrewRadev/tagalong.vim'
  Plug 'PhilRunninger/nerdtree-buffer-ops'
  Plug 'PhilRunninger/nerdtree-visual-selection'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  Plug 'frazrepo/vim-rainbow'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/emmet-vim'
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'voldikss/vim-floaterm'
  Plug 'Dev-Addict/vim-bclose'
  Plug 'Raimondi/delimitMate'
  Plug 'tpope/vim-rhubarb'
  Plug 'Shougo/vimproc.vim', {'do': 'make'}
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'
  Plug 'SirVer/ultisnips'
  Plug 'ludwig/split-manpage.vim'
  Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
  Plug 'elmcast/elm-vim'
  Plug 'fatih/vim-go', {'do': 'GoInstallBinaries'}
  Plug 'hail2u/vim-css3-syntax'
  Plug 'gko/vim-coloresque'
  Plug 'tpope/vim-haml'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
  Plug 'davidhalter/jedi-vim'
  Plug 'stephpy/vim-php-cs-fixer'
  Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
  Plug 'racer-rust/vim-racer'
  Plug 'rust-lang/rust.vim'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'leafOfTree/vim-svelte-plugin'
  Plug 'leafgarland/typescript-vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'posva/vim-vue'
  Plug 'leafOfTree/vim-vue-plugin'
  Plug 'tpope/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}

call plug#end()

" }}}

" Required:
filetype plugin indent on

" }}}

" BASIC ------------------------------------------------------------------ {{{

set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set softtabstop=0
set hlsearch
set incsearch
set ignorecase
set smartcase
set lazyredraw
set display+=lastline
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set linebreak
set scrolloff=3
set sidescrolloff=5
syntax on
set wrap
set laststatus=2
set ruler
set wildmenu
set tabpagemax=100
set nocursorline
set norelativenumber
set noerrorbells
set novisualbell
set mouse=a
set title
set titleold=Terminal
set titlestring=(Neo)Vim(%F)
set background=dark
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set autoread
set backspace=indent,eol,start
set backupdir=~/.cache/vim
set confirm
set nu
set fileformats=unix,dos,mac
set dir=~/.cache/vim
set formatoptions+=j
set hidden
set history=1000
set spell
set cursorline
set cursorcolumn
set nowrap
set showcmd
set showmode
set showmatch
set wildmenu
set wildmode=list:longest
set ruler
set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set laststatus=2
set modeline
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugative#statusline")
  set statusline+=%{fugative#statusline()}
endif

" }}}

" CONFIGS ---------------------------------------------------------------- {{{

  " Vim
  if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
  endif

  " Vim Session
  let g:session_directory = '~/.vim/session'
  let g:session_autoload = 'no'
  let g:session_autosave = 'no'
  let g:session_command_aliases = 1

  " NERDTree
  autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
  let g:NERDTreeIgnore = ['\.git$']
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
  let g:NERDTreeAutoDeleteBuffer = 1
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeDirArrows = 1
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeChDirMode = 2
  let g:NERDTreeShowBookMarks = 1
  let g:nerdtree_tabs_focus_on_files = 1

  " OneHalfLight Color Scheme
  colorscheme onehalfdark
  let g:airline_theme = 'onehalfdark'

  " Vim Airline
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'jsformatter'
  let g:airline#extensions#tabline#buffer_idx_mode = 1

  " FZF
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

  " Floaterm
  let g:floaterm_autoclose = 2

  " Ale
  let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
  let g:ale_sign_error = '✘'
  let g:ale_sign_warning = '⚠'
  let g:ale_lint_on_text_changed = 'never'

  " Vim Rainbow
  let g:rainbow_active = 1

  " Tagalong
  let g:tagalong_verbose = 1

  " Floaterm
  let g:floaterm_keymap_kill   = '<F6>'
  let g:floaterm_keymap_new    = '<F7>'

  " Vim Sync
  augroup vimrc_sync_fromstart
    autocmd!
    autocmd BufEnter * :syntax sync maxlines=200
  augroup END

  " Vim Remember
  augroup vimrc_remember_cursor_position
    autocmd!
    autocmd BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g `\"" | endif
  augroup END

  " Vim Make
  augroup vimrc_make
    autocmd!
    autocmd Filetype make setlocal noexpandtab
    autocmd BufNewFile,BufRead CMakeList.txt setlocal filetype=cmake
  augroup END

  " Ulti Snipets
  let g:UltiSnipsExpandTrigger = '<tab>'
  let g:UltiSnipsJumpForwardTrigger = '<tab>'
  let g:UltiSnipsJumpBackwardTrigger = '<C-b>'
  let g:UltiSnipsEditSplit = 'vertical'

  " Elm Vim
  let g:elm_setup_keybindings = 0
  let g:elm_format_autosave = 1

  " Vim Go
  function! s:build_go_files()
    let l:find = expand('%')
    if l:file =~# '^\f\+_test\.go$'
      call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
      call go#cmd#Build(0)
    endif
  endfunction

  let g:go_list_type = 'quickfix'
  let g:go_fmt_command = 'goimports'
  let g:go_fmt_fail_silently = 1
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_space_tab_error = 0
  let g:go_highlight_array_whitespace_error = 0
  let g:go_highlight_trailing_whitespace_error = 0
  let g:go_highlight_extra_types = 1

  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2

  augroup completion_preview_close
    autocmd!
    if v:version > 703 || v:version == 703 && has('patch598')
      autocmd CompleteDone * if !&previewwindow && &completeopt =~ 'preview' | silent! pclose | endif
    endif
  augroup END


  augroup go
    au!
    au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
    au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
    au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
    au FileType go nmap <Leader>dd <Plug>(go-def-vertical)
    au FileType go nmap <Leader>dv <Plug>(go-doc-vertical)
    au FileType go nmap <Leader>db <Plug>(go-doc-browser)
    au FileType go nmap <leader>r  <Plug>(go-run)
    au FileType go nmap <leader>t  <Plug>(go-test)
    au FileType go nmap <Leader>gt <Plug>(go-coverage-toggle)
    au FileType go nmap <Leader>i <Plug>(go-info)
    au FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
    au FileType go nmap <C-g> :GoDecls<cr>
    au FileType go nmap <leader>dr :GoDeclsDir<cr>
    au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
    au FileType go imap <leader>dr <esc>:<C-u>GoDeclsDir<cr>
    au FileType go nmap <leader>rb :<C-u>call <SID>build_go_files()<CR>
  augroup END

  :call extend(g:alelinters, {
              \"go": ['golint', 'go vet'], })

  " JavaScript
  let g:javascript_enable_domhtmlcss = 1

  " Vim Python
  augroup vimrc-python
    autocmd!
    autocmd FileType python cinwords=if,elif,else,for,while,try,except,finally,def,class,with
  augroup END

  " Jedi Vim
  let g:jedi#popup_on_dot = 0
  let g:jedi#goto_assignments_command = "<leader>g"
  let g:jedi#goto_definitions_command = "<leader>d"
  let g:jedi#documentation_command = "K"
  let g:jedi#usages_command = "<leader>n"
  let g:jedi#rename_command = "<leader>r"
  let g:jedi#show_call_signatures = "0"
  let g:jedi#completions_command = "<C-Space>"
  let g:jedi#smart_auto_mappings = 0

  " Python
  :call extend(g:alelinters, {
              \"python": ['flake8'], })
  let g:python_hightlight_all = 1

  " Yats
  let g:yats_host_keyword = 1

  " Svelte
  let g:vim_svelte_plugin_load_full_syntax = 1

  " Vim Vue
  let g:vue_disable_pre_processors = 1
  let g:vim_vue_plugin_load_full_syntax = 1

  " Markdown Preview
  let g:mkdp_auto_start = 1
  let g:mkdp_auto_close = 1
  let g:mkdp_refresh_slow = 0
  let g:mkdp_open_to_the_world = 0
  let g:mkdp_echo_preview_url = 1
  let g:mkdp_port = '5000'
  let g:mkdp_page_title = '「${name}」 - Markdown Preview'
  let g:mkdp_filetypes = ['markdown']

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

  " Vim
  nmap <C-q>       :qa<CR>
  nmap <C-x>       :xa<CR>
  nmap <C-S-q>     :qa!<CR>
  nmap <C-s>       :w<CR>
  nmap <leader>h   :<C-u>split<CR>
  nmap <leader>v   :<C-u>vsplit<CR>
  nmap <Tab>       gt
  nmap <S-Tab>     gT
  nmap YY          "+y<CR>
  nmap <leader>p   "+gP<CR>
  nmap XX          "+x<CR>
  nmap <C-j>       <C-w>j
  nmap <C-k>       <C-w>k
  nmap <C-h>       <C-w>h
  nmap <C-l>       <C-w>l

  " Git
  nmap <leader>ga  :Gwrite<CR>
  nmap <leader>gc  :Git commit --verbose<CR>
  nmap <leader>gsh :Gpush<CR>
  nmap <leader>gll :Gpull<CR>
  nmap <leader>gs  :Gstatus<CR>
  nmap <leader>gb  :Gblame<CR>
  nmap <leader>gd  :Gvdiff<CR>
  nmap <leader>gr  :Gremove<CR>

  " NERDTree
  nmap <F3>        :NERDTreeToggle<cr>
  nmap <F2>        :NERDTreeFind<cr>

  " NERDCommenter
  nmap <C-c>       :call nerdcommenter#Comment(0,"toggle")<CR>
  vmap <C-c>       :call nerdcommenter#Comment(0,"toggle")<CR>

  " Airline
  nmap <C-n>       :<Plug>AirlineSelectPrevTab
  nmap <C-p>       :<Plug>AirlineSelectNextTab
  nmap <C-d>       :Bclose<CR>
  nmap <leader>1   <Plug>AirlineSelectTab1
  nmap <leader>2   <Plug>AirlineSelectTab2
  nmap <leader>3   <Plug>AirlineSelectTab3
  nmap <leader>4   <Plug>AirlineSelectTab4
  nmap <leader>5   <Plug>AirlineSelectTab5
  nmap <leader>6   <Plug>AirlineSelectTab6
  nmap <leader>7   <Plug>AirlineSelectTab7
  nmap <leader>8   <Plug>AirlineSelectTab8
  nmap <leader>9   <Plug>AirlineSelectTab9
  nmap <leader>1   <Plug>AirlineSelectTab0

  " Vim Session
  nmap <leader>so  :OpenSession<CR>
  nmap <leader>ss  :SaveSession<CR>
  nmap <leader>sd  :DeleteSession<CR>
  nmap <leader>sc  :CloseSession<CR>

  " PHP Actor
  nmap <leader>u :call phpactor#UseAdd()<CR>
  nmap <leader>mm :call phpactor#ContextMenu()<CR>
  nmap <leader>nn :call phpactor#Navigate()<CR>
  nmap <leader>oo :call phpactor#GotoDefinition()<CR>
  nmap <leader>oh :call phpactor#GotoDefinitionHsplit()<CR>
  nmap <leader>ov :call phpactor#GotoDefinitionVsplit()<CR>
  nmap <leader>ot :call phpactor#GotoDefinitionTab()<CR>
  nmap <leader>K :call phpactor#Hover()<CR>
  nmap <leader>tt :call phpactor#Transform()<CR>
  nmap <leader>cc :call phpactor#ClassNew()<CR>
  nmap <silent><leader>ee :call phpactor#ExtractExpression(v:false)<CR>
  vmap <silent><leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
  vmap <silent><leader>em :<C-U>call phpactor#ExtractMethod()<CR>

  " Vim Racer
  au FileType rust nmap gd <Plug>(rust-def)
  au FileType rust nmap gs <Plug>(rust-def-split)
  au FileType rust nmap gx <Plug>(rust-def-vertical)
  au FileType rust nmap <leader>gd <Plug>(rust-doc)

  " Markdown Preview
  au FileType markdown nmap <leader>mp <Plug>MarkdownPreviewToggle

" }}}

