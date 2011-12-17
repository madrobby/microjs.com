compile: deps
	@./build

deps:
	@npm install --dev

deploy: compile
	scp index.html microjs:/home/madrobby/htdocs/microjs.com/index.html
	scp data-min.js microjs:/home/madrobby/htdocs/microjs.com/data-min.js
	scp data.js microjs:/home/madrobby/htdocs/microjs.com/data.js
