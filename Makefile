clean:
	rm -f ./diffs/*; rm -rf ./compiled/*; rm -rf ./logs/*

deploy_compare: clean
	ansible-playbook -i lab.hosts deploy.yml -e user=$(USER) --check

deploy: clean
	ansible-playbook -i lab.hosts deploy.yml -e user=$(USER)

inventory:
	ansible-playbook -i lab.hosts test.yml
