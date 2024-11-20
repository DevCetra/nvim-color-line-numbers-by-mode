-- Copyright (c) 2023, Robert Mollentze, DevCetra.com

local M = {}

local mode_colors = {
    n = "#44a8e5",      -- Normal
    i = "#c177e5",      -- Insert
    v = "#88deff",      -- Visual
    -- c = "#afcfa4",      -- Command
    -- t = "#afcfa5",      -- Terminal
    default = "#FFFFFF" -- Fallback
}

local function color_line_numbers_by_node()
    local mode = vim.fn.mode()
    local color = mode_colors[mode] or mode_colors.default
    vim.cmd(string.format("highlight LineNr guifg=%s", color))
    vim.wo.number = true
    vim.wo.cursorline = mode ~= "default"
    vim.wo.cursorlineopt = mode ~= "default" and "number" or "line"
    vim.wo.signcolumn = mode ~= "default" and "yes" or "auto"
end

-- Setup function.
function M.setup()
    vim.api.nvim_create_autocmd("ModeChanged", {
        pattern = "*",
        callback = function()
            color_line_numbers_by_node()
        end,
    })
    color_line_numbers_by_node()
end

return M
