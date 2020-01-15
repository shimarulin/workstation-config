# ansible-role-zsh

> Install and setup zsh with awesome plugins

## Features

- Plugins management with [Zplugin](https://github.com/zdharma/zplugin) - flexible Zsh plugin manager with clean fpath,
  reports, completion management, turbo mode, services. Extra tools:
  - [Crasis](https://github.com/zdharma/zplugin-crasis) - semigraphical .zshrc editor for Zplugin commands
  - [Zplugin Console](https://github.com/zplugin/zplugin-console) - A curses consolette for Zsh-Zplugin plugin manager
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) support;
- Syntax Highlighting with [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting) plugin;
- Autosuggestion for the most recent command in this directory. Used
  [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and my own fork of
  [zsh-histdb](https://github.com/larkery/zsh-histdb) (https://github.com/shimarulin/zsh-histdb) based on pull request
  [Enables antigen usage #57](https://github.com/larkery/zsh-histdb/pull/57) under cower. More info in
  https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/ and
  https://github.com/larkery/zsh-histdb#integration-with-zsh-autosuggestions;
- Fuzzy history search with [fzf](https://github.com/junegunn/fzf). Currently, it replaced the
  [zsh-navigation-tools](https://github.com/psprint/zsh-navigation-tools) and
  [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search);
- Fast and clear, but informative prompt with [Powerlevel10k](https://github.com/romkatv/powerlevel10k). See
  [Prompt](#prompt) section for more info about some alternatives.

### Todo features:

- [ ] Integrate Fuzzy history search with `fzf` to `zsh-histdb`
  - https://github.com/larkery/zsh-histdb/issues/25
  - https://github.com/m42e/zsh-histdb-fzf

## Key bindings

- <kbd>Ctrl</kbd> + <kbd>R</kbd> - fuzzy history search
- <kbd>Ctrl</kbd> + <kbd>T</kbd> - select files and directories onto the command-line

### Additional key bindings info

Command to print key codes: `showkey -a`. Some references:

- https://jdhao.github.io/2019/06/13/zsh_bind_keys/
- https://wiki.archlinux.org/index.php/Zsh#Key_bindings
- https://www.zsh.org/mla/users/2014/msg00266.html

## Fonts

- [Powerline fonts](https://github.com/powerline/fonts)
- [Nerd Fonts](https://www.nerdfonts.com/)
- Powerlevel10k - Recommended: Meslo Nerd Font patched for Powerlevel10k

## See also

### Common articles:

- [How FZF and ripgrep improved my workflow](https://sidneyliebrand.io/blog/how-fzf-and-ripgrep-improved-my-workflow)
- [ZSH FZF completion](https://doronbehar.com/articles/ZSH-FZF-completion/)
- [Crazy Super Fast Fuzzy Search 🏎💨 - Ahmed Abdulrahman - Medium](https://medium.com/@_ahmed_ab/crazy-super-fast-fuzzy-search-9d44c29e14f)
- [Get along with fzf for Terminal - DEV Community 👩‍💻👨‍💻](https://dev.to/kojikanao/get-along-with-terminal-3jd9)
- [forgit: Interactive Git Commands With Previews Powered By fzf Fuzzy Finder - Linux Uprising Blog](https://www.linuxuprising.com/2019/11/forgit-interactive-git-commands-with.html)
- [Why you should be using fzf, the command line fuzzy finder](https://www.freecodecamp.org/news/fzf-a-command-line-fuzzy-finder-missing-demo-a7de312403ff/)
- [Better Vi Mode in Zshell - Stratus3D](http://stratus3d.com/blog/2017/10/26/better-vi-mode-in-zshell/)
- [Zsh - ArchWiki](https://wiki.archlinux.org/index.php/Zsh)
- [Переход с bash на zsh / Хабр](https://habr.com/ru/post/326580/)
- [Не понимаю, и как я раньше жил без Zsh? \| Записки программиста](https://eax.me/zsh/)
- [Ansible: настраиваем zsh терминал с antigen, autosuggestions, fzf и красивым prompt одной командой / Хабр](https://habr.com/ru/post/323496/)
- [Command Line Power User — A free video series for web developers on learning a modern command line workflow with ZSH, Z and related tools.](https://commandlinepoweruser.com/)
- [Configure Zsh Options & Plugins for Productivity in macOS's Default Shell \| Viget](https://www.viget.com/articles/zsh-config-productivity-plugins-for-mac-oss-default-shell/)
- [Oh-My-Zsh! A Work of CLI Magic — Tutorial for Ubuntu](https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb)
- [Книга о Cintu. Часть 2. Применение системы. Глава 8. Командная оболочка Zsh — Cinia](https://www.cinia.ru/kniga-o-cintu-chast-2-primenenie-sistemy-glava-8-komandnaya-obolochka-zsh/)
- [Прокачай терминал! Полезные трюки, которые сделают тебя гуру консоли - «Хакер»](https://xakep.ru/2017/05/18/cli-console-tips/)
- [Supercharge your Terminal with Zsh - {Callstack} Blog : {Callstack} Blog](https://callstack.com/blog/supercharge-your-terminal-with-zsh/)
- [Shell Configuration: Tips to Hack Your ZSH \| Apptension blog](https://blog.apptension.com/2018/08/30/shell-configuration-hack-your-zsh/)
- [Configure a beautiful terminal on Unix with Zsh \| Technorage](https://deepu.tech/configure-a-beautiful-terminal-on-unix/)
- [Dev Diaries \| Terminal History Auto Suggestions As You Type With Oh My Zsh](https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/)
- [5 tips to improve productivity with zsh \| Opensource.com](https://opensource.com/article/18/9/tips-productivity-zsh)
- [Awesome Terminal upgrades - Part Three: Manage ZSH plugins using Zplugin - DEV Community 👩‍💻👨‍💻](https://dev.to/misterf/awesome-terminal-upgrades-part-three-manage-zsh-plugins-using-zplugin-1fba)

### More plugins and tools

- https://github.com/unixorn/awesome-zsh-plugins
- https://terminalsare.sexy/#zsh
- https://github.com/alebcay/awesome-shell

### Zplugin/zsh resources:

- https://www.reddit.com/r/zplugin/
- https://www.reddit.com/r/zsh/comments/dk53ow/new_powerlevel10k_feature_instant_prompt/
- https://www.reddit.com/r/zsh/
- http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
- https://www.reddit.com/r/zsh/comments/ak0vgi/a_comparison_of_all_the_zsh_plugin_mangers_i_used/
- https://www.reddit.com/r/zsh/comments/9760xt/solving_some_performance_issues_shown_with_zprof/

### Zplugin examples:

- https://github.com/black7375/BlaCk-Void-Zsh#2-install
- http://zdharma.org/zplugin/wiki/Example-Minimal-Setup/
- https://github.com/zdharma/zplugin-configs
- https://github.com/black7375/BlaCk-Void-Zsh
- https://github.com/denysdovhan/spaceship-prompt/issues/651
- https://snippets.cacher.io/snippet/d8f057bd128fdaed11e6
- https://gist.github.com/cristovao-trevisan/f41f648ff6c4241265d31511d8616be4
- https://github.com/zdharma/zplugin/issues/45

## Theming

### Prompt

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k). Some examples available on https://gist.github.com/romkatv
- [geometry](https://github.com/geometry-zsh/geometry)
- [Spaceship](https://github.com/denysdovhan/spaceship-prompt)
- [Pure](https://github.com/sindresorhus/pure)
- [typewritten](https://github.com/reobin/typewritten)
- [Lambda (Mod) ZSH Theme](https://github.com/halfo/lambda-mod-zsh-theme)
- [Bullet Train](https://github.com/caiogondim/bullet-train.zsh)
- [hyperzsh](https://github.com/tylerreckart/hyperzsh)
- [jovial](https://github.com/zthxxx/jovial)
- [agnoster](https://github.com/agnoster/agnoster-zsh-theme)

### Terminal

#### Gnome Terminal

- https://github.com/dracula/gnome-terminal

### Some Ansible roles

- https://github.com/viasite-ansible/ansible-role-zsh
- https://github.com/gantsign/ansible-role-oh-my-zsh
- https://github.com/fourforbusiness/ansible-role-oh-my-zsh

---

## Extra features

- [Z](https://github.com/rupa/z)
- https://github.com/ogham/exa
- https://github.com/nvbn/thefuck
- https://github.com/marzocchi/zsh-notify

### Symbols

- ❯
- ➜

## License

MIT

## Author Information

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
