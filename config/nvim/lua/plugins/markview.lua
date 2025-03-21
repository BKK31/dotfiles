-- For `plugins/markview.lua` users.
return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    vim.keymap.set('n', '<C-t>', ':Markview Toggle<CR>', { noremap = true, silent = true }) -- focus file explorer
};
