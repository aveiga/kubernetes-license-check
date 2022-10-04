list-images: 
	./images.sh

sbom: list-images
	./sbom.sh
	./cleanup.sh

check: list-images
	./check.sh
	./cleanup.sh