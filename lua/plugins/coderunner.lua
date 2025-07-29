return {
  {
    "CRAG666/code_runner.nvim",
    lazy = true,
    config = function()
      require("code_runner").setup {
        filetype = {
          python = "python3 $FILENAME",
          c = "clang \"$file\" -o \"$dir/$fileNameWithoutExt\" && \"$dir/$fileNameWithoutExt\"",
          cpp = "clang++ \"$file\" -o \"$dir/$fileNameWithoutExt\" && \"$dir/$fileNameWithoutExt\"",
       },
      }
    end,
  }
}

