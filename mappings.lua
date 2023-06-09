local M = {}

local opts = {
  silent = true,
  noremap = true,
  nowait = true,
}

-- Disabled default keymaps
M.disabled = {}

M.custom = {
  n = {
    [";"] = { ":", "Enter command mode", opts },

    ["<leader>q"] = { ":qall<CR>", "Quit", opts },
    ["<leader>s"] = { ":w<CR>", "Save file", opts },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
  },

  i = {
    ["jk"] = { "<ESC>", "Escape insert mode", opts },
  },
}

M.dap = {
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<F9>"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
    -- ["<leader>lp"] = {
    --   function()
    --     require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
    --   end,
    -- },
    -- ["<leader>dr"] = {
    --   function()
    --     require("dap").repl.open()
    --   end,
    -- },
    -- ["<leader>dl"] = {
    --   function()
    --     require("dap").run_last()
    --   end,
    -- },
    -- vim.keymap.set({'n', 'v'}, '<leader>dh', function()
    --   require('dap.ui.widgets').hover()
    -- end)
    -- vim.keymap.set({'n', 'v'}, '<leader>dp', function()
    --   require('dap.ui.widgets').preview()
    -- end)
    -- vim.keymap.set('n', '<leader>df', function()
    --   local widgets = require('dap.ui.widgets')
    --   widgets.centered_float(widgets.frames)
    -- end)
    -- vim.keymap.set('n', '<leader>ds', function()
    --   local widgets = require('dap.ui.widgets')
    --   widgets.centered_float(widgets.scopes)
    -- end)
  },
}

M.trouble = {
  n = {
    ["<leader>mx"] = { "<cmd>TroubleToggle<cr>", " Toggle trouble" },
    ["<leader>mw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", " Toggle trouble workspace diagnostics" },
    ["<leader>md"] = { "<cmd>TroubleToggle document_diagnostics<cr>", " Toggle trouble document diagnostics" },
    ["<leader>mq"] = { "<cmd>TroubleToggle quickfix<cr>", " Toggle trouble quickfix" },
    ["<leader>ml"] = { "<cmd>TroubleToggle loclist<cr>", " Toggle trouble loclist" },
    ["<leader>mD"] = { "<cmd>TroubleToggle lsp_definitions<cr>", " Toggle trouble LSP definitions" },
    ["<leader>mT"] = { "<cmd>TroubleToggle lsp_type_definitions<cr>", " Toggle trouble LSP type definitions" },
    ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", " Toggle trouble LSP references" },
  },
}

return M
