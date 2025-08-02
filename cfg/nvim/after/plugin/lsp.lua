
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
  capabilities = capabilities,
})

-- global keymap değil, LSP bağlandığında tanımlansın:
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local opts = { buffer = bufnr, noremap = true, silent = true }

		-- Tanıma git
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		-- Tanım penceresi (hover)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		-- Sembol arama (Telescope ile iyi çalışır)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		-- Yeniden adlandır
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		-- Kod eylemi (örneğin: include ekle)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	end
})
--Direk tanıma ya da kullanıma gider
vim.keymap.set('n', '<leader>fd', "<cmd>Telescope lsp_definitions<CR>")
--Tanıma ait kullanımları listeler
vim.keymap.set('n', '<leader>fr', "<cmd>Telescope lsp_references<CR>")
--Tüm fonksiyonları tanımları değişkenleri listeler
vim.keymap.set('n', '<leader>fs', "<cmd>Telescope lsp_document_symbols<CR>")
--Hata mesajını yüzen  bir  formda gösterir
vim.keymap.set('n', '<leader>w', "<cmd>lua vim.diagnostic.open_float()<cr>", { noremap = true, silent = true })
