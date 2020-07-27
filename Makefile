SHELL = /bin/sh

install:	install-prod

install-prod:
	php composer.phar install --prefer-dist --optimize-autoloader --no-dev

install-dev:
	php composer.phar install

deploy:
	serverless deploy --conceal

invoke:
	serverless invoke -f $(function)
