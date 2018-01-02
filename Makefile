build:
	 ./node_modules/.bin/bsb -clean-world -make-world -backend native

test: build
	./lib/bs/native/parsertest.native
