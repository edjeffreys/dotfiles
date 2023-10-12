local jdtls = require("jdtls")
local root_dir = require("jdtls.setup").find_root({ ".git", "gradlew", "mvnw" })
local workspace_dir = root_dir .. "/../.jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local jdtls_dir = vim.fn.globpath("/opt/homebrew/Cellar/jdtls/", "*/libexec/")

local extendedClientCapabilities = jdtls.extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

return {
  root_dir = root_dir,
  settings = {
    java = {
      eclipse = {
        downloadSources = true,
      },
      configuration = {
        updateBuildConfiguration = "interactive",
      },
      gradle = {
        downloadSources = true,
      },
      implementationCodeLens = {
        enabled = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      signatureHelp = {
        enabled = true,
      },
      completion = {},
      flags = {
        allow_incremental_sync = true,
      },
      format = {
        enabled = true,
        settings = {
          url = vim.fn.stdpath("config") .. "/resources/java-google-style.xml",
          profile = "GoogleStyle",
        },
      },
    },
  },

  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Xms8g",
    "-Xmx8g",
    "-XX:+UseParallelGC",
    "-XX:GCTimeRatio=4",
    "-XX:AdaptiveSizePolicyWeight=90",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    "-jar",
    vim.fn.glob(jdtls_dir .. "plugins/org.eclipse.equinox.launcher_*.jar"),
    "-configuration",
    jdtls_dir .. "config_mac_arm",
    "-data",
    workspace_dir,
  },

  init_options = {
    extendedClientCapabilities = extendedClientCapabilities,
  },
}
