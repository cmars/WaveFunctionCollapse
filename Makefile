
CSC=mcs

.PHONY: all
all: wfc.exe

install: wfc.exe
	cp wfc.exe $(DESTDIR)/wfc.exe

wfc.exe:
	$(CSC) /reference:System.Drawing.dll *.cs /out:$@

.PHONY: clean
clean:
	$(RM) wfc.exe

