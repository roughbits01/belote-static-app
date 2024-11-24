echo "Cache busting"

# Save a date stamp string of numbers
TIMESTAMP=$(date +%s)

# Go to the folder where the project is exported to
cd /Users/marwen.azouzi/coinche/export || exit

# Remove the OLD renamed files from last time since Godot won't overwrite them.
rm index-*.*

# Rename all files to add the date stamp
for file in index.*
do
mv "$file" "${file/index/index-$TIMESTAMP}"
done

# Name the index.html file BACK to just index.html
mv index-${TIMESTAMP}.html index.html

# Replace all instances of index with index-TIMESTAMP in the index.html
sed -i -- "s/index/index-${TIMESTAMP}/g" index.html