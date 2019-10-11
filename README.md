# Ansible config for my workstations

## Usage

```bash
cookiecutter -f templates/vars
```

## Development

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

