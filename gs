# To reduce pdf file size
# So convert from ImageMagick will produce rasterized PDF and 
# many people would be interested in keeping vector graphic and text untouched
# so only embedded images are compressed.
# So good alternative to making compression is using gs from package ghostscript example of usage:
 
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=out.pdf in.pdf
in above command parameter: -dPDFSETTINGS=/ebook is important. It can have 3 values:
-dPDFSETTINGS=/screen   (screen-view-only quality, 72 dpi images) -dPDFSETTINGS=/ebook    (low quality, 150 dpi images) -dPDFSETTINGS=/printer  (high quality, 300 dpi images) -dPDFSETTINGS=/prepress (high quality, color preserving, 300 dpi imgs) -dPDFSETTINGS=/default  (almost identical to /screen)

