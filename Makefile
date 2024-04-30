.DEFAULT_GOAL := all
.PHONY: all
all: amazon-shipping-sdk

.PHONY: env
env: .env
.env: requirements.txt requirements-dev.txt runtime.txt
	if [ -d .env ] && ( [ ! -e .env/bin/python ] || [ "$$(.env/bin/python --version)" != "$$(cat runtime.txt|tr -d ' \n\t'|sed 's/python-/Python /')" ] ); then rm -rf .env; fi && if [ ! -d .env ]; then export PYENV_VERSION="$$(sed s/python-// runtime.txt)" && pyenv install -s "$$PYENV_VERSION" && pyenv exec pip3 install --user virtualenv && (pyenv exec python3 -m virtualenv --python python"$$PYENV_VERSION" .env && .env/bin/pip install -r requirements-dev.txt && touch -m .env || (rm -rf .env; echo Failed.; exit 1)); else .env/bin/pip install -r requirements-dev.txt && touch -m .env; fi
	.env/bin/pip install -r requirements.txt

.PHONY: amazon-shipping-sdk
amazon-shipping-sdk: env 
	brew install swagger-codegen
	mkdir -p ./amzn/
	@if [ ! -d "./selling-partner-api-models" ]; then git clone https://github.com/amzn/selling-partner-api-models.git; fi
	swagger-codegen generate -l python -i ./selling-partner-api-models/models/shipping-api-model/shippingV2.json -o ./amzn/ -c ./swagger_codegen_config.json

	cp -r ./selling-partner-api-models/clients/sellingpartner-api-aa-python/{auth,spapi} ./amzn/amazon_shipping/

	touch ./amzn/amazon_shipping/{auth,spapi}/__init__.py
	
	.env/bin/pip-compile --output-file ./amzn/merged_requirements.txt ./amzn/requirements.txt ./selling-partner-api-models/clients/sellingpartner-api-aa-python/requirements.txt ./extra-requirements.txt
	mv ./amzn/merged_requirements.txt ./amzn/requirements.txt

	cp ./setup.py.copy ./amzn/setup.py

	# TODO: this sed command fails right now, this has to be done by hand 
	# replace all instances of "swagger_client" with "amazon_shipping" in python files 
	#for folder in auth spapi; do \
	#	cd "./amzn/amazon_shipping/$$folder"; \
	#	for file in *.py; do \
	#		sed -i 's/swagger_client/amazon_shipping/g' "$$file"; \
	#		sed -i '/sys\.path\.append/d' "$$file"; \
	#	done; \
	#	cd ../../..; \
	#done

	cp spapiclient.py.copy ./amzn/amazon_shipping/spapi/spapiclient.py
	cp LwaRequest.py.copy ./amzn/amazon_shipping/auth/LwaRequest.py

	@echo "FINISHED!"
	@echo "Please modify the files under ./amzn/amazon_shipping/auth and ./amzn/amazon_shipping/spapi to remove the sys.path.append lines and replace swagger_client with amazon_shipping in the import statements and remove sys.path"
	@echo "Install the package with the commmand \"pip install git+https://github.com/amazon-shipping-python-sdk/amazon-shipping-python-sdk.git@main#subdirectory=amzn\""

.PHONY: clean
clean:
	rm -rf amzn/ 
	rm -rf selling-partner-api-models/
	rm -rf merged_requirements.txt