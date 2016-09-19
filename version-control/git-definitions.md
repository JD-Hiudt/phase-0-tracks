# Git Definitions

**Define each of the following Git concepts.** 

* What is version control?  Why is it useful?
    - Version control keeps software systems consisting of many different versions and files clean and well organized.  
    - It's useful because it allows developers to view the entire history of revision made to a project/file, and merge appropriate changes made by different programmers.
* What is a branch and why would you use one?
    - creating a branch gives you a copy of the project your working on.  
    - It's important to work on the branch copy, instead of the master branch (which is automatically created when you create a git repository) because it allows you to work on additional features independently of the original project.  That way, the master is simply used when merging appropriate features to the overall project once you know you like them and they work.  Also, multiple developers can work independently on their own branches, and merge there changes to the master as well.
* What is a commit? What makes a good commit message?
    - A commit is used to create a save point for changes that have been made to a file to the git repository.  
    - A good commit message should be included, clearing stating what's been changed since the last commit. 
* What is a merge conflict?
    - a merge conflict happens when the computer is unsure which line of code to use, when those pieces of code are similar and exist on a similar line in the text editor.  When a merge conflict happens, you'll want to open the file in your text editor which will show both pieces of code intending to be merges, with some additional notations.  Simply format the code to read how you'd like the merged code to look, save, and commit the file with a message.


