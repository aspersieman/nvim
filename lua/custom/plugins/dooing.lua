return {
  'atiladefreitas/dooing',
  config = function()
    require('dooing').setup {
      -- your custom config here (optional)
      keymaps = {
        toggle_window = '<leader>td', -- Toggle the main window
        new_todo = 'i', -- Add a new todo
        toggle_todo = 'x', -- Toggle todo status
        delete_todo = 'd', -- Delete the current todo
        delete_completed = 'D', -- Delete all completed todos
        close_window = 'q', -- Close the window
        add_due_date = 'h', -- Add due date to todo
        remove_due_date = 'r', -- Remove due date from todo
        toggle_help = '?', -- Toggle help window
        toggle_tags = 't', -- Toggle tags window
        clear_filter = 'c', -- Clear active tag filter
        edit_todo = 'e', -- Edit todo item
        edit_tag = 'e', -- Edit tag [on tag window]
        delete_tag = 'd', -- Delete tag [on tag window]
        search_todo = '/', -- Toggle todo searching
        toggle_priority = '^', -- Toggle todo priority on creation
      },
    }
  end,
}
