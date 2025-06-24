return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local types = require("cmp.types")
      local context = require("cmp.config.context")

      opts.enabled = function()
        -- Disable completion in comments
        if context.in_treesitter_capture("comment") then
          return false
        end
        -- Disable in prompt buffers (like the tree navigator)
        if vim.bo.buftype == "prompt" then
          return false
        end
        return true
      end

      -- Create a filter function for markdown files
      local filter_text_items = function(entry, ctx)
        if vim.bo.filetype == "markdown" then
          return types.lsp.CompletionItemKind[entry:get_kind()] ~= "Text"
        end
        return true
      end

      -- Apply the filter to all sources, but only for normal buffers
      opts.sources = vim.tbl_map(function(source)
        local original_entry_filter = source.entry_filter
        source.entry_filter = function(entry, ctx)
          if vim.bo.buftype == "" then -- Only for normal buffers
            if original_entry_filter then
              return original_entry_filter(entry, ctx) and filter_text_items(entry, ctx)
            else
              return filter_text_items(entry, ctx)
            end
          end
          return true
        end
        return source
      end, opts.sources)

      return opts
    end,
  },
}
