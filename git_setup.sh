echo "Type in your user name: "
read userName


echo "Type in your email: "
read email

git config --global user.email $email
git config --global user.name  $userName

git add .
git commit --message "My identity for @huutri in the gitconfig"
git push origin master


git remote add origin https://github.com/huutri148/dotfile.git

echo "👌 Awesome, all set"



