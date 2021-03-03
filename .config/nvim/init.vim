"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim

" Themes
source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/nvcode.vim

" Plugin Configuration
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/limelight.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/ranger.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/better-whitespace.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/vim-wiki.vim
luafile $HOME/.config/nvim/lua/nvcodeline.lua
luafile $HOME/.config/nvim/lua/treesitter.lua
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/git-messenger.vim
source $HOME/.config/nvim/plug-config/deoplete.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/folding.vim
" source $HOME/.config/nvim/plug-config/barbar.vim "Error
source $HOME/.config/nvim/plug-config/far.vim
"  source $HOME/.config/nvim/plug-config/tagalong.vim
"  source $HOME/.config/nvim/plug-config/bracey.vim
source $HOME/.config/nvim/plug-config/asynctask.vim
source $HOME/.config/nvim/plug-config/window-swap.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
" source $HOME/.config/nvim/plug-config/neovide.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
" source $HOME/.config/nvim/plug-config/sneak.vim
" source $HOME/.config/nvim/plug-config/rainbow.vim
" source $HOME/.config/nvim/plug-config/illuminate.vim
" source $HOME/.config/nvim/plug-config/vista.vim
" source $HOME/.config/nvim/plug-config/xtabline.vim
" source $HOME/.config/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
" source $HOME/.config/nvim/plug-config/ale.vim
"source $HOME/.config/nvim/plug-config/quickscope.vim "Error
"Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")

