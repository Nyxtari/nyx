setup:
	@echo "Setting up your development environment..."
	@echo "Installing Git hooks, enabling commit linting and fetching submodules..."
	@./scripts/pre-commit.sh > /dev/null 2>&1 || echo "Failed to set up pre-commit."
	@./scripts/commit-msg.sh > /dev/null 2>&1 || echo "Failed to set up commit-msg hook."
	@./scripts/fetch-submodules.sh || echo "Failed to fetch submodules."
	@echo "Development environment is ready."

sb-update:
	@./scripts/fetch-submodules.sh