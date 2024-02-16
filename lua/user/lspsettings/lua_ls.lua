return {
  settings = {
    Lua = {
      format = {
        enable = false,
      },
      diagnostics = {
        globals = { "vim", "spec" },
        enable = true,
      },
      runtime = {
        version = "LuaJIT",
        special = {
          spec = "require",
        },
      },
      workspace = {
        checkThirdParty = false,
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
      hint= {
        enable = true,
        paramName = "All",
        paramType = true,
        semicolon = "All",
        setType = false,
        await = true
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
