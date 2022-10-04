while read line
do
    echo "--------------------------"
    echo "Checking licenses for $line"
    if trivy image -q --security-checks license --license-full $line | grep forbidden
    then
        echo "Found forbidden License on image $line"
        exit 1
    else
        echo "Image $line pass"
    fi
done < images.txt

echo ""
echo ""
echo "-------------------------------"
echo "No forbidden licenses found"
exit 0