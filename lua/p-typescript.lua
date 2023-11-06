local api = require('typescript-tools.api')
require('typescript-tools').setup({
  handlers = {
    -- filter duplicated warnings by eslint & tsserver
    ['textDocument/publishDiagnostics'] = api.filter_diagnostics({ 6133 }),
  },
})
