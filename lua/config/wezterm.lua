-- Trigger to check if colorscheme changed
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("wezterm_colorscheme", { clear = true }),
  callback = function(args)
    print("ColorScheme changed:", args.match) -- <-- Esto te dirá si se está ejecutando
    --vim.notify("ColorScheme changed: " .. args.match, vim.log.levels.INFO)

    -- Define the colorscheme custom names
    local colorschemes = {
      ["tokyonight"] = "Daisy Tokyo Night",
      ["kanagawa-dragon"] = "Daisy Kanagawa Dragon",
      ["kanagawa-wave"] = "Daisy Kanagawa Wave",
      ["enfocado"] = "Daisy Enfocado",
      ["retrobox"] = "Retrobox",
    }

    local colorscheme = colorschemes[args.match]
    if not colorscheme then
      return
    end

    -- Write the colorscheme to a file
    local filename = vim.fn.expand("/mnt/c/Users/kadan/.wezterm/colorscheme")
    assert(type(filename) == "string")
    local file = io.open(filename, "w")
    assert(file)
    file:write(colorscheme)
    file:close()
    vim.notify("Setting WezTerm color scheme to " .. colorscheme, vim.log.levels.INFO)
  end,
})
