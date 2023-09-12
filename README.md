# Shell Logger Test

This repository will serve as a test for the shell logger. Follow the instructions below to participate in the test!

First, ensure your system meets the [tech requirement](#tech-requirements). Next, follow the instructions in [getting started](#getting-started). After that, you may begin to [complete the tasks](#completing-the-tasks). Finally, upon finishing all the tasks, or the test time being completed, follow the instructions for [finishing the test](#finishing-the-test), where you will be sharing the produced log files with the researchers. If at any point you encounter issues, compress this entire folder and contact the researchers, following the instructions in the [contact section of this document](#contact).

Need help remembering some commands? See the [command help](#command-help) section.


## Tech Requirements

First, ensure that the shell you are using is either Bash or ZShell. If you're on Windows, ensure that you're using Cygwin, Git+Bash, WSL, or some other tool that will provide you with a Bash/Zsh shell. `Powershell` and `cmd.exe` are not supported, as well as other shells such as Fish or Dash. If you're on Linux or MacOS, you *should* be good to go.

To ensure that you're shell is supported, enter `echo $SHELL` in your command prompt. If this operation succeeds and outputs a string that ends with `bash` or `zsh`, you're good to go.

Additionally, Git is required to install this. If Git is not installed and this logger test is downloaded through some other means, there is no guarantee that this logger will work due to associated dependencies that come bundled with Git, such as `perl`.


## Getting Started

Whenever a *new* shell is started, navigate to this directory, and run the command `source start-logger.sh`. This will start up a new logger session in your current interactive shell.

**NOTE: This previous command must be run every time a new shell is started.** This includes spawning a second shell by running the `bash` or `zsh` command, or opening a second window. Full installations of this tool will have a permanent way to ensure this tool launches automatically whenever a new shell starts; due to this test being temporary, we are not doing that at this time. 

After doing running the `source start-logger.sh` command, you are good to begin/resume the tasks. See instructions below for the various tests you will be asked to complete during this test of the shell logger tool.


## Completing The Tasks
There are a few tasks for you to complete contained in the task directories. These tasks directories follow the naming convention of starting with `task` and then a number, indicating the expected order to complete the tasks. 

Each of the `task` directories have a `README.md` file with instructions for that task. Feel free to `cat` this file or open it in another text editor to read, such as `vim`, `nano`, `less`, or a graphical text editor like VSCode. You will want to reference this file a few times as you complete all the tasks. If you use a graphical text editor, like VSCode, please note that in the `NOTES.md` and try to refrain from editing or viewing any task files, aside from `README.md`, with the graphical editor.

When you complete a task, execute the file `./done.sh`, contained in the task directory. This *may* produce a message if the task was not fully completed, but ultimately this is just a way for me to note when you finish a task.  

Some of these directories will have additional files for you to utilize during the tasks. Interpret the instructions to the best of your ability; these tasks are not graded. (;



## Finishing The Test
Upon finishing the test, either by finishing all the tasks or running out of time, run the command `source zip-logs.sh` from within this research directory. This will produce a new file, `shell-logs.zip` or `shell-logs.tgz` that should be emailed to the researchers at [jaxton.winder@usu.edu](mailto:jaxton.winder@usu.edu). Please also attach the [`NOTES.md`](./NOTES.md) file

**ADDITIONALLY**, it would be appreciated if you share this entire research directory with the researchers. Compress the `fa23-research-test-shell-logger` in it's entirety and email it to the researchers at [jaxton.winder@usu.edu](mailto:jaxton.winder@usu.edu). This is not required, but would be appreciated to help us in verifying this tools validity.


## Contact
Encountered an issue with the test? Contact [jaxton.winder@usu.edu](mailto:jaxton.winder@usu.edu) and explain the issue. If possible, compress this entire directory and attach it in your email to aide the researchers in diagnosing the issue.

## Command Help
Forgot some shell commands? Here's a few that might come in handy!

*   `man`
    *   Look at the `man` page for a command, to find out more information about it
    *   EX: `man ls` to view more about the `ls` command
*   `cd`
    *   Change directories
*   `ls`
    *   List the contents of a directory
