.PHONY: loader payload clean

clean:
	rm mach_inject/main payload/payload

loader:
	xcrun clang mach_inject/main.m \
		-fobjc-arc -framework Foundation -framework Cocoa \
		-o mach_inject/main

payload:
	xcrun clang -bundle payload/payload.m \
		-fobjc-arc -framework Foundation \
		-o payload/payload

