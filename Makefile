SHELL = /bin/sh

install:	install-prod

install-prod:
	php composer.phar install --prefer-dist --optimize-autoloader --no-dev

install-dev:
	php composer.phar install

# The env var AWS_PROFILE may need to be set for the commands below (deploy,
# invoke)
deploy:
	serverless deploy --conceal

# for example:
# AWS_PROFILE=my_profile make invoke function=function
invoke:
	serverless invoke -f $(function)

run:
	php -S localhost:8000 index.php