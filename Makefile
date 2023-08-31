css:
	yarn run build:css

www:
	bundle exec jekyll build

_includes/favicon.ico.base64: favicon.ico
	base64 --wrap=0 $< > $@

dev:
	tmux \
		new-session 'bundle exec jekyll serve --force_polling --livereload' \; \
		split-window 'yarn run build:css --watch --verbose'
