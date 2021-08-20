for ((i=1;i<10000;i++))
do   
     touch ./1/{$i}_oldboy.html;
     echo `expr $i+$i` >> ./1/{$i}_oldboy.html;
     git add .;
     #git commit --date="May $i%30 ($i%24):($i%60):($i%60) 2021 +0800" -am "test $i";
     
     export GIT_COMMITTER_DATE="Sat Aug 21 01:14:19 2021 +0800"
     export GIT_AUTHOR_DATE="Sat Aug 21 01:14:19 2021 +0800"
     git commit --allow-empty --no-gpg-sign -m "shit push"
     git push --force -u origin master;
done
