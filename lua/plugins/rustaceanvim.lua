-- rustaceanvim.lua
-- Author: Shavak Sinanan <shavak@gmail.com>
return {
	"mrcjkb/rustaceanvim",
	version = "^4",
	ft = { "rust" },
	config = function()
		local rustacean = require("rustaceanvim")
		local mason_registry = require("mason-registry")
		local codelldb = mason_registry.get_package("codelldb")
		local extension_path = codelldb:get_install_path() .. "/extension/"
		local codelldb_path = extension_path .. "adapter/codelldb"
		local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
		vim.g.rustaceanvim = {
			tools = {
				--
			},
			server = {
				capabilities = require("cmp_nvim_lsp").default_capabilities(),
				on_attach = function(client, bufnr)
					-- Set keybindings, etc. here.
					vim.keymap.set("n", "<leader>a", function()
						vim.cmd.RustLsp("codeAction")
					end, { silent = true, buffer = bufnr })
				end,
				settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {},
				},
			},
			dap = {
				adapter = require("rustaceanvim.config").get_codelldb_adapter(codelldb_path, liblldb_path),
			},
		}
	end,
}
