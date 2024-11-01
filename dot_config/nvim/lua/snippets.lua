local M = {}

local global_snippets = {
    {trigger = 'shebang', body = '#!/bin sh'}
}

local snippets_by_filetype = {
  lua = {
    { trigger = 'fun', body = 'function ${1:name}(${2:args}) $0 end' },
    { trigger = 'vcmd', body = 'vim.cmd "${1:name}"' },
    { trigger = 'vkey', body = 'vim.keymap.set("${1:n}", "${2:<>}", "${3:cmd}")' },
    { trigger = 'plu', body = "Plug('${1:name}')" },
  },

  java = {
    { trigger = 'class_public', body = 'public class ${1:name} {\n\t${0:pass}\n}'},
    { trigger = 'sysout', body = 'System.out.println(${1:name});'},
    { trigger = 'public', body = 'public ${1:void} ${2:name}(${3:args}) {\n\t${0:pass}\n}'},
    { trigger = 'public_static', body = 'public static void main(String[] args) {\n\t${0:pass}\n}'},
  },

  python = {
    { trigger = 'forr', body = 'for ${1:x} in range(${2:start}, ${3:end}):\n\t${0:pass}' },
    { trigger = 'def',  body = 'def ${1:name}(${2:start}):\n\t${0:pass}' },
    { trigger = 'class', body = 'class ${1:name}:\n\t${0:pass}' },
    { trigger = 'class_args', body = 'class ${1:name}(${2:args}):\n\t${0:pass}' },
    { trigger = 'def_init', body = 'def __init__(self, ${1:args}):\n\t${0:pass}' },
  }
}

local function get_buf_snips()
    local ft = vim.bo.filetype
    local snips = vim.list_slice(global_snippets)

    if ft and snippets_by_filetype[ft] then
        vim.list_extend(snips, snippets_by_filetype[ft])
    end

    return snips
end

-- cmp source for snippets to show up in completion menu
function M.register_cmp_source()
    local cmp_source = {}
    local cache = {}
    function cmp_source.complete(_, _, callback)
        local bufnr = vim.api.nvim_get_current_buf()
        if not cache[bufnr] then
            local completion_items = vim.tbl_map(function(s)
                ---@type lsp.CompletionItem
                local item = {
                    word = s.trigger,
                    label = s.trigger,
                    kind = vim.lsp.protocol.CompletionItemKind.Snippet,
                    insertText = s.body,
                    insertTextFormat = vim.lsp.protocol.InsertTextFormat.Snippet,
                }
                return item
            end, get_buf_snips())

            cache[bufnr] = completion_items
        end

        callback(cache[bufnr])
    end

    require('cmp').register_source('snp', cmp_source)
end

return M
