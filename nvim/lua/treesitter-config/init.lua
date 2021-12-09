Augists.utils.plugins.packadd('nvim-treesitter')

require'nvim-treesitter.configs'.setup {
    ensure_installed = Augists.plugins.treesitter.ensure_installed, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = Augists.plugins.treesitter.ignore_install,
    indent = Augists.plugins.treesitter.indent,
    highlight = Augists.plugins.treesitter.highlight,
    autotag = Augists.plugins.treesitter.autotag,
    rainbow = Augists.plugins.treesitter.rainbow
}
