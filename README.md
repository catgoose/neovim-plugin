# neovim-plugin

<!--toc:start-->

- [neovim-plugin](#neovim-plugin)
  - [Usage](#usage)
  <!--toc:end-->

Neovim plugin template

## Usage

Lazy

```lua
local opts = {
  log_level = "warn", -- { "trace", "debug", "info", "warn", "error", "fatal" },
}

return {
  "catgoose/neovim-plugin",
  dependencies = "nvim-lua/plenary.nvim",
  opts = opts,
  event = "BufReadPre",
}
```

