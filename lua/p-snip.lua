local  ls =require 'luasnip'

ls.config.set_config{
  history = true,
  updateevents= "TextChanged,TextChangedI",
  enable_autosnippets=true
}


local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require "luasnip.extras.postfix".postfix

local function copy(args)
	return args[1]
end

ls.add_snippets("typescriptreact", {
    s("log",{
      t("console.log("),i(1,""),t(")"),
    }),
})

vim.keymap.set({"i","s"},"<c-b>",function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end,{silent = true})
