# vim set up
class SetupVim
  def self.execute
    install_pathogen
    download_plugins
    update_theme
    update_vimrc

    system 'echo "All Done! 😎"'
  end

  def self.install_pathogen
    system "mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
  end

  def self.download_plugins
    system 'echo "Downloading Plugins"'
    system 'mkdir ~/.vim/bundle'
    system 'rm -rf ~/.vim/bundle/*'

    plugins.values.each do |plugin|
      system "cd ~/.vim/bundle && git clone #{plugin}"
    end
  end

  def self.update_theme
    system 'echo "Updating Theme"'
    system 'mkdir ~/.vim/colors'
    system 'cp vim/colors/dracula.vim ~/.vim/colors/dracula.vim'
  end

  def self.update_vimrc
    system 'rm -rf ~/.vimrc'
    system 'ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc'
  end

  private

  def self.plugins
    {
      ack: 'https://github.com/mileszs/ack.vim.git',
      ale: 'https://github.com/w0rp/ale.git',
      auto_pairs: 'https://github.com/jiangmiao/auto-pairs.git',
      ctrlp: 'https://github.com/ctrlpvim/ctrlp.vim.git',
      indent_line: 'https://github.com/Yggdroot/indentLine.git',
      nerd_tree: 'https://github.com/scrooloose/nerdtree.git',
      syntastic: 'https://github.com/vim-syntastic/syntastic.git',
      vim_airline: 'https://github.com/vim-airline/vim-airline.git',
      vim_airline_themes: 'https://github.com/vim-airline/vim-airline-themes.git',
      vim_commentary: 'https://github.com/tpope/vim-commentary.git',
      vim_expand_region: 'https://github.com/terryma/vim-expand-region.git',
      vim_fugitive: 'https://github.com/tpope/vim-fugitive.git',
      vim_gitgutter: 'https://github.com/airblade/vim-gitgutter.git',
      vim_javascript: 'https://github.com/pangloss/vim-javascript.git',
      vim_jsx: 'https://github.com/mxw/vim-jsx.git',
      vim_prettier: 'https://github.com/prettier/vim-prettier.git',
      vim_rails: 'https://github.com/tpope/vim-rails.git',
      vim_signature: 'https://github.com/kshenoy/vim-signature.git',
      vim_surround: 'https://github.com/tpope/vim-surround.git',
      vim_test: 'https://github.com/janko/vim-test.git',
      vim_unimpaired: 'https://github.com/tpope/vim-unimpaired.git'
    }
  end
end

SetupVim.execute
