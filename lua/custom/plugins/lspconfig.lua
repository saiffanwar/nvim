return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			pylsp = {
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								enabled = false,
							},
							-- Optionally disable these too:
							-- mccabe = { enabled = false },
							-- pyflakes = { enabled = false },
						},
					},
				},
			},
		},
	},
}
