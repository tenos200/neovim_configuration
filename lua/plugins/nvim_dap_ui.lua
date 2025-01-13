return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')
    dapui.setup()

    -- Key mappings for DAP
    vim.keymap.set("n", '<leader>b', function()
      dap.toggle_breakpoint()
    end)
    vim.keymap.set("n", "<leader>dk", function()
      dap.continue()
    end)
    vim.keymap.set("n", "<leader>so", function()
      dap.step_over()
    end)
    vim.keymap.set("n", "<leader>si", function()
      dap.step_into()
    end)
    vim.keymap.set("n", "<leader>sou", function()
      dap.set_out()
    end)

    -- DAP UI event listeners
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- DAP configurations for C++
    dap.configurations.cpp = {
      {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
        runInTerminal = true,
        -- Use the integrated terminal for input/output
        console = "integratedTerminal",

      }
    }

    -- DAP adapter configuration
    dap.adapters.lldb = {
      type = 'executable',
      command = '/opt/homebrew/opt/llvm/bin/lldb-dap',
      name = 'lldb'
    }
  end
}
