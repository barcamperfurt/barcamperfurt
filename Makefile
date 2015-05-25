deploy:
	@rm -rf ./build
	@wintersmith build
	@cd ../barcamperfurt.github.io && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:barcamprfurt/barcamperfurt.github.io" master:master --force && rm -rf .git
	@rm -rf ./build
