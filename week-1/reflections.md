# Relflections

## 1.1 Think About Time Reflection

I think an interesting focus of these pieces was that doing leads to motivation, rather than the other way around. Although i had heard about this concept before, it was more along the lines of: "Working without motivation to start is the way to maintain a routine habit. Don't rely on a spark of motivation to get your tasks done." I suppose it's the perspective that makes the idea seem different--one poses it as a reversal of cause-effect, while the other dictates that one isn't the trigger for the other.

Time Boxing is another idea I'd come across before, especially through the Pomodoro technique. Except here, the idea is emphasized that breaking a task into time segments to be evaluated at each segment. Other pieces in the research focused more on breaking down tasks to create a sense of progression and creating realistic short-term goals while also giving yourself a break. Again, it's a matter of perspective, as well as showing the multi-faceted benefits from using a single technique.

My own current strategy uses a combination of the idea that we make tasks reducible to ridiculously tiny goals that we can achieve and are easy to overshoot, condensed into the form of a checklist. Although effective some days, sometimes I don't feel like following the list or flake out on it entirely. This is because I use methods I don't evaluate and become stubborn in sticking to strategies that don't work. This strategy could be improved with the addition of time boxing and the concept of feedback. I hope to employ the Pomodoro technique to make doing my tasks both more attainable, more sustainable, and more iterative in improvement. However, in addition, every night I hope to reflect on my plan of attack, see what went right and what went wrong, and reform my time plans accordingly to improve on that. Finally, I hope to integrate the concept of 'blocking distractions', where instead of just resisting the temptation to visit a website during a work session, I instead write the distraction down on paper and move on. 

## 1.2 The Command Line Reflection

A **shell** is the interface by which users are able to access services provided by the operating system. Although most computer users use a **graphical user interface (GUI)** to use an OS, there exist **command-line interfaces (CLI)** that rely on a text interface and text commands. **Bash** is the most popular shell for Unix operating systems, such as Linux and OS X.

Although the shell is a powerful tool to use, it is also a formidable one. Although using a text interface isn't that hard for me personally, deciphering the manual (**man**) pages for each command is daunting. Oftentimes the descriptions use language and phrases that can be overwhelming at first, as well as the sheer number of flags/options available for each command. I was eventually able to use most of the commands for Windows Powershell and bash, but mastering and retaining them in memory will be an ongoing challenge in Phase 0 and beyond.

Of all the commands, the most important bar none has to be **cd**--without it, you can't move anywhere in the file directory. After that, knowing how to look at the current directory, **ls**, as well as making files and directories such as **mkdir** and **touch**, and finally previewing files using **less** and **cat** is part of the essential toolkit.

### Command Summary:
+ **pwd**
..+ **Print working directory** to the console.
+ **ls**
..+ **List** directory contents to the console
+ **mv**
..+ **Move** file from a source to a destination.
+ **cd [destination]**
..+ **Change directory** to destination
+ **../**
..+ Shorthand for moving one directory level up
+ **touch [filename]**
..+ Creates a empty file with filename. Originally used to change the access and modification times of a file.
+ **mkdir [directoryname]**
..+ **Makes a file directory** with directoryname in the present directory.
+ **less [filename]**
..+ Prints out the contents of a file named filename, one window's worth at a time.
+ **rmdir [directoryname]**
..+ **Removes the directory** called directoryname.
+ **rm [filename]**
..+ **Removes the file** called filename.
+ **help / man [command]**
..+ If called without any arguments, pulls a list of callable commands. If called with argument of command, pulls the manual page for that command.

## 1.4 Forking and Cloning Reflection

### How to Work with GitHub Repositories! Part 1
#### What you'll need:

+ [Git](https://git-scm.com/) installed on your computer
+ A [GitHub](https://github.com/) account
+ Chosen repositories you'd like to fork and/or clone.
+ SSH keys! Optional.

*To make future GitHub cloning, pushing, pulling, and what have you much more easier in the long-term, I highly recommend setting up **SSH keys** that link your computer to your GitHub account. The instructions to do so can be [found here](https://help.github.com/articles/generating-ssh-keys/).*

#### Creating a New Repository

1. Go to [https://github.com/](https://github.com/) and make sure that you're logged in.
2. To make a new repository, click the + sign in the top-right corner next to a bell and your avatar and click **New Repository** OR click the green button that says **+ New repository** in the section on the right sidebar called **Your repositories**
3. Under **Repository name**, put a descriptive title of the repository you'll be creating.
4. Under **Description**, write a quick one-sentence summary of the repo.
5. Given the choice between **Public** and **Private** repositories, set it to public for now. Public repositories on GitHub are free, whereas Private repositories are charged. Either way, public repositories are in the spirit of open-source code.
6. Be sure to check the box **Initialize this repository with a README** so that you can clone the repository later.
7. Choose a **license** that suits your tastes. For most projects, the top bolded 3--**Apache License 2.0**, **GNU General Public License v2.0**, and the **MIT License**--should suit your needs.
8. Press **Create repository** and voila! You have a fresh new repository ready to be cloned.

#### Forking a Repository

Forking repositories is basically like creating a copy of a repo for your own personal use and management. For example, if you'd like to contribute to a repo with some ideas, you'd fork the repo, make your contributions to that copy, and then ask for a pull request from the original repo and hope they take your changes. Another example might be that you want to take the project in a different direction. You fork the project and work on your changes there, without interfering with the workflow of the original repo. You'd fork a repo as opposed to make a new one when you want to take the product of one repo and build upon it, rather than say, copy the files over manually to an empty repository.

1. Go to [https://github.com/](https://github.com/) and make sure that you're logged in.
2. Navigate a repository page that you'd like to fork.
3. Under the bell/plus/avatar set in the upper right hand corner, are a set of three elements called **Watch, Star, and Fork**. You want to press Fork.
4. Choose an organization that you'd like to fork the repo to. Typically, you'd fork to your own personal account, which should be in the upper left corner of choices.
5. Voila! You've forked a repo, ready to be cloned!

#### Clone a Repository

1. Find a repository that you'd like to clone.
2. Look for a URL that's next to a label called HTTPS or SSH. It should be in the form of **https://github.com/[USERNAME]/[REPONAME]**
3. Note this URL down or copy it.
4. Open git bash.
5. Using git bash, navigate to the location you'd like to locally place your repository in your file directory.
6. Once there, type out the command **git clone [link]** where the **[link]** is the URL you copied earlier in step 2. If you have setup your SSH keys, using the SSH URL instead will save you the time of having to input your GitHub username and password.
7. Voila! You have cloned a repository which is now locally present on your host machine.
 

Personally, I had little trouble setting up git and GitHub since I have prior experience, but I will say that setting up SSH keys on a Windows machine can be a pain. It's completely worth it though if you can get it to work! I did learn a bit about branching though, since I haven't used that part of version control that much. I expect to branch a lot these next few weeks, both figuratively a git-a-tively! ^_^