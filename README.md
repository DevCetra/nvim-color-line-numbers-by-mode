# NeoVim Extension

## nvim-ex-color-line-numbers-by-mode

A plugin for NeoVim to color the line numbers based on the current mode to help you better see the mode you're in.

## Installing with Lazy

```lua
return {
  {
    "DevCetra/nvim-ex-color-line-numbers-by-mode",
    config = function()
      require("nvim-ex-color-line-numbers-by-mode").setup()
    end,
  },
}
```
