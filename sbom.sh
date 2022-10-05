#!/bin/sh

rm -rf sbom
mkdir -p sbom

COUNT=1

while read line
do
    echo "--------------------------"
    echo "Generating SBOM for $line"
    trivy image -q --format cyclonedx --output sbom/$COUNT.json $line
    COUNT=`expr $COUNT + 1`
done < images.txt

echo ""
echo ""
echo "-------------------------------"
echo "All SBOMs generated"
exit 0