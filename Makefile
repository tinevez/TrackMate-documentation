all: mamut registration

mamut:
	./convert_to_tex.py GettingStartedWithMaMuT.wtex GettingStartedWithMaMuT.tex
	pdflatex GettingStartedWithMaMuT.tex
	./convert_to_wiki.py GettingStartedWithMaMuT.wtex GettingStartedWithMaMuT.txt

registration:
	./convert_to_tex.py RegistrationOfMultiViewImages.wtex RegistrationOfMultiViewImages.tex
	pdflatex RegistrationOfMultiViewImages.tex
	./convert_to_wiki.py RegistrationOfMultiViewImages.wtex RegistrationOfMultiViewImages.txt

clean:
	rm *.aux *.log *.out *.toc
	rm GettingStartedWithMaMuT.pdf GettingStartedWithMaMuT.tex GettingStartedWithMaMuT.txt

