SRC_DIR = src
OUTPUT_DIR = tmp
BASENAME = eccb2006
MAINTEX = ${BASENAME}.tex
INPUT = ${MAINTEX}
DVI_FILE = ${OUTPUT_DIR}/${BASENAME}.dvi
PDF_FILE = ${OUTPUT_DIR}/${BASENAME}.pdf

.PHONY: ${DVI_FILE}

dvi: ${DVI_FILE}

pdf: ${PDF_FILE}

${DVI_FILE}: ${OUTPUT_DIR}
	cd ${SRC_DIR}; latex -output-directory=../${OUTPUT_DIR} ${INPUT}

${PDF_FILE}: ${DVI_FILE}
	dvipdfm -o $@ $^

${OUTPUT_DIR}:
	mkdir -p ${OUTPUT_DIR}

clean:
	rm -r -f ${OUTPUT_DIR}/*
