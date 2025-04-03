return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        vim.keymap.set('n', '<C-t>', ':RenderMarkdown toggle<CR>', { noremap = true, silent = true })
    },
}
