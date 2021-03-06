all: Picture.java
	javac Picture.java && java Picture

run: Picture.java
	make && java Matrix && make png && echo "Saved as out.png"

clean: 
	rm *.class *.ppm *~

jpg: out.ppm
	java Picture; \
	convert out.ppm out.jpg

png: out.ppm
	java Picture; \
	convert out.ppm out.png

clean_images:
	rm *.jpg *.png
