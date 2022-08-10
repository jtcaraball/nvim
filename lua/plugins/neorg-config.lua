local M = {}

function M.config()
  require('neorg').setup({
    load = {
      ['core.defaults'] = {},
      ['core.norg.concealer'] = {}
    }
  })
end

return M
