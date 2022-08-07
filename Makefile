GPPPARAMS = -m32
ASPARAMS = --32
%.o: %.cpp
	g++ $(GPPPARAMS) -o $@ -c $<
%.o: %.s
	as $(ASPARAMS) -o $@ $<

mykernel.bin: linker.ld $(objects)


