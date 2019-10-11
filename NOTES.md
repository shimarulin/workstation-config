- https://opensource.com/article/18/5/manage-your-workstation-ansible-part-3

## Common variables

- `username` - username

## Links

- https://nedbatchelder.com/code/cog/
- https://jinja.palletsprojects.com/
- https://click.palletsprojects.com/

- https://cookiecutter.readthedocs.io/en/latest/readme.html
- https://github.com/retr0h/cookiecutter-molecule

## Development

### Testing with Molecule and Vagrant

Создал новый `Vagrantfile` из https://app.vagrantup.com/chenhan/boxes/ubuntu-desktop-19.10 :

```bash
vagrant init chenhan/ubuntu-desktop-19.10 --box-version 20190916
```

Запуск VM - `vagrant up`, остановка `vagrant halt`. Полный список команд https://www.vagrantup.com/docs/cli/

Настройка Vagrant https://docs.ansible.com/ansible/latest/scenario_guides/guide_vagrant.html

После запуска VM плейбук выполняется сразу, но можно также запускать плейбук командой `vagrant provision`.
Чтобы сбросить состояние машины, можно воспользоваться командой `vagrant destroy`.

Создаем роли

```bash
ansible-galaxy init --init-path=roles
```

---

Создать роль

```bash
cookiecutter --output-dir roles templates/role
```

Настройка контекста пользователя для использования cookiecutter (глобальные переменные ансибла возможно тоже здесь создавать?)
Сгенерировать `.cookiecutterrc` в домашнем каталоге для создания переменных, используемых при разработке.

```bash
cookiecutter --output-dir /home -f templates/cookiecutterrc
```

## Использование

1. Создаем переменные

    ```bash
    cookiecutter -f templates/vars
    ```
2. Запускаем плейбук

