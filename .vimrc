" ------------------------- 
" 基本設定 Basic  
" ------------------------- 
let mapleader = "," " キーマップリーダー
set encoding=utf-8
set number 
syntax on
"colorscheme elflord
set nocompatible
set clipboard+=unnamed " OSのクリップボードを使用する
set scrolloff=5 " スクロール時の余白確保
set textwidth=0 " 一行に長い文章を書いていても自動折り返しをしない
set nobackup " バックアップ取らない
set autoread " 他で書き換えられたら自動で読み直す
set noswapfile " スワップファイル作らない
set hidden " 編集中でも他のファイルを開けるようにする

" -------------------------- 
" インデント Indent 
" -------------------------- 
set tabstop=2
set shiftwidth=2
set softtabstop=0 "Tabキー押し下げ時の挿入される空白の量
set autoindent "自動でインデント
set expandtab  "ソフトタブを有効にする
set wildmenu wildmode=list:full "コマンドライン補完
set nosmartindent "スマートインデント無効

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "そのファイルタイプにあわせたインデントを利用する
  filetype indent on
  " これらのftではインデントを無効に
  "autocmd FileType php filetype indent off

  autocmd FileType html :set indentexpr=
  autocmd FileType xhtml :set indentexpr=
endif

" その他、プラグインでインデント可視プラグイン導入 -> indentLine


"---------------------------
" 基本キーセッティング
"---------------------------
" -> プラグインのキーセッティングは各プラグインセッティングで

" ;でコマンド入力( ;と:を入替)
noremap ; :
"Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
if !1 | finish | endif

if has('vim_starting')
    set nocompatible               " Be iMproved

   " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim' 
" unite:vim 用の統合ユーザインターフェース。
" 様々なデータを共通のインタフェースを用いて操作できる。
" unite.vim のインターフェースを学習するだけで色々なデータを簡単に操作できるよ
" うになり、また異なる種類のデータを同時に操作できる。
NeoBundle 'Shougo/unite-outline' " ソースファイルを解析し、アウトラインを表示する
NeoBundle 'ujihisa/unite-font' " fontを変更するsource
NeoBundle 'tsukkee/unite-tag.git' " タグファイルを検索?
NeoBundle 'ujihisa/unite-colorscheme' " カラースキーマをプレビューしながら変えられる

NeoBundle 'kana/vim-smartchr' " キーを押す回数で入力文字を自動的に変換してくれる -> 要設定
NeoBundle 'kchmck/vim-coffee-script' " coffeescriptのコンパイル、シンタックスハイライト等を行う
NeoBundle 'othree/eregex.vim' " Vim正規表現->Perl正規表現できるようにする。コマンドは大文字 :M/ :%S/ 
NeoBundle 'Shougo/neocomplete.vim' "汎用的なワード補完->Winの場合はビルドの関係からneocomplcachの方がいいかも
NeoBundle 'Shougo/neosnippet.vim' " neocomplete用スニペット補完プラグイン
NeoBundle 'Shougo/neosnippet-snippets' " neosnippet用各種スニペット

NeoBundle 'ctrlpvim/ctrlp.vim' " ファイルとか開けたりできるセレクター
NeoBundle 'mattn/ctrlp-launcher' " CtrlPをランチャーっぽく使える
NeoBundle 'LeafCage/yankround.vim' " Vimのレジスタの履歴を取って再利用するプラグイン -> YankRing like
NeoBundle 'Shougo/vimfiler.git' " ディレクトリをツリーで表示＆移動
NeoBundle 'Shougo/vimshell.git' " vim内でシェルを動かせる-> not :shell
NeoBundle 'ujihisa/shadow.vim.git' " ファイルを保存するたびに指定されたコマンドを実行し、実行結果を保存

NeoBundle 'itchyny/lightline.vim' " ステータスバー
NeoBundle 'scrooloose/nerdtree.git' " ディレクトリをツリー表示＆移動
NeoBundle 'sudo.vim' " 特権を持たないユーザセッションから、特権ユーザでファイルを編集、保存
NeoBundle 'open-browser.vim' " vimからブラウザを開く
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build': {
      \     'windows': 'tools\\update-dll-mingw',
      \     'cygwin': 'make -f make_cygwin.mak',
      \     'mac': 'make -f make_mac.mak',
      \     'linux': 'make',
      \     'unix': 'gmake',
      \    },
      \ } " 非同期処理を実施するために必要なプラグイン

NeoBundle 'tpope/vim-surround' " カッコ等囲んでいるものに対して操作をするプラグイン
NeoBundle 'thinca/vim-qfreplace.git' " grep後のリスト内での置換を可能にする
NeoBundle 'Yggdroot/indentLine' " インデントを分かりやすく表示
NeoBundle 'elzr/vim-json' " JSON表示用に整形するプラグイン
NeoBundle 'junegunn/vim-easy-align' " テキストをコマンドを使って整列させる
NeoBundle 'fuenor/qfixhowm' " vim/gvimにhowm(エディタ)を実装したスクリプト -> 使い方は後回し
NeoBundle 'thinca/vim-quickrun' " バッファ上のソースコードを実行、その実行結果を Vim へ出力
NeoBundle 'mattn/emmet-vim' " html/cssスニペッド
NeoBundle 'tpope/vim-endwise'  " Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-fugitive' " Gitをvimで扱いやすく、見やすくしてくれる
NeoBundle 'godlygeek/tabular' " markdownのテーブルを作成してくれる
NeoBundle 'joker1007/vim-markdown-quote-syntax' "markdown内のクオートコードをシンタックスハイライトしてくれる
NeoBundle 'rcmdnk/vim-markdown' " markdownのシンタックスハイライト
NeoBundle 'kannokanno/previm' " markdownをブラウザプレビュー
NeoBundleLazy "davidhalter/jedi-vim", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"],
      \ },
      \ "build": {
      \   "mac": "pip install jedi",
      \   "unix": "pip install jedi",
      \ }}
      " python補完、構文エラー検出、文法チェック、など

NeoBundleLazy "lambdalisue/vim-django-support", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }} " Djangoを正しくVimで読み込めるようにする

NeoBundleLazy "jmcantrell/vim-virtualenv", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }} " Vimで正しくvirtualenvを処理できるようにする

NeoBundle 'TwitVim' " vim用twitterクライアント

call neobundle#end()
 
" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれる
" ようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"-------------------------
" Any Plugin Settings.
"-------------------------

" quickrun.vim が実行していない場合には <C-c> を呼び出す
" <C-c> で実行を強制終了させる
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

let g:neocomplcash_enable_at_startup = 1

" qfixappにruntimepathを通す(パスは環境に合わせてください)
" let runtimepath+=~/.vim/bundle/qfixhowm/

" キーマップリーダー
let QFixHowm_Key = 'g'

" howm_dirはファイルを保存したいディレクトリを設定
let howm_dir             = '~/howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'

" ctrlp-launcher keymapping
nnoremap <c-e> :<c-u>CtrlPLauncher<cr>

" markdown関連 settings
let g:vim_markdown_liquid=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=1
au BufRead,BufNewFile *.{txt,text} set filetype=markdown

" yankround keymapping (like YankRing)
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)


"-------------------------
" jedi-vim setting
"-------------------------
let s:hooks = neobundle#get_hooks("jedi-vim")
function! s:hooks.on_source(bundle)
    " jediにvimの設定を任せると'completeopt+=preview'するので
    " 自動設定機能をOFFにし手動で設定を行う
    let g:jedi#auto_vim_configuration = 0
    " 補完の最初の項目が選択された状態だと使いにくいためオフにする
    let g:jedi#popup_select_first = 0
    " quickrunと被るため大文字に変更
    let g:jedi#rename_command = '<Leader>R'
    " gundoと被るため大文字に変更 (2013-06-24 10:00 追記）
    let g:jedi#goto_assignments_command = '<Leader>G'
endfunction

" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview

"-------------------------
" neocomlete Settings.
"-------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" 補完を有効にする
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" 使用ディレクトリの設定
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" プラグインのキーマッピング
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" おすすめキーマッピング
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: タブ補完
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.ポップアップの消去と後の文字の削除
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" オムニ補完するファイルタイプ
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" 高度なオムニ補完
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" jedi python用  ポップアップを出さないとか
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

"-------------------------
" neosnippet config
"-------------------------
" <C-k>でsnippetの展開
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" オリジナルのスニペッドを定義する場合のパス
"let g:neosnippet#snippets_directory='~/.vim/path/to/snippetfile/'

"-------------------------
" liteline config
"-------------------------
let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
        \  &ft == 'unite' ? unite#get_status_string() : 
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

" eregex config
nnoremap / :M/
nnoremap ? :M?
nnoremap ,/ /
nnoremap ,? ?

"______________
" indentline setting
"______________
let g:indentLine_faster = 1
nmap <silent><Leader>i :<C-u>IndentLinesToggle<CR>


"______________
" tab setting
"______________

" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

"" Set tabline.
" function! s:my_tabline()  "{{{
"   let s = ''
"   for i in range(1, tabpagenr('$'))
"     let bufnrs = tabpagebuflist(i)
"     let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
"     let no = i  " display 0-origin tabpagenr.
"     let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
"     let title = fnamemodify(bufname(bufnr), ':t')
"     let title = '[' . title . ']'
"     let s .= '%'.i.'T'
"     let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
"     let s .= no . ':' . title
"     let s .= mod
"     let s .= '%#TabLineFill# '
"   endfor
"   let s .= '%#TabLineFill#%T%=%#TabLine#'
"   return s
" endfunction "}}}
" let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
" set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ


