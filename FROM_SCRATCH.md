
> **Sidebar:**
> This document assumes that you just factory reset your Windows 11 machine, so no assumptions are made about any additional resources. Of course, these instructions will also work on a mature machine loaded with resources.



# FROM_SCRATCH.md

1. Download and install Visual Studio Code: https://code.visualstudio.com/
2. Download and install the DMD D compiler from https://dlang.org by clicking the "Download Windows Install" button and accepting all default options.
3. Open VS Code, go to Extensions (Ctrl+Shift+X), search for and install `code-d` by WebFreak.
4. Navigate to the parent folder of your new project (e.g., `C:\dev\d`).
5. Open the VS Code Terminal (Terminal).
6. Clone the `hello_d_windows` repository by copying the following command, pasting it into the terminal, and pressing Enter:
	`git clone https://github.com/brotherbill/hello_d_windows`
	(This will create the project at `C:\dev\d\hello_d_windows` if your current directory is `C:\dev\d`)
	**Do not edit or delete the `hello_d_windows` project/directory. It is required to easily create new projects with np.ps1.**
7. Run once to setup `np` script, so it is available anywhere you want to add a new D project:
	`setup_np_global.ps1`
8. Run: `np -name my_next_d_project -description "description of my next d project"`

> **Sidebar:**
> This approach differs from the book "Programming in D" by providing full F5 debugging support on Windows 11 and eliminating the tedium and errors of manually copying files between projects. With this method, you can easily create a new minimal D project that supports F5 debugging and writes to the Terminal pane with a single command.
