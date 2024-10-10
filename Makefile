.PHONY: dry-run
apps-dry-run:
	ansible-playbook playbooks/apps/*.yaml --check --diff

.PHONY: run
apps:
	ansible-playbook playbooks/apps/*.yaml
