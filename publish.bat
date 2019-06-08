call hexo g
call hexo d
call cd public
call git add .
call git commit -m "add new blog"
call git push origin master
call cd ..
call git add .
call git commit -m "add new blog"
call git push origin master