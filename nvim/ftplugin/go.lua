if vim.fn.executable("gopls") ~= 1 then
  return
end

vim.lsp.start {
  name = "gopls",
  cmd = { "gopls" },
  capabilities = require("user.lsp").make_client_capabilities(),
}
