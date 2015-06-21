build:
	@rm -rf ../barcamperfurt.github.io
	@wintersmith build

deploy:
	@rm -rf ../barcamperfurt.github.io
	@wintersmith build
	@cd ../barcamperfurt.github.io && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:barcampErfurt/barcamperfurt.github.io.git" master --force && rm -rf .git
	@rm -rf ./barcamperfurt.github.io