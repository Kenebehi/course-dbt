docs:
	cd ${PWD}/greenery && dbt docs generate && dbt docs serve 

test:
	cd ${PWD}/greenery && dbt test

install-deps:
	cd ${PWD}/greenery && dbt deps

build:
	cd ${PWD}/greenery && dbt build