## Additional software

- https://www.reaper.fm/download.php#linux_download

## Modules

### dconf

```yaml
- name: dconf settings
  dconf:
    key: "{{ item.key }}"
    value: "{{ item.value }}"
  loop:
    # Number
    - key: "/org/gnome/meld/indent-width"
      value: 2
    # Boolean
    - key: "/org/gnome/meld/insert-spaces-instead-of-tabs"
      value: "true"
    # String
    - key: "/org/gnome/meld/style-scheme"
      value: "'solarized-light'"
```

- https://opensource.com/article/18/5/manage-your-workstation-ansible-part-3

Related playbooks:

- https://github.com/Uberi/setup-machine
- https://git.todevski.com/ansible/playbooks/workstation
- https://github.com/toozej/ansible

## Development

### Error

- https://stackoverflow.com/a/51973504
