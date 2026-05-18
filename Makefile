setup:
	@echo "Setting up your development environment..."
	@echo "Installing Git hooks, enabling commit linting and fetching submodules..."
	@./scripts/fetch-submodules.sh || echo "Failed to fetch submodules."
	@echo "Development environment is ready."

sb-update:
	@./scripts/fetch-submodules.sh