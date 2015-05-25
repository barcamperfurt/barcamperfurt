deploy:
	@rm -rf ../barcamperfurt.github.io
	@wintersmith build
	@cd ../barcamperfurt.github.io && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:barcamperfurt/barcamperfurt.github.io.git" master:master --force && rm -rf .git
	@rm -rf ../barcamperfurt.github.io
