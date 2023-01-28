# Main Tools Configurations
This file stored the principal functions and configurations that i use frequently in my environment.

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

## Ranger
You can use the following command for install `ranger`:
```sh
sudo apt install ranger
```

It's must have the devicons how plugins for this console file manager in the path `.config/ranger/plugins`. This repository have this plugins, you only need clone this folder (`ranger`) with his subfolder in the path '.config'.

Ranger Ssheet cheat:
| Key | Description |
| --- | ----------- |
|`/`  | sirve para buscar
|`f`  | navegacion rapida entrando solo una parte del archivo
|`gg` | mueve al principio
|`G`  | mueve al final
|`S`  | abre una consola en el directorio actual
|`yy` | copiar lo selecionado
|`dd` | cortar lo seleccionado
|`pp` | pegar lo seleccionado
|`mX` | crea un marcador con el nombre X
|`‘X` | se mueve al marcador X
|`m`  | abre un popup de marcadores
|`Barra Espaciadora` | marca un archivo
|`gn` | abre una nueva pestaña
|`gN` | se mueve a la pestaña N
|`TAB`| mueve entre pestañas
|`:delete` | borra un archivo
|`:rename` | renombra un archivo
|`Ctrl+H`  | para ver los archivos ocultos
|`w`  | ver las operaciones en curso
|`r`  | abre el archivo con una aplicacion a elegir

## .zshrc
The `.zshrc` file is the configuration for default in a terminal linux that use ZSH. This same configuration work in `.bashrc`.

### Another option for `cat`
In this case, i use another content viewer called `batcat`.

This tool you need install in your terminal with the next command:

```sh
sudo apt install bat
```
The Package Manager `apt` goes to install this packege and then when the install finish, you can use this new tool in terminal:

```sh
batcat
```
In this simple example we go enter through with the `alias` utility.

```sh
alias cat='batcat'
```

with the simple command in the file `.zshrc` you can call to the `cat` command in the terminal. The `cat` command is linked with the `batcat` command in you `.zshrc` profile, so that `batcat`command answer to the call of `cat` command. **You understand?** Okay, the next commands i do not explain. It important that you understand this simple procedure.

### Another option for `ls`
For install `exa` command:

```sh
sudo apt install exa
```

Aliase
```sh
alias ls='exa --color=auto'
alias ll='exa -hH --color=auto'
```

### Tools for delete and overwrite file and directory
For this purpose, we can use two simple, common, and more know tools called `shred` and `wipe`.

shred is a command buit-in Linux systems by default. For install `shred`:

```sh
sudo apt install shred
```

For install `wipe`:

```sh
sudo apt install wipe
```

In the `.zshrc` file you need add the next line:

```sh
rmT='shred -n 10 -fuz'
wpT='wipe -rfc'
```
### Sample Directorys Project
In many compromise for assessment various customers or in a simple Red Team operation you need have a sample directory structure for to do more easy the achieve a well manage files. The several amount data that you can get in a simple gathering information in a environment is wacky.

For the Penetration Testing case you can use the next alise:

```sh
alias mkt='mkdir -p Penetration-Testing/{Pre-Engagement,Network-Pentesting/{Linux/{Information-Gathering,Vulnerability-Assessment},Windows/{Information-Gathering,Vulnerability-Assessment}},WebApp-Pentesting,Social-Engineering,Reporting,Results}'
```

if you can understand the structure and the logical in the above command. I invite you that modified for custom this alias to your liking.

The structure in this case show below:

```sh
❯ tree Penetration-Testing
Penetration-Testing
├── Network-Pentesting
│   ├── Linux
│   │   ├── Information-Gathering
│   │   └── Vulnerability-Assessment
│   └── Windows
│       ├── Information-Gathering
│       └── Vulnerability-Assessment
├── Pre-Engagement
├── Reporting
├── Results
├── Social-Engineering
└── WebApp-Pentesting

12 directories, 0 files
```
Another proposal of sample directory:

```sh
alias mkb='mkdir -p Penetration-Testing/{Pre-Engagement,Linux/{Information-Gathering,Vulnerability-Assessment,Exploitation,Post-Exploitation,Lateral-Movement},Windows/{Information-Gathering,Vulnerability-Assessment,Exploitation,Post-Exploitation,Lateral-Movement},Reporting,Results}'
```

The structure in this case show below:

```sh
❯ tree Penetration-Testing
Penetration-Testing
├── Linux
│   ├── Exploitation
│   ├── Information-Gathering
│   ├── Lateral-Movement
│   ├── Post-Exploitation
│   └── Vulnerability-Assessment
├── Pre-Engagement
├── Reporting
├── Results
└── Windows
    ├── Exploitation
    ├── Information-Gathering
    ├── Lateral-Movement
    ├── Post-Exploitation
    └── Vulnerability-Assessment

15 directories, 0 files
```

if you don't want to complicate, you can use this more simple directory structure:

```sh
alias mk='mkdir -p Penetration-Testing/{nmap,content,exploits,scripts}'
```

You can remember in many case, less is more. Keep all simple and focus. The structure in this case show below:

```sh
❯ tree Penetration-Testing
Penetration-Testing
├── content
├── exploits
├── nmap
└── scripts

4 directories, 0 files
```
