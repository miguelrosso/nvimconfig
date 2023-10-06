function resetMaps()
    vim.keymap.set("n", "<leader>xx", vim.cmd.NvimTreeToggle, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>xo", vim.cmd.NvimTreeOpen)
    vim.keymap.set("n", "<leader>xc", vim.cmd.NvimTreeClose)

    vim.keymap.set("n", "<C-j>", "jzz")
    vim.keymap.set("n", "<C-k>", "kzz")
    vim.keymap.set("n", "<C-h>", "<c-w>h")
    vim.keymap.set("n", "<C-l>", "<c-w>l")

    vim.keymap.set("x", "<leader>p", "\"_dP")
end

resetMaps()
