@echo off

git log --pretty=format:"Commit:%%Cred%%h%%Creset %%C(yellow)%%d%%Creset%%Cgreen(%%cr) %%C(bold blue)<%%an>%%Creset %%s" --abbrev-commit -n%1
