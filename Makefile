run2:
	nim c -r ./src/main.nim
run:
	nimble build && ./bin/main
test:
	nimble test