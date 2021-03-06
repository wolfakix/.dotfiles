-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require'lspconfig'

local langservers = {
  -- 'html',
   'cssls',
  -- 'tsserver',
  -- 'pyright',
  'clangd',
   'gopls'
}

for _, server in ipairs(langservers) do
    lspconfig[server].setup {
    capabilities = capabilities
  }
end

---------------------------------------------sumneko_lua LSP setup--------------------------------------------------------
-- 
-- local sumneko_binary_path = vim.fn.exepath('lua-language-server')
-- local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')
-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, "lua/?.lua")
-- table.insert(runtime_path, "lua/?/init.lua")
-- 
-- lspconfig.sumneko_lua.setup {
--     cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
--     settings = {
--         Lua = {
--         runtime = {
--             -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--             version = 'LuaJIT',
--             -- Setup your lua path
--             path = runtime_path,
--         },
--         diagnostics = {
--             -- Get the language server to recognize the `vim` global
--             globals = {'vim'},
--         },
--         workspace = {
--             -- Make the server aware of Neovim runtime files
--             library = vim.api.nvim_get_runtime_file("", true),
--         },
--         -- Do not send telemetry data containing a randomized but unique identifier
--         telemetry = {
--             enable = false,
--         },
--         },
--     },
-- }
-- 

-------------------------------------------------------------------------------------------------------------------------



-- lspconfig.gopls.setup {
-- cmd = {"gopls", "serve"},
-- settings = {
--   gopls = {
--     analyses = {
--       unusedparams = true,
--     },
--     staticcheck = true,
--   },
-- },
-- }

-- local lsp_installer = require("nvim-lsp-installer")
-- -- 
-- lsp_installer.on_server_ready(function(server)
--     local opts = {}
--     server:setup(opts)
-- end)

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function (server)
    local opts = {}
    if server.name == "arduino_language_server" then
        opts.on_new_config = function (config, root_dir)
            local partial_cmd = server:get_default_options().cmd
            local MY_FQBN = "arduino:avr:uno"
            config.cmd = vim.list_extend(partial_cmd, { "-fqbn", MY_FQBN })
        end
    end
    server:setup(opts)
end)
