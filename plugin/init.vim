let g:starlight_name = "starlight"
let g:starlight_test_mode = 0


function! DevTest()
lua << EOF
    require(vim.g.starlight_name).setup()
EOF
endfunction

function! DevLoad()
lua << EOF

    for k in pairs(package.loaded) do
        if k:match("lualine") then
            package.loaded[k] = nil
        end
        if k:match(vim.g.starlight_name) then
            package.loaded[k] = nil
        end
    end
    require(vim.g.starlight_name).setup()

    require("lualine").setup({
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch',},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
EOF
endfunction

if g:starlight_test_mode
    call DevTest()
    nnoremap <silent> <leader>pr :call DevLoad()<cr>
endif
