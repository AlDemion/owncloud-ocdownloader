-include env
NAMESPACE := aldemion
SHA := $(shell git rev-parse --short HEAD)
timestamp := $(shell date +"%Y%m%d%H%M")


.PHONY: echo build run stop start rmf rmi

echo:
	@echo "You can run 'build' to build image from the scratch"
	@echo ""
	@echo "Or you can copy 'env.template' to your 'env' and "
	@echo "change variables to values suitable for your system"


build:
	docker rmi -f $(NAMESPACE)/$(IMAGENAME):bak || true
	docker tag $(NAMESPACE)/$(IMAGENAME) $(NAMESPACE)/$(IMAGENAME):bak || true
	docker rmi -f $(NAMESPACE)/$(IMAGENAME) || true
	docker build -f $(DOCKERFILE) -t $(NAMESPACE)/$(IMAGENAME) .

rmi:
	docker rmi $(NAMESPACE)/$(IMAGENAME)
