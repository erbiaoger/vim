call plug#begin('~/.vim/plugged')
	"{{ vimtex 
	Plug 'lervag/vimtex'
	
	let g:tex_flavor = 'latex'

	" use vimtex as default compiler
	let g:vimtex_compiler_latexmk_engines={'_':'-xelatex'}
	let g:vimtex_compiler_latexrun_engines={'_':'xelatex'}
	
	" use zathura as the default pdf reviewer
	let g:vimtex_view_method='zathura'
	
	" show the compiler hint 
	let g:vimtex_quickfix_mode = 1
	
	" hide the last two lines 
	set conceallevel=1
	
	let g:tex_conceal='abdmg'  
	" }}
	
	"安装nerdtree 
	Plug 'preservim/nerdtree'
	
	"安装markdown插件
	Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
	Plug 'plasticboy/vim-markdown'
	let g:vim_markdown_math = 1
	
	"安装markdown-toc插件
	Plug 'mzlogin/vim-markdown-toc'
	let g:vmt_auto_update_on_save = 0
	
	"安装markdown-preview 
	Plug 'iamcco/markdown-preview.vim'
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'iamcco/markdown-preview.vim'
	
	"安装颜色主题
	Plug 'morhetz/gruvbox'
	
	
call plug#end()

"配置"{{
	"markdown-preview
	let g:mkdp_path_to_chrome = ""
	" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
	" 如果设置了该参数, g:mkdp_browserfunc 将被忽略
	
	let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
	" vim 回调函数, 参数为要打开的 url
	
	let g:mkdp_auto_start =1 
	" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
	" markdown 文件的时候打开一次
	
	let g:mkdp_auto_open = 0
	" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
	" 览窗口
	
	let g:mkdp_auto_close = 1
	" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
	" 自动关闭预览窗口
	
	let g:mkdp_refresh_slow = 0
	" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
	" 更新预览
	
	let g:mkdp_command_for_global = 0
	" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
	" 文件可以使用改命令
	
	let g:mkdp_open_to_the_world = 0 
	" 设置为 1, 在使用的网络中的其他计算机也能访问预览页面
	" 默认只监听本地（127.0.0.1），其他计算机不能访问
	nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
	imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
	nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式
	imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式
	
	
	set t_Co=256
	let g:gruvbox_contrast_dark='medium' 
	colorscheme gruvbox
	
	set background=dark    " Setting dark 
"}}

set number			" 设置左侧行号
set hlsearch		" 设置高亮搜索
hi Search ctermbg=DarkRed 
set wrapscan
set relativenumber	" 设置以所在行为编号0的行号
set ruler			" 设置标尺
syntax on
set wrap			" 设置自动换行
set wildmenu
set showmode
set showcmd
set statusline=%-0120.120(%F%m%)%-0120.120([%l,%c]%)%p%%
set laststatus=2
set history=100
set cursorline
hi CursorLine ctermbg=black 
set cursorcolumn
hi CursorColumn ctermbg=black 
set list
set listchars=eol:$,tab:>- 
hi SpecialKey ctermfg=DarkRed guifg=grey70
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set scrolloff=2


" 切换 buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>
" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

map S :w<CR>
map Q :q<CR>
inoremap jj <Esc>

