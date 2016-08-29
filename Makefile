clean:
	rm -f ./diffs/*; rm -rf ./compiled/*; rm -rf ./logs/*

deploy_compare:
	ansible-playbook -i lab.hosts deploy.yml -e user=$(USER) --check

inventory:
	ansible-playbook -i lab.hosts test.yml
