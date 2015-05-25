build:
	@rm -rf ./build
	@wintersmith build

deploy:
	@cd ./build && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:barcamperfurt/barcamperfurt.github.io.git" master:master --force && rm -rf .git
	@rm -rf ./build