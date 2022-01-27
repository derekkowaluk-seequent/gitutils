# gitutils
## a repo of nice to have git tools for Geostudio Development

#### Installation

1. install python > 3.7
2. clone repo to a folder to live: eg d:\DATA\git\gitutils
3. add folder to path
4. add environment variable EDITOR with path to your favourite editor.


#### The Tools:

## opath <scriptname>

##### opens items in the path in your editor

#### Examples
    opath opath      // you don't need to specify ".bat"
  
    opath pull3d
    
    
## bdiffs <option>

##### lists the changed files in your files (from main)

#### Examples
    bdiff         // just lists the files
  
    bdiffs e      // opens in EDITOR
    
    bdiffs v      // opens files in Visual Studio
    
    bdiffs s      // opens files in sublime
    
    
## fcd 

##### searchs forward into directories for matching fragments and changes working directory to first match

#### Examples
![image](https://user-images.githubusercontent.com/90342284/151314414-b40d4643-1f74-446c-8695-8a0fb6b0bc13.png)
