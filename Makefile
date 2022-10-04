all: collection.json env.json

collection.json: collection.jsonnet \
                 lib/get.domain.api.libsonnet \
                 lib/get.auth.token.libsonnet \
                 lib/get.locale.libsonnet \
                 lib/get.profile.lite.libsonnet
	jsonnet --output-file collection.json collection.jsonnet


env.json: env.jsonnet
	jsonnet --output-file env.json env.jsonnet 

test: all
	newman run --environment env.json collection.json
	
clean:
	rm -f collection.json env.json
