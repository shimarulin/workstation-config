## Links

- https://nedbatchelder.com/code/cog/
- https://jinja.palletsprojects.com/
- https://click.palletsprojects.com/

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
