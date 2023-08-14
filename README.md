# proxychain-sudo.plugin.zsh
A helpful zsh plugin that based on sudo.plugin.zsh; add the prefix of "proxychains" or "sudo" or "sudo proxychains" per every 3 time you double click ESC
# How to use

First, clone this repo and move it into `~/.oh-my-zsh/`
```shell
git clone https://github.com/DDizzzy79/whatever-prefix.plugin.zsh.git
cd whatever-prefix.plugin.zsh.git && mv ./whatever-prefix ~/.oh-my-zsh/plugins/
```

After that, add `whatever-prefix` in to your `~/.zshrc` plugin list, it should looks like this:
```shell
plugins=(git #other plugins
        whatever-prefix
        )
```

Then you can modify prefix list via `vim ~/.oh-my-zsh/plugins/whatever-prefix`!

|Effects|Times of double clicking "ESC"|
|-----|-----|
|Adds "PREFIX1" as prefix | 1 |
|Adds "PREFIX2" as prefix | 2 |
|Adds "PREFIX2 PREFIX1" as prefix | 3 |

The default setting is `PREFIX1:="proxychains", FREFIX2:="sudo"`, so that it should look like this:

|Effects|Times of double clicking "ESC"|
|-----|-----|
|Adds proxychains as prefix | 1 |
|Adds sudo as prefix | 2 |
|Adds sudo proxychains as prefix | 3 |