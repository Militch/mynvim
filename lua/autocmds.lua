local autocmd = vim.api.nvim_create_autocmd

autocmd('BufEnter', {
  nested = true,
  callback = function()
    if vim.fn.winnr("$") == 1
        and vim.fn.bufname() == "NvimTree_" 
            .. vim.fn.tabpagenr() then
      vim.api.nvim_command(":silent qa!")
    end
  end,
})
