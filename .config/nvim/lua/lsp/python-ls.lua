-- npm i -g pyright

  -- Commands:
  
  -- Default Values:
-- cmd = { "pyright-langserver", "--stdio" }
-- filetypes = { "python" }
-- root_dir = <function 1>
-- settings = {
--   python = {
--     -- venvPath = {"/home/suryab/.config/pyenv/shims/python"},
--     analysis = {
--       autoSearchPaths = true,
--       useLibraryCodeForTypes = true
--     }
--   }
-- }
require'lspconfig'.pyright.setup{
cmd = { "pyright-langserver", "--stdio" },
settings = {
  python = {
    -- venvPath = {"/home/suryab/.config/pyenv/versions/3.8.7/bin/python"},
    analysis = {
      autoSearchPaths = true,
      useLibraryCodeForTypes = true
    }
    
}}}
