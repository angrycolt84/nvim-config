return {
  "akinsho/bufferline.nvim",
  keys = {
    {
      "L",
      function()
        vim.cmd("bnext" .. vim.v.count1)
      end,
      desc = "Next Buffer",
    },
    {
      "H",
      function()
        vim.cmd("bprev" .. vim.v.count1)
      end,
      desc = "Prev Buffer",
    },
    {
      "]b",
      function()
        vim.cmd("bnext" .. vim.v.count1)
      end,
      desc = "Next Buffer",
    },
    {
      "[b",
      function()
        vim.cmd("bprev" .. vim.v.count1)
      end,
      desc = "Prev Buffer",
    },
  },
}
