add-upstream:
	git remote add upstream https://github.com/wowchemy/starter-hugo-academic.git

sync-repo:	
	git fetch upstream
	git checkout master
	git rebase upstream/master

push:
	git push -f origin master