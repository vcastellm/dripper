.PHONY: all test clean

test:
	@script/test

help:
	@echo "usage: make <command>"
	@echo ""
	@echo "   test       Run tests"
	@echo ""
