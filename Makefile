build:
	@rm -rf ../barcamperfurt.github.io
	@wintersmith build

deploy:
	@git config --global user.email "$GIT_EMAIL"
	@git config --global user.name "$GIT_NAME"
	@cd ../barcamperfurt.github.io && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:barcamperfurt/barcamperfurt.github.io.git" master:master --force && rm -rf .git
	@rm -rf ../barcamperfurt.github.io