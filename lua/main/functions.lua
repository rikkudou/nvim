function SaveAndExit()
    api.nvim_command(":wa")
    api.nvim_command(":qa")
end

function OpenDiagnosticIfNoFloat()
    for _, winid in pairs(api.nvim_tabpage_list_wins(0)) do
        if api.nvim_win_get_config(winid).zindex then
            return
        end
    end
    vim.diagnostic.open_float(0, {
        scope = "cursor",
        focusable = false,
        close_events = {"CursorMoved", "CursorMovedI", "BufHidden", "InsertCharPre", "WinLeave"},
    })
end

local function apply_ts_indent_if_blank()
    local buf = vim.api.nvim_get_current_buf()
    local lnum = vim.api.nvim_win_get_cursor(0)[1]

    local line = vim.api.nvim_buf_get_lines(buf, lnum - 1, lnum, false)[1]
    if line ~= "" then
        return
    end

    -- get indent from indentexpr (Tree-sitter or fallback)
    local old_lnum = vim.v.lnum
    api.nvim_command(type(print(old_lnum)))



    vim.v.lnum = lnum
    local indent = vim.fn.eval(vim.bo.indentexpr)
    vim.v.lnum = old_lnum

    if indent > 0 then
        -- vim.api.nvim_buf_set_lines(
        --     buf,
        --     lnum - 1,
        --     lnum,
        --     false,
        --     { string.rep(" ", indent) }
        -- )
    end
    -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("$", true, false, true), "n",
    --     true)
end

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = apply_ts_indent_if_blank,
})
