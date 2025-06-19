set mouse=a
set clipboard=unnamedplus
set number
set ignorecase
set incsearch
nnoremap <C-n> :NERDTree<CR>

call plug#begin()

 Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'rose-pine/neovim', { 'as': 'rose-pine' }
Plug 'navarasu/onedark.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'preservim/nerdtree'
Plug 'folke/tokyonight.nvim'
" Install nvim-treesitter for advanced syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

"let g:onedark_config = {
     "'style': 'deep'"
"}
"colorscheme onedark
"colorscheme tokyonight-night
colorscheme rose-pine

"let g:gruvbox_material_background = 'hard'
"colorscheme gruvbox-material

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "c",  -- Ensure C is installed
  highlight = {
    enable = true,  -- Enable syntax highlighting
    additional_vim_regex_highlighting = false,  -- Disable default Vim highlighting for better Treesitter performance
  },
}
EOF

