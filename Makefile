all: trackmate

trackmate:
	./convert_to_tex.py TrackMateDocumentation.wtex TrackMateDocumentation.tex
	./convert_to_tex.py Part_1_Tutorials.wtex Part_1_Tutorials.tex
	./convert_to_tex.py Part_2_TechnicalDocumentation.wtex Part_2_TechnicalDocumentation.tex
	./convert_to_tex.py Part_3_Interoperability.wtex Part_3_Interoperability.tex
	./convert_to_tex.py Part_4_ExtendingTrackMate.wtex Part_4_ExtendingTrackMate.tex
	pdflatex TrackMateDocumentation.tex
	./convert_to_wiki.py TrackMateDocumentation.wtex TrackMateDocumentation.txt

part1: tutorials
tutorials:
	./convert_to_tex.py Part_1_Tutorials.wtex Part_1_Tutorials.tex
	pdflatex Part_1_Tutorials.tex
	./convert_to_wiki.py Part_1_Tutorials.wtex Part_1_Tutorials.txt

part2: technical
technical:
	./convert_to_tex.py Part_2_TechnicalDocumentation.wtex Part_2_TechnicalDocumentation.tex
	pdflatex Part_2_TechnicalDocumentation.tex
	./convert_to_wiki.py Part_2_TechnicalDocumentation.wtex Part_2_TechnicalDocumentation.txt

part3: interop
interop:
	./convert_to_tex.py Part_3_Interoperability.wtex Part_3_Interoperability.tex
	pdflatex Part_3_Interoperability.tex
	./convert_to_wiki.py Part_3_Interoperability.wtex Part_3_Interoperability.txt

part4: extending
extending:
	./convert_to_tex.py Part_4_ExtendingTrackMate.wtex Part_4_ExtendingTrackMate.tex
	pdflatex Part_4_ExtendingTrackMate.tex
	./convert_to_wiki.py Part_4_ExtendingTrackMate.wtex Part_4_ExtendingTrackMate.txt

clean:
	rm -f *.aux *.log *.out *.toc
	rm -f TrackMateDocumentation.pdf TrackMateDocumentation.tex TrackMateDocumentation.txt
	rm -f Part_1_Tutorials.pdf Part_1_Tutorials.tex Part_1_Tutorials.txt
	rm -f Part_2_TechnicalDocumentation.pdf Part_2_TechnicalDocumentation.tex Part_2_TechnicalDocumentation.txt
	rm -f Part_3_Interoperability.pdf Part_3_Interoperability.tex Part_3_Interoperability.txt
	rm -f Part_4_ExtendingTrackMate.pdf Part_4_ExtendingTrackMate.tex Part_4_ExtendingTrackMate.txt

