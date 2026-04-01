#!/bin/bash -e

TEX=latex mpost -interaction=batchmode arch.mp end
mptopdf arch.mps
mv arch-mps.pdf arch.pdf
pdfcrop arch.pdf
rm -f arch.pdf
mv arch-crop.pdf arch.pdf


for i in 1 2 3; do
    pdflatex -interaction=batchmode  main.tex
done


zip -r main.zip main.tex arch.pdf
