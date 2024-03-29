local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status
then
	vim.notify("cmp not found")
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status
then
	vim.notify("luasnip not found")
	return
end


local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup(
	{
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert(
			{
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping(
					function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						elseif has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end,
					{ "i", "s" }
				),
				["<S-Tab>"] = cmp.mapping(
					function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end,
					{ "i", "s" }
				)
			}
		),
		formatting = {
			fields = { "abbr", "menu" },
			format = function(entry, vim_item)
				vim_item.menu = ({
					nvim_lsp = "[lsp]",
					luasnip = "[snippet]",
					buffer = "[buffer]",
				})[entry.source.name]
				return vim_item
			end
		},
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
		}, {
			{ name = 'buffer' },
		}, {
			{ name = 'path' },
		}),
	}
)
