# ansible
Server management

## vault
Create a `vault.pass` file with the ansible vault password.

## initial setup
```shell
ansible-playbook playbooks/dependencies/*.yaml
```

## run
```shell
ansible-playbook playbooks/apps/*.yaml
```
