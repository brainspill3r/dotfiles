return
{
  'zbirenbaum/copilot.lua',
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 25,
        keymap = {
          accept = false,
          accept_word = false,
          accept_line = "<Tab>",
          next = false,
          prev = false,
          dismiss = false,
        },
      },
    })
  end,
}

