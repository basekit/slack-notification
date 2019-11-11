# -------------
# VARIABLES
# -------------

# -------------
# FUNCTIONS
# -------------


# -------------
# TASKS
# -------------
.PHONY: fmt
fmt:
	@gofmt -w -s -d command/notifier
	@gofmt -w -s -d configuration
	@gofmt -w -s -d internal

.PHONY: test-build
test-build: fmt
	@go build

.PHONY: build
build:
	@cp LICENSE README.md build/slack-notification
	@docker build --tag slack-notification build/slack-notification