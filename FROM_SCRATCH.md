

> **Sidebar:**  
> These instructions assume you have just factory reset your Windows 11 machine, so no prior resources are assumed. They will also work on a mature machine with existing tools.



# FROM_SCRATCH.md


1. Download and install Visual Studio Code: <https://code.visualstudio.com/>
2. Download and install the DMD D compiler from <https://dlang.org> by clicking "Download Windows Install" and accepting all default options.
3. Open VS Code, go to Extensions (Ctrl+Shift+X), search for and install `code-d` by WebFreak.
4. Navigate to the parent folder where you want your new project (e.g., `C:\dev\d`).
5. Open the VS Code Terminal (Terminal).
6. Clone the `hello_d_windows` repository by copying and pasting the following command into the terminal, then pressing Enter:  
	`git clone https://github.com/brotherbill/hello_d_windows`  
	(This will create the project at `C:\dev\d\hello_d_windows` if your current directory is `C:\dev\d`.)  
	**Do not edit or delete the `hello_d_windows` project/directory. It is required to easily create new projects with `np.ps1`.**
7. Run once to set up the `np` script so it is available anywhere:  
	`setup_np_global.ps1`
8. Create a new project:  
	`np -name my_next_d_project -description "description of my next d project"`


> **Sidebar:**  
> Unlike using `dub init`, this approach provides full F5 debugging support and uses the VS Code Terminal pane as the Console. It eliminates the tedium and errors of manually copying files between projects. With this method, you can easily create a new minimal D project that supports F5 debugging and writes to the Terminal pane with a single command.
