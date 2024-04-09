.DEFAULT_GOAL := all
.PHONY: all
all: amazon-shipping-sdk


.PHONY: amazon-shipping-sdk
amazon-shipping-sdk:
	brew install swagger-codegen
	mkdir -p ./amzn/
	@if [ ! -d "./selling-partner-api-models" ]; then git clone https://github.com/amzn/selling-partner-api-models.git; fi
	swagger-codegen generate -l python -i ./selling-partner-api-models/models/shipping-api-model/shippingV2.json -o ./amzn/ -c ./swagger_codegen_config.json
	@echo "FINISHED!"
	@echo "Install the package with the commmand \"pip install git+https://github.com/amazon-shipping-python-sdk/amazon-shipping-python-sdk.git@main#subdirectory=amzn\""

.PHONY: clean
clean:
	rm -rf amzn/ 