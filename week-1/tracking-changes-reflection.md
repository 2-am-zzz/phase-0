# 1.5: Tracking Changes Reflection

## Questions

+ How does tracking and adding changes make developers' lives easier?
..+ By keeping records of what changes are made in software, it is easy for developers to bundle changes that are ready for review, to keep tabs on what progress has been made on what files, and the ability to revert changes that caused problems.
+ What is a commit?
..+ A **commit** is a set of related changes to a repository, on some specific branch of that repository.
+ What are the best practices for commit messages?
..+ Best practices inlude a short 50 character title summary, followed by detailed descriptions less than 72 characters per line. Blank lines separate the summary from the description, and messages are written grammatically in **imperative form**.
+ What does the HEAD^ argument mean?
..+ **HEAD^** indicates the last commit made since the current HEAD commit.
+ What are the 3 stages of a git change and how do you move a file from one stage to the other?
..+ One stage is **Untracked files**, new files that aren't currently tracked by the git system. Another stage is **changes not staged for commit**. To get from both of these stages to the stage **changes to be commited**, one uses the **git add** command. To move files and directories from  the commit stage to their previous state, use the command **git reset HEAD** or, if you'd like to keep your changes while reverting their 'status', use **git reset --soft HEAD^**.
+ Write a handy cheatsheet of the commands you need to commit your changes
..+ Assuming you have already made your development branch with **git checkout -b [branchname]** and have made all of your changes to be committed:
..0. **git checkout master; git pull origin master; git checkout [devbranchname]; git merge master** this preliminary set of commands makes sure that your development branch is up to date with the master branch.
..1. **git add [filename]** to add your files, or **git add -A** to add everything.
..2. **git commit -m [message]** creates a commit and its description.
+ What is a pull request and how do you create and merge one?
..+ If you're ready to ask for a pull request, **git push origin [devbranchname]** will push your changes to GitHub's repository, where you can either repeat the above or request for the master branch to pull the changes from the dev branch. This is called a **pull request**. After this command is executed, pull requests can be reviewed and merged into the master branch from the GitHub interface.
+ Why are pull requests preferred when working with teams?
..+ Pull requests are important for monitoring changes to the master branch. Since so many people are working on different or the same features, maintaining that the master branch is always a working copy and a reference copy is crucial. Pull requests allow the team to verify that the changes made from the dev branch are ready to be merged with the master branch.