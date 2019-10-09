# Ansible config for my workstations

## Tools

- https://github.com/kkirsche/ansible-generator
- https://github.com/ansible/molecule

## Development

```bash
pip3 install -U molecule
pip3 install -U ansible-generator
pip3 install -U python-vagrant
```

```bash
molecule init role --driver-name vagrant --role-name <role-name>
```
