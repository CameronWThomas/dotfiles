return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  version = false,
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "javascript", "typescript", "tsx",
      "jsdoc",
      "html", "css", "json", "markdown",
      "lua", "vim", "vimdoc", "c_sharp",
      "graphql", "xml"
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
  },
}
