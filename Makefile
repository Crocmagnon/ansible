.PHONY: dry-run
dry-run:
	ansible-playbook playbooks/*.yaml --check --diff

.PHONY: run
run:
	ansible-playbook playbooks/*.yaml
