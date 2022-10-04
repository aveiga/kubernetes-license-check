#!/bin/bash
mkdir -p sbom

while read line
do
    echo "--------------------------"
    echo "Generating SBOM for $line"
    trivy image --format cyclonedx --output sbom/$line.json $line
done < images.txt

echo ""
echo ""
echo "-------------------------------"
echo "No forbidden licenses found"
exit 0