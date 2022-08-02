local options = {
    backup = false, 			        -- creates a backup file
    clipboard = "unnamedplus", 			-- neovim accesses system keyboard
    cmdheight = 2,	 			-- more space in nvim commandline
    completeopt = { "menuone", "noselect" }, 	-- mostly just for cmp
    conceallevel = 0, 				-- `` visible in markdown files
    fileencoding = "utf-8", 			-- encoding
    hlsearch = true, 				-- highlight matches on search
    smartcase = true, 				-- smart case
    smartindent = true, 			-- smart indent
    showmode = false,         -- showmode not needed
    splitbelow = true, 				-- force all horizontal splits to go below
    splitright = true, 				-- force all vertical splits to go to the right
    swapfile = false,			 	-- create swapfile
    termguicolors = true, 			-- set term gui colours
    timeoutlen = 100, 				-- time to wait for mapped sequence to complete (ms)
    undofile = true, 				-- allow persistent undo
    updatetime = 300,				-- faster completion
    writebackup = false, 			-- if file is being edited by another program, it cannot be edited.
    expandtab = true, 				-- converts tabs to spaces
    shiftwidth = 2, 				-- number of spaces inserted for each indentation
    tabstop = 2,				-- 2 spaces per tab	
    signcolumn = "yes", 			-- always show sign column
    wrap = false, 				-- display lines as one long line
    scrolloff = 8,
    sidescrolloff = 8,
    guifont = "monospace:h17", 			-- font used in gnvim apps
    number = true,
}

vim.opt.shortmess:append "c"

for k, v in pairs (options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- apparently doesn't work but I stole from chris@machine lol

