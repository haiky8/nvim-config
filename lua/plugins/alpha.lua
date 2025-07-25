return {
    'goolord/alpha-nvim',
    dependencies = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },
  event = "VimEnter",
    config = function ()
        require'alpha'.setup(require'alpha.themes.theta'.config)
    end
}
