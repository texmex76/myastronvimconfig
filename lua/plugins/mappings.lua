function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
        ["<leader>lq"] = {":lua quickfix()<CR>", desc = "Quick fix"},
        ["<leader>t1"] = {
            ":lua require('toggleterm').exec('', 1)<CR>",
            desc = "ToggleTerm 1"
        },
        ["<leader>t2"] = {
            ":lua require('toggleterm').exec('', 2)<CR>",
            desc = "ToggleTerm 2"
        },
        ["<leader>t3"] = {
            ":lua require('toggleterm').exec('', 2)<CR>",
            desc = "ToggleTerm 3"
        },
        ["<leader>t4"] = {
            ":lua require('toggleterm').exec('', 2)<CR>",
            desc = "ToggleTerm 4"
        },
        ["<leader>ml"] = {":w<CR>:!latexmk<CR>", desc = "latexmk"},
        ["<leader>mm"] = {":w<CR>:!make<CR>", desc = "Make"},
        ["<leader>e"] = {":Neotree toggle reveal_force_cwd<CR>"},
        ["<leader>if"] = {":echo expand('%:p')<CR>", desc = "Current file path"},
        ["<S-H>"] = {":w<CR>", desc = "Current file path"},
        },
        t = {
          -- empty
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
