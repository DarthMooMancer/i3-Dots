local M = {}

local function snippet(trigger, body)
  return { trigger = trigger, body = body }
end

local snippets = {
  global = {
    snippet('shebang',            '#!/bin/sh')
  },
  lua = {
    snippet('fun',                'function ${1:name}(${2:args}) $0 end'),
    snippet('vcmd',               'vim.cmd "${1:name}"'),
    snippet('vkey',               'vim.keymap.set("${1:n}", "${2:<>}", "${3:cmd}")'),
  },
  java = {
    snippet('class_public',       'public class ${1:name} {\n\t${0:pass}\n}'),
    snippet('sysout',             'System.out.println(${1:name});'),
    snippet('public',             'public ${1:void} ${2:name}(${3:args}) {\n\t${0:pass}\n}'),
    snippet('public_main',        'public static void main(String[] args) {\n\t${0:pass}\n}'),
    snippet('public_static',      'public static ${1:void} ${2:name}(${3:args}) {\n\t${0:pass}\n}'),
    snippet('trf',                'try {\n\t${0:pass}\n} finally {\n\tinput.close();\n}'),
  },
  python = {
    snippet('forr',               'for ${1:x} in range(${2:start}, ${3:end}):\n\t${0:pass}'),
    snippet('def',                'def ${1:name}(${2:start}):\n\t${0:pass}'),
    snippet('class',              'class ${1:name}:\n\t${0:pass}'),
    snippet('class_args',         'class ${1:name}(${2:args}):\n\t${0:pass}'),
    snippet('def_init',           'def __init__(self, ${1:args}):\n\t${0:pass}'),
  }
}

function M.register_cmp_source()
  local cmp_source = {
    complete = function(_, _, callback)
      local snips = vim.list_extend(vim.deepcopy(snippets.global), snippets[vim.bo.filetype] or {})
      local completion_items = vim.tbl_map(function(s)
        return {
          word = s.trigger,
          label = s.trigger,
          kind = vim.lsp.protocol.CompletionItemKind.Snippet,
          insertText = s.body,
          insertTextFormat = vim.lsp.protocol.InsertTextFormat.Snippet,
        }
      end, snips)
      callback(completion_items)
    end
  }
  require('cmp').register_source('snp', cmp_source)
end

return M
