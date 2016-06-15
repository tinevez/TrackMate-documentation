all: trackmate 

trackmate:
	./convert_to_tex.py TrackMateDocumentation.wtex TrackMateDocumentation.tex
	pdflatex TrackMateDocumentation.tex
	./convert_to_wiki.py TrackMateDocumentation.wtex TrackMateDocumentation.txt

clean:
	rm *.aux *.log *.out *.toc
	rm GettingStartedWithMaMuT.pdf GettingStartedWithMaMuT.tex GettingStartedWithMaMuT.txt

