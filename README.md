# Main Tools Configurations

## Nvim
This file have personal nvim configuration, but this have many plugs. It's need install this Plugs for the nvim configuration works!.

You can download the nvim file configuration:

 ```sh
 wget "https://raw.githubusercontent.com/z1roh/Environment-Configurations/main/nvim/init.vim"
 ```
 
You need locate this file in the path `~/.config/nvim/init.vim`.

In the case of that you do not have installed the 'vim-plug`, you can install this with the following command terminal:

 ```sh
 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 ```

In this point, you can open neovim with `nvim` and use `:` for specify the command `:PlugInstall`. In this case the plugins go start to install in the environment nvim. In other hand, if you want delete a plugin of you environment, you need delete this plugins, firstly remove of `init.vim` and after with `:PlugClean` you can delete these plugins.

You remember update your plugins, this action is important, you can use for this action the command `:PlugUpgrade`.
