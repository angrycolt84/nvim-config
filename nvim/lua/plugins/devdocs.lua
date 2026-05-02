return {
  "luckasRanarison/nvim-devdocs",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("nvim-devdocs").setup({
      -- Where docs are stored
      dir_path = vim.fn.stdpath("data") .. "/devdocs",

      -- Preview rendered in a floating window
      float_win = {
        relative = "editor",
        height = 25,
        width = 100,
        border = "rounded",
      },

      -- Automatically install these on setup
      ensure_installed = {
        "python~3.12",
        "fastapi",
      },

      -- Open docs in a float instead of a buffer split
      after_open = function(bufnr)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "q", ":close<CR>", { noremap = true, silent = true })
      end,
    })
  end,

  keys = {
    { "<leader>dd", "<cmd>DevdocsOpenFloat<CR>", desc = "Devdocs open (float)" },
    { "<leader>dD", "<cmd>DevdocsOpen<CR>", desc = "Devdocs open (buffer)" },
    { "<leader>df", "<cmd>DevdocsOpenFloatCurrentWord<CR>", desc = "Devdocs: word under cursor" },
  },
}
