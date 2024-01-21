require("lspconfig").rust_analyzer.setup {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = true,
			check = {
				command = 'clippy',
				-- These args for clippy came from No Boilerplate. Will consider more lints later
        -- extraArgs = { '--', '-W', 'clippy::pedantic', '-W', 'clippy::nursery', '-W', 'clippy::unwrap_used' },
        -- These are mine for now
        extraArgs = { '--', '-W', 'clippy::all', --[[ '-W', 'clippy::nursery' ,]] '-W', 'clippy::unwrap_used' },
      },
    },
  },
}
