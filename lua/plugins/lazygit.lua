return {
  {
    -- Wenn es ungesichterte Files gibt wird ein Dialog angezeigt bevor Lazygit gestartet wird.
    "thelastpsion/lazygit-confirm.nvim",
    opts = {
      show_saveall_noconfirm = true,
    },
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    key = {
      { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
