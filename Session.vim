let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplete_start_auto_complete) =neocomplete#mappings#auto_complete()=neocomplete#mappings#popup_post()
inoremap <silent> <Plug>(neocomplete_start_omni_complete) 
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_quick_match) unite#sources#neocomplete#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_complete) unite#sources#neocomplete#start_complete()
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#neosnippet#start_complete()
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
inoremap <expr> <BS> neocomplete#smart_close_popup()."\"
nnoremap <silent> <expr>  quickrun#is_running() ? quickrun#sweep_sessions() : "\"
nnoremap  :CtrlPLauncher
snoremap  a<BS>
smap <expr> 	 neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": "\	"
xmap  <Plug>(neosnippet_expand_target)
smap  <Plug>(neosnippet_expand_or_jump)
snoremap  a<BS>
nmap  <Plug>(yankround-next)
map  <Plug>(ctrlp)
vmap  <Plug>TwitvimVisual
nnoremap <silent> / :ToggleLocationListMode
nnoremap <silent> 0 :ToggleLocationListMode
nnoremap <silent> . :MoveToQFixWin
nnoremap <silent> , :ToggleQFixWin
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
nmap  ;nohlsearch
nmap ,r <Plug>(quickrun)
xmap ,r <Plug>(quickrun)
omap ,r <Plug>(quickrun)
nmap <silent> ,i :IndentLinesToggle
nnoremap ,? ?
nnoremap ,/ /
nnoremap <expr> / ":".v:count1."M/"
nnoremap ; :
xnoremap ; :
onoremap ; :
nnoremap <expr> ? ":".v:count1."M?"
nmap P <Plug>(yankround-P)
nmap Q gq
xmap Q gq
omap Q gq
xmap S <Plug>VSurround
nmap <silent> [Tag]p :tabprevious
xmap <silent> [Tag]p :tabprevious
omap <silent> [Tag]p :tabprevious
nmap <silent> [Tag]n :tabnext
xmap <silent> [Tag]n :tabnext
omap <silent> [Tag]n :tabnext
nmap <silent> [Tag]x :tabclose
xmap <silent> [Tag]x :tabclose
omap <silent> [Tag]x :tabclose
nmap <silent> [Tag]c :tablast | tabnew
xmap <silent> [Tag]c :tablast | tabnew
omap <silent> [Tag]c :tablast | tabnew
nnoremap <silent> [Tag]9 :tabnext9
nnoremap <silent> [Tag]8 :tabnext8
nnoremap <silent> [Tag]7 :tabnext7
nnoremap <silent> [Tag]6 :tabnext6
nnoremap <silent> [Tag]5 :tabnext5
nnoremap <silent> [Tag]4 :tabnext4
nnoremap <silent> [Tag]3 :tabnext3
nnoremap <silent> [Tag]2 :tabnext2
nnoremap <silent> [Tag]1 :tabnext1
nnoremap [Tag] <Nop>
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> g,hR :Howm2html %
nnoremap <silent> g,hJ :Jump2html!
nnoremap <silent> g,hr :Howm2html
nnoremap <silent> g,hI :Howm2html! %
nnoremap <silent> g,hj :Jump2html!
nnoremap <silent> g,hi :Howm2html!
nnoremap <silent> g,rt :call qfixmemo#ListReminder("todo")
nnoremap <silent> g,, :call qfixmemo#OpenMenu("cache")
nnoremap <silent> g,y :call qfixmemo#ListReminderCache("schedule")
nnoremap <silent> g,r, :call qfixmemo#OpenMenu()
nnoremap <silent> g,rd :call qfixmemo#GenerateRepeatDate()
nnoremap <silent> g,t :call qfixmemo#ListReminderCache("todo")
nnoremap <silent> g,ry :call qfixmemo#ListReminder("schedule")
nnoremap <silent> g,	 :call qfixmemo#ListReminderCache("schedule")
nnoremap <silent> g,rA :call qfixmemo#Glob(g:qfixmemo_dir, "**/*", "open")
nnoremap <silent> g,u :call qfixmemo#Quickmemo()
nnoremap <silent> g,s :call qfixmemo#FGrep()
nnoremap <silent> g,q :call qfixmemo#Calendar()
nnoremap <silent> g,o :call QFixMemoOutline()
nnoremap <silent> g,m :call qfixmemo#ListMru()
nnoremap <silent> g,l :call qfixmemo#ListRecent()
nnoremap <silent> g,j :call qfixmemo#PairFile("%")
nnoremap <silent> g,i :call qfixmemo#SubMenu()
nnoremap <silent> g,g :call qfixmemo#Grep()
nnoremap <silent> g,rk :call qfixmemo#RebuildKeyword()
nnoremap <silent> g,d :call qfixmemo#InsertDate("Date")
nnoremap <silent> g,c :call qfixmemo#EditNew()
nnoremap <silent> g,a :call qfixmemo#ListCmd()
nnoremap <silent> g,ra :call qfixmemo#ListCmd("nocache")
nnoremap <silent> g,  :call qfixmemo#EditDiary(g:qfixmemo_diary)
nnoremap <silent> g,rr :call qfixmemo#RandomWalk(g:qfixmemo_random_file)
nnoremap <silent> g,rR :call qfixmemo#RebuildRandomCache(g:qfixmemo_random_file)
nnoremap <silent> g,U :call qfixmemo#Quickmemo(0)
nnoremap <silent> g,T :call qfixmemo#InsertDate("Time")
nnoremap <silent> g,Q :call qfixmemo#Calendar("LR")
nnoremap <silent> g,M :call qfixmemo#MoveToAltQFixWin()
nnoremap <silent> g,L :call qfixmemo#ListRecentTimeStamp()
nnoremap <silent> g,I :call qfixmemo#SubMenu(0)
nnoremap <silent> g,rN :call qfixmemo#ListRenameFile(g:qfixmemo_filename)
nnoremap <silent> g,C :call qfixmemo#EditInput()
nnoremap <silent> g,A :call qfixmemo#ListFile(g:qfixmemo_diary)
nnoremap <silent> g, <Nop>
nnoremap <silent> g,k :MyGrepReadResult|:call QFixCopen()
nnoremap <silent> g,rm :ToggleMultiEncodingGrep
nnoremap <silent> g,rM :ToggleGrepRecursiveMode
nnoremap <silent> g,rD :ToggleGrepCurrentDirMode
xmap gS <Plug>VgSurround
nmap gP <Plug>(yankround-gP)
nmap gp <Plug>(yankround-gp)
nmap p <Plug>(yankround-p)
nmap t [Tag]
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Del> a<BS>
snoremap <BS> a<BS>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <Plug>(openbrowser-smart-search) :call openbrowser#_keymapping_smart_search('v')
nnoremap <Plug>(openbrowser-smart-search) :call openbrowser#_keymapping_smart_search('n')
vnoremap <Plug>(openbrowser-search) :call openbrowser#_keymapping_search('v')
nnoremap <Plug>(openbrowser-search) :call openbrowser#_keymapping_search('n')
vnoremap <Plug>(openbrowser-open) :call openbrowser#_keymapping_open('v')
nnoremap <Plug>(openbrowser-open) :call openbrowser#_keymapping_open('n')
nnoremap <silent> <Plug>(vimshell_create) :VimShellCreate
nnoremap <silent> <Plug>(vimshell_switch) :VimShell
nnoremap <silent> <Plug>(vimfiler_simple) :VimFilerSimple
nnoremap <silent> <Plug>(vimfiler_create) :VimFilerCreate
nnoremap <silent> <Plug>(vimfiler_switch) :VimFiler
nnoremap <silent> <Plug>(vimfiler_split_create) :VimFilerSplit
nnoremap <silent> <Plug>(yankround-next) :call yankround#next()
nnoremap <silent> <Plug>(yankround-prev) :call yankround#prev()
xmap <Plug>(yankround-gP) <Plug>(yankround-gp)
xnoremap <silent> <Plug>(yankround-gp) :exe yankround#init('gp', 'v')|call yankround#activate()
xmap <Plug>(yankround-P) <Plug>(yankround-p)
xnoremap <silent> <Plug>(yankround-p) :exe yankround#init('p', 'v')|call yankround#activate()
nnoremap <silent> <Plug>(yankround-gP) :exe yankround#init('gP')|call yankround#activate()
nnoremap <silent> <Plug>(yankround-gp) :exe yankround#init('gp')|call yankround#activate()
nnoremap <silent> <Plug>(yankround-P) :exe yankround#init('P')|call yankround#activate()
nnoremap <silent> <Plug>(yankround-p) :exe yankround#init('p')|call yankround#activate()
nnoremap <silent> <Plug>(ctrlp) :CtrlP
xnoremap <silent> <Plug>(neosnippet_register_oneshot_snippet) :call neosnippet#mappings#_register_oneshot_snippet()
xnoremap <silent> <Plug>(neosnippet_expand_target) :call neosnippet#mappings#_expand_target()
xnoremap <silent> <Plug>(neosnippet_get_selected_text) :call neosnippet#helpers#get_selected_text(visualmode(), 1)
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
xmap <BS> "-d
inoremap <expr>  neocomplete#cancel_popup()
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplete#undo_completion()
inoremap <expr>  neocomplete#smart_close_popup()."\"
imap <expr> 	 neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": pumvisible() ? "\" : "\	"
imap  <Plug>(neosnippet_expand_or_jump)
inoremap <expr>  neocomplete#complete_common_string()
imap  <Plug>Isurround
inoremap  u
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
inoremap <expr>  neocomplete#close_popup()
xmap √¥ <Plug>TwitvimVisual
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed
set cmdheight=2
set completeopt=preview,menuone
set expandtab
set fileencodings=guess,ucs-bom,latin1,iso-2022-jp-3,utf-8,euc-jisx0213,euc-jp
set formatexpr=autofmt#japanese#formatexpr()
set helplang=ja
set hidden
set hlsearch
set ignorecase
set incsearch
set langmenu=ja_ja.utf-8.macvim
set langnoremap
set laststatus=2
set migemo
set migemodict=/Applications/MacVim.app/Contents/Resources/vim/runtime/dict/migemo-dict
set mouse=a
set printencoding=utf-8
set printmbcharset=UniJIS
set printmbfont=r:HiraMinProN-W3,b:HiraMinProN-W6
set ruler
set runtimepath=~/.vim,~/.vim/bundle/unite.vim/,~/.vim/bundle/unite-outline/,~/.vim/bundle/unite-font/,~/.vim/bundle/unite-tag/,~/.vim/bundle/unite-colorscheme/,~/.vim/bundle/vim-smartchr/,~/.vim/bundle/vim-coffee-script/,~/.vim/bundle/eregex.vim/,~/.vim/bundle/neocomplete.vim/,~/.vim/bundle/neosnippet.vim/,~/.vim/bundle/neosnippet-snippets/,~/.vim/bundle/ctrlp.vim/,~/.vim/bundle/ctrlp-launcher/,~/.vim/bundle/yankround.vim/,~/.vim/bundle/vimfiler/,~/.vim/bundle/vimshell/,~/.vim/bundle/shadow.vim/,~/.vim/bundle/lightline.vim/,~/.vim/bundle/nerdtree/,~/.vim/bundle/sudo.vim/,~/.vim/bundle/open-browser.vim/,~/.vim/bundle/vimproc.vim/,~/.vim/bundle/vim-obsession/,~/.vim/bundle/vim-surround/,~/.vim/bundle/vim-qfreplace/,~/.vim/bundle/indentLine/,~/.vim/bundle/vim-json/,~/.vim/bundle/vim-easy-align/,~/.vim/bundle/qfixhowm/,~/.vim/bundle/vim-quickrun/,~/.vim/bundle/emmet-vim/,~/.vim/bundle/vim-endwise/,~/.vim/bundle/vim-fugitive/,~/.vim/bundle/tabular/,~/.vim/bundle/vim-markdown-quote-syntax/,~/.vim/bundle/vim-markdown/,~/.vim/bund
set scrolloff=5
set shiftwidth=2
set showmatch
set smartcase
set noswapfile
set tabline=%!lightline#tabline()
set tabstop=2
set title
set undofile
set wildmenu
set wildmode=list:full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +125 my_bestpractice.md
badd +51 Session.vim
argglobal
silent! argdel *
argadd my_bestpractice.md
edit my_bestpractice.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 87) / 175)
exe 'vert 2resize ' . ((&columns * 143 + 87) / 175)
argglobal
enew
file NERD_tree_1
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent> <NL> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap(g:NERDTreeMapActivateNode)
nnoremap <buffer> <silent> ? :call nerdtree#ui_glue#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#ui_glue#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#ui_glue#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#ui_glue#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#ui_glue#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#ui_glue#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#ui_glue#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#ui_glue#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#ui_glue#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#ui_glue#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#ui_glue#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#ui_glue#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#ui_glue#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#ui_glue#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#ui_glue#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#ui_glue#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#ui_glue#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#ui_glue#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#ui_glue#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#ui_glue#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#ui_glue#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#ui_glue#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#ui_glue#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#ui_glue#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#ui_glue#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#ui_glue#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#ui_glue#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#ui_glue#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#ui_glue#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#ui_glue#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#ui_glue#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#ui_glue#invokeKeyMap("<MiddleRelease>")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
set concealcursor=i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=autofmt#japanese#formatexpr()
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal migemo
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_inactive_0#%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_inactive_0_1#‚ÆÄ%#LightLineMiddle_inactive#%=%#LightLineRight_inactive_1_2#‚ÆÇ%#LightLineRight_inactive_1#%(\ %3p%%\ %)%#LightLineRight_inactive_0_1#‚ÆÇ%#LightLineRight_inactive_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~/dotfiles
wincmd w
argglobal
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> [] <Plug>(Markdown_MoveToPreviousSiblingHeader)
xmap <buffer> [[ <Plug>(Markdown_MoveToPreviousHeader)
nmap <buffer> [] <Plug>(Markdown_MoveToPreviousSiblingHeader)
nmap <buffer> [[ <Plug>(Markdown_MoveToPreviousHeader)
xmap <buffer> ]c <Plug>(Markdown_MoveToCurHeader)
xmap <buffer> ]u <Plug>(Markdown_MoveToParentHeader)
xmap <buffer> ][ <Plug>(Markdown_MoveToNextSiblingHeader)
xmap <buffer> ]] <Plug>(Markdown_MoveToNextHeader)
nmap <buffer> ]c <Plug>(Markdown_MoveToCurHeader)
nmap <buffer> ]u <Plug>(Markdown_MoveToParentHeader)
nmap <buffer> ][ <Plug>(Markdown_MoveToNextSiblingHeader)
nmap <buffer> ]] <Plug>(Markdown_MoveToNextHeader)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=>\ %s
setlocal complete=.,w,b,u,t,i
set concealcursor=i
setlocal concealcursor=inc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=Foldexpr_markdown(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=autofmt#japanese#formatexpr()
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^[-*+]\\s\\+
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetMkdIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,.,$,@-@
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal migemo
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('‚ÆÅ'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#‚ÆÄ%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\")))?('‚ÆÅ'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_active_1_2#‚ÆÄ%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#‚ÆÇ%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('‚ÆÉ'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('‚ÆÉ'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#‚ÆÇ%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#‚ÆÇ%#LightLineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
2
normal! zo
7
normal! zo
7
normal! zo
53
normal! zo
66
normal! zo
74
normal! zo
85
normal! zo
130
normal! zo
130
normal! zo
134
normal! zo
let s:l = 126 - ((8 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
126
normal! 0
lcd ~/dotfiles
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 87) / 175)
exe 'vert 2resize ' . ((&columns * 143 + 87) / 175)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
