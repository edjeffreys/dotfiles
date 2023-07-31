local jdtls = require("jdtls")

local root_dir = require("jdtls.setup").find_root({ ".git", "gradlew", "mvnw" })
local workspace_dir = root_dir .. "/../.jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local config = {
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
      references = {
        includeDecompiledSources = true,
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
    --"-Dlog.level=ALL",
    "-noverify",
    "-Xms8g",
    "-Xmx8g",
    "-XX:+UseParallelGC",
    "-XX:GCTimeRatio=4",
    "-XX:AdaptiveSizePolicyWeight=90",
    "-Dsun.zip.disableMemoryMapping=true",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    "-jar",
    vim.fn.glob(
      vim.fn.stdpath("data")
        .. "/lazy/eclipse.jdt.ls/"
        .. "org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_*.jar"
    ),
    "-configuration",
    vim.fn.stdpath("data")
      .. "/lazy/eclipse.jdt.ls/"
      .. "org.eclipse.jdt.ls.product/target/repository/config_mac_silicon",
    "-data",
    workspace_dir,
  },
}

jdtls.start_or_attach(config)
