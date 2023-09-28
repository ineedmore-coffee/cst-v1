# Running just make invokes the build goal.
.DEFAULT_GOAL := build

# Serves the site locally with jekyll serve, setting the baseurl to a blank string to make it work correctly with a local webserver.
test:
	bundle exec jekyll serve -b ""

# Builds the site to the docs/ directory so it can be automatically served by GitHub Pages
build:
	bundle exec jekyll build --destination docs/

# Ensures that make test works properly even if there is a file named test for whatever reason.
.PHONY: build test
