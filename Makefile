dry-run:
	ansible-playbook playbook.yaml --check --diff

run:
	ansible-playbook playbook.yaml
