local builtin = require('telescope.builtin')

-- I used ChatGPT to help me generate most of these functions (all but the one Primeagen made himself).

vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({
        hidden = true,
        follow = true,
        no_ignore = true,
        cwd = vim.fn.expand('%:p:h')
    })
end, {})

vim.keymap.set('n', '<C-p>', function()
    builtin.git_files({
        hidden = true,
        follow = true,
        no_ignore = true,
        cwd = vim.fn.expand('%:p:h')
    })
end, {})

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({
        search = vim.fn.input("Grep > "),
        hidden = true,
        no_ignore = true,
        cwd = vim.fn.expand('%:p:h')
    })
end, {})

vim.keymap.set('n', '<leader>vh', function()
    builtin.help_tags({
        hidden = true,
        no_ignore = true,
        cwd = vim.fn.expand('%:p:h')
    })
end, {})

