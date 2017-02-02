#DOMAIN ?= cabacos.org
#DOCROOT ?= www/cabacos.org

default: build

test: source
	jekyll serve --source source --destination build

build: source
	jekyll build --source source --destination build

docker-build: source
	docker build -t cabacos .
	docker run --rm -v $$PWD/source:/root/cabacos/source -v $$PWD/build:/root/cabacos/build cabacos jekyll build --source source --destination build

deploy: build
	#rsync -rv --delete build/ $(DOMAIN):$(DOCROOT)/
	echo NO DEPLOY POSSIBLE: Cabacos has no online domain, yet.
