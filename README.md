# gitutils
## a repo of nice to have git tools for Geostudio Development

#### Installation

1. install python > 3.7
2. clone repo to a folder to live: eg d:\DATA\git\gitutils
3. add folder to path
4. add environment variable EDITOR with path to your favourite editor.


#### The Tools:

## opath \<scriptname\>
### Open in Path
#####  &nbsp; &nbsp; opens items in the system path in your editor

#### Examples
    opath opath      // you don't need to specify ".bat"
  
    opath pull3d
    
    
## bdiffs \<option\>
### Branch Diffs
#####   &nbsp; &nbsp; lists the changed files in your branch compared to main

#### Examples
    bdiff         // just lists the files
  
    bdiffs e      // opens in EDITOR
    
    bdiffs v      // opens files in Visual Studio
    
    bdiffs s      // opens files in sublime
    
    
## fcd \<path_fragement\> \<..more path fragements\>
### Forward Change Directory
#####   &nbsp; &nbsp;searches forward into directories for matching fragments and changes working directory to first match

#### Examples
![image](https://user-images.githubusercontent.com/90342284/151314414-b40d4643-1f74-446c-8695-8a0fb6b0bc13.png)

## rb
### Remote Branches
#####   &nbsp; &nbsp; lists remote branchs by age
#### Example
    rb           // has no options
![image](https://user-images.githubusercontent.com/90342284/151432852-4e419880-524e-43d1-a77a-f8beb59a3e03.png)
