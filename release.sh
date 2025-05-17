# cp ../godot-export/* .
bash cache-buster.sh
git add .
git commit -m "release"
git push