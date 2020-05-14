" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
"Intellisense para o nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Tema dracula
Plug 'dracula/vim', { 'as': 'dracula' }
"Syntax das linguagens
Plug 'sheerun/vim-polyglot'
"Syntax highlighting
Plug 'pangloss/vim-javascript'
"Tema da barra de status
Plug 'vim-airline/vim-airline'
"Modifica as aspas 
Plug 'tpope/vim-surround'
"Auto close de sinais
Plug 'jiangmiao/auto-pairs'
"Side Bar
Plug 'preservim/nerdtree'
call plug#end()

"Direciona o caminho da config do CoC
source $HOME/.config/nvim/plug-config/coc.vim

"tema na tabline
let g:airline#extensions#tabline#enabled = 1

"Ativa o mouse
set mouse=a

"Numeracao de linhas
set number

"Cores reais para o terminal
set termguicolors

"mais espaco para a area de comandos
set cmdheight=2

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

colorscheme dracula

"Abrir e fechar a side bar
nnoremap <silent> <c-n> :NERDTreeToggle<CR>

"Abrir a side bar em um diretorio
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"Ter um tempo de atualização mais longo (o padrão é 4000 ms = 4 s) leva a notáveis "atrasos e pouca experiência do usuário.
set updatetime=300


"Use o TAB para concluir o gatilho com os caracteres à frente e navegue.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
