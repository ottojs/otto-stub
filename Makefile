#!/usr/bin/make

# Default action if you just run "make"
.PHONY: all
all: clean install test

.PHONY: clean
clean:
	# Remove generated files
	rm -rf ./node_modules/ ./coverage/

.PHONY: install
install:
	# Install Node.js Modules
	npm install

.PHONY: test
test: delint unit integration

.PHONY: delint
delint:
	# Delint Files with JSHint
	./node_modules/jshint/bin/jshint \
		lib/ \
		test/

.PHONY: unit
unit:
	# Run unit tests with code coverage
	./node_modules/istanbul/lib/cli.js cover \
	./node_modules/mocha/bin/_mocha -- \
		--recursive \
		-R spec \
		test/unit/

.PHONY: integration
integration:
	# Run integration tests with code coverage
	./node_modules/istanbul/lib/cli.js cover \
	./node_modules/mocha/bin/_mocha -- \
		--recursive \
		-R spec \
		test/integration/

.PHONY: report
report:
	# Launching Code Coverage Report in Browser
	open ./coverage/lcov-report/index.html
