# Original commands
run:
	go run main.go

compile: tailwindcss templ run 

vite: 
	pnpm run vite ./public 

watch:
	find . -name "*.templ" | entr -r make compile

test:
	go test -v ./... -count=1 

tailwindcss:
	pnpm run tailwindcss --config tailwind.config.js -i input.css -o ./public/static/css/styles.css

templ:
	~/go/bin/templ generate ./components

.PHONY: run compile vite watch test tailwindcss templ
