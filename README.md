# Ansible config for my workstations

## R

```bash
pip3 install --user psutil
```

## Usage

```bash
cookiecutter -f templates/vars
```

## Development

### Tools

Documentation:

- https://docs.ansible.com/ansible/latest/index.html
- https://cookiecutter.readthedocs.io/en/latest/readme.html
- https://argbash.readthedocs.io/en/stable/
- https://www.vagrantup.com/docs/

```bash
# Install packages
pip3 install -U python-vagrant
# Setup cookiecutter context
cookiecutter --output-dir /home -f templates/cookiecutterrc
# Create new role
cookiecutter --output-dir roles templates/role
```

Vagrant

```bash
# Start VM
vagrant up
# Replay tasks
vagrant provision
# Stop VM
vagrant halt
# Reset and restart VM
vagrant destroy && vagrant up
```

