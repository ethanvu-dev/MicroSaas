## MicroSaas CLI Tools

INFRAS_REPO=microsaas-infras

### Project
clone:
	git submodule update --init --recursive

### Services
create-service: # Create new service
	echo "Creating service"

clean-service:  # Clean service
	echo "Cleaning service"

test-service: # Run tests for service
	docker-compose -f ./${INFRAS_REPO}/docker-compose.yml exec php-fpm make -C $$name test

### Testing
#### Run test end-to-end for all apis
test:
	@echo "Run test all microservices."
	cd ${AUTOMATION_API} && ./vendor/bin/phpunit . --verbose --color --testdox

#### Run test automation ui
test-ui:
	@cd selenium-automation-ui && make test
