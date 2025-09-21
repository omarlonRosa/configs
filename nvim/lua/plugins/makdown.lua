return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown", -- Carrega o plugin apenas para arquivos Markdown
    config = function()
      -- Configurações opcionais do plugin:
      vim.g.mkdp_auto_start = 0      -- Não inicia automaticamente o preview
      vim.g.mkdp_auto_close = 1      -- Fecha o preview quando fechar o arquivo
      vim.g.mkdp_refresh_slow = 0    -- Atualização rápida
      vim.g.mkdp_command_for_global = 0
      vim.g.mkdp_open_to_the_world = 0
      vim.g.mkdp_open_ip = ""
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = 0
      vim.g.mkdp_browserfunc = ""
      -- Exemplo de mapeamento para iniciar o preview:
      vim.cmd("autocmd FileType markdown nmap <Leader>m :MarkdownPreview<CR>")
    end,
  },
}



