ansible-role-zsh
=========

> Install and setup zsh with awesome plugins

Todo:

- [ ] command_not_found_handler

Awesome lists:

- https://github.com/unixorn/awesome-zsh-plugins
- https://terminalsare.sexy/#zsh

Plugins

- [Zplugin](https://github.com/zdharma/zplugin) - flexible Zsh plugin manager with clean fpath, reports, completion management, turbo mode, services
- [Crasis](https://github.com/zdharma/zplugin-crasis) - semigraphical .zshrc editor for Zplugin commands
- [Zplugin Console](https://github.com/zplugin/zplugin-console) - A curses consolette for Zsh-Zplugin plugin manager
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-histdb](https://github.com/larkery/zsh-histdb)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - A fast reimplementation of Powerlevel9k ZSH theme

Tools: 

- https://github.com/junegunn/fzf

Additions:

- [Powerline fonts](https://github.com/powerline/fonts)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

Zplugin/zsh resources:

- https://www.reddit.com/r/zplugin/
- https://www.reddit.com/r/zsh/comments/dk53ow/new_powerlevel10k_feature_instant_prompt/
- https://www.reddit.com/r/zsh/
- http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
- https://www.reddit.com/r/zsh/comments/ak0vgi/a_comparison_of_all_the_zsh_plugin_mangers_i_used/
- https://www.reddit.com/r/zsh/comments/9760xt/solving_some_performance_issues_shown_with_zprof/

Zplugin examples:

- http://zdharma.org/zplugin/wiki/Example-Minimal-Setup/
- https://github.com/zdharma/zplugin-configs
- https://github.com/black7375/BlaCk-Void-Zsh

Common articles:

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

## Key binding

Command to print key codes: `showkey -a`. Some references:

- https://jdhao.github.io/2019/06/13/zsh_bind_keys/
- https://wiki.archlinux.org/index.php/Zsh#Key_bindings
- https://www.zsh.org/mla/users/2014/msg00266.html

## Improved zsh command history and complete

Plugins:

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-histdb](https://github.com/larkery/zsh-histdb), see also 
  [Enables antigen usage #57](https://github.com/larkery/zsh-histdb/pull/57) and my own fork https://github.com/shimarulin/zsh-histdb

Articles:

- https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/

## Improved zsh command history and complete with fuzzy search by [fzf](https://github.com/junegunn/fzf)

При вводе отображается подходящая команда через 
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) из
запроса к [zsh-histdb](https://github.com/larkery/zsh-histdb). Реверсивный поиск
работает с [fzf](https://github.com/junegunn/fzf), который фильтрует подходящие 
запросы, отсортированные по времени и месту из `zsh-histdb`.

- https://github.com/larkery/zsh-histdb/issues/25
- https://github.com/m42e/zsh-histdb-fzf

## Theming

- https://github.com/romkatv/powerlevel10k/
- https://gist.github.com/romkatv

### Symbols

- ❯
- ➜

--------------------------------------------------------------------------------

- 
- https://github.com/robbyrussell/oh-my-zsh

More plugins and tools

- https://github.com/unixorn/awesome-zsh-plugins
- https://github.com/alebcay/awesome-shell

see also some Ansible roles

- https://github.com/viasite-ansible/ansible-role-zsh
- https://github.com/gantsign/ansible-role-oh-my-zsh
- https://github.com/fourforbusiness/ansible-role-oh-my-zsh

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: zsh, x: 42 }

License
-------

MIT

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
