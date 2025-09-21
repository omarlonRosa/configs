return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",


    -- language dependencies // use require below 
    "leoluz/nvim-dap-go",
    "mfussenegger/nvim-jdtls",

  },
  config = function ()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup()


    -- references the languages
    require("dap-go").setup()

    dap.adapters.java = {
            type = 'server',
            host = '127.0.0.1',
            port = 5005,
        }


    dap.configurations.java = {
      {
        type = 'java',
        request = 'attach',
        name = "Anexar à Aplicação Spring Boot",
        hostName = '127.0.0.1',
        port = 5005, -- A porta que definimos no comando do Maven
      },
    }


    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
    vim.keymap.set("n", "<Leader>do", dap.step_over, {})
    vim.keymap.set("n", "<Leader>di", dap.step_into, {})
  end,
}
