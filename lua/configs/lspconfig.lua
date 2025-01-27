local mason = {
  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },

  max_concurrent_installers = 10,
}

local mason_lspconfig = {
  automatic_installation = true
}

local servers = { "lua_ls", "html", "ts_ls" }

return { mason = mason, mason_lspconfig = mason_lspconfig, servers = servers }
