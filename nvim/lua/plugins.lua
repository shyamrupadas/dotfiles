local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer'.startup({
    function(use)

    use { 'wbthomason/packer.nvim' }

    -- speeding up
    use { 'lewis6991/impatient.nvim' }
    use { 'nathom/filetype.nvim' }

    use { 'tpope/vim-sensible' }

    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons'
      },
      config = function()
        require('nvim-tree').setup {}
      end
    }
    
    use { 'ThePrimeagen/vim-be-good' }

  end,

  config = {
    enable = true,
    -- log = { level = 'debug' },
    display = {
      open_fn = require('packer.util').float,
    }
  }
})
