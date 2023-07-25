# Running just make invokes the test goal.
.DEFAULT_GOAL := test

# Serves the site locally with jekyll serve, setting the baseurl to a blank string to make it work correctly with a local webserver.
test:
	bundle exec jekyll serve -b ""

# Ensures that make test works properly even if there is a file named test for whatever reason.
.PHONY: test
