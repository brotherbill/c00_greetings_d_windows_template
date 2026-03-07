> **Sidebar:**  
> These instructions assume a fresh Windows 11 install, but they also work on systems with existing tools.
> 
> **Beginner Tip:** If you are new to programming or Windows setup, take your time with each step. If something doesn't look right, don't worry—just double-check the instructions or ask for help. Every programmer starts as a beginner!

## Handling Download Warnings for the D Installer

> **Note:** D language is not downloaded as frequently as C, C++, or C#, so browsers and Windows may warn you about its installer. D is a safe, established language that has been around since 2007 and is widely used by developers.

When downloading the D installer, your browser or Windows may warn you that the file isn't commonly downloaded. If your download is blocked—even after following these instructions—you may need to temporarily disable your anti-virus software for 5–10 minutes (be sure to re-enable it immediately after the download completes). Here’s how to proceed safely in different browsers:

**Microsoft Edge:**  
- In the download bar or warning dialog, right-click the warning message and select "Keep" (or similar).  
- If you see a Delete button, click the dropdown arrow next to it and choose "Keep Anyway".  
- You may also need to open the Downloads list, find the blocked file, and choose "Keep" or "Recover malicious file".

**Google Chrome:**  
- In the download bar at the bottom, click the up-arrow next to the warning and select "Keep" or "Keep anyway".  
- If prompted, confirm you want to keep the file.

**Mozilla Firefox:**  
- In the download panel, click the warning icon next to the file and select "Allow Download" or "Open Containing Folder".  
- If blocked, right-click and choose "Unblock" or "Allow".

**Brave Browser:**  
- Brave may block uncommon downloads by default. Click the warning in the download bar and select "Keep" or "Allow Anyway".  
- You may need to open the Downloads panel and choose "Keep" for the blocked file.

**DuckDuckGo Browser:**  
- If a download is blocked, look for a warning or blocked download icon. Click it and select "Allow" or "Keep" if available.  
- You may need to check the Downloads list for additional unblock options.

**General:**  
- If Windows Defender SmartScreen blocks the installer, click "More info" and then "Run anyway".  
- Only proceed if you are certain the file is from the official D language website (<https://dlang.org>).

# FROM_SCRATCH_BEGINNER.md

Welcome! This guide will walk you through setting up your computer for D programming, step by step. No prior experience is required—just follow along and you'll be ready to write and debug D code in no time.

1. **Download and install Visual Studio Code:**  
   Go to <https://code.visualstudio.com/> and click the download button. Run the installer and accept all the default options.  
   > *Beginner Tip:* During installation, you may check "Create a desktop icon" to make it easier to open VS Code later.  
   > *Beginner Tip:* On completing the VS Code Setup wizard, you may uncheck "Launch Visual Studio Code"—it isn't needed for the next step.  
   > *Beginner Tip:* Visual Studio Code (VS Code) is a free code editor. It's safe to install and is used by millions of developers.
2. **Download and install the DMD D compiler:**  
   Visit <https://dlang.org>, click "Download Windows Installer," and follow the prompts. Accept all default options.  
   > *Beginner Tip:* If you see a warning about the download, refer to the "Handling Download Warnings for the D Installer" section above for step-by-step instructions.  
   > *Beginner Tip:* The DMD compiler lets your computer understand and run D programs.
3. **Install the D language extension in VS Code:**  
   Open VS Code. Press Ctrl+Shift+X to open Extensions. Search for `code-d` by WebFreak and click Install.  
   > *Beginner Tip:* Extensions add new features to VS Code. `code-d` helps you write and debug D code easily.
4. **Choose where to keep your D projects:**  
   In File Explorer, go to the folder where you want to store your D projects (for example, `C:\dev\d`).  
   > *Beginner Tip:* You can create a new folder if you want. Right-click and choose "New Folder."
5. **Open the VS Code Terminal:**  
   In VS Code, click "Terminal" in the top menu."  
   > *Beginner Tip:* The terminal is where you type commands for your computer to run.
6. **Download the project template:**  
   In the terminal, type:
   `git clone https://github.com/brotherbill/hello_d_windows`
   Press Enter. This will create a folder called `hello_d_windows` in your chosen location.  
   > *Beginner Tip:* If you see a message about git not being found, you may need to install Git from <https://git-scm.com/>.
   **Do not edit or delete `hello_d_windows`—it is needed for new project creation.**
7. **Set up the project creation script:**  
   In the terminal, type:
   `setup_np_global.ps1`
   Press Enter. This makes the `np` script available everywhere on your computer.  
   > *Beginner Tip:* If you get a security warning, right-click the script, choose "Run with PowerShell," or check your PowerShell execution policy.
8. **Create your first D project:**  
   In the terminal, type:
   `np -name my_next_d_project -description "description of my next d project"`
   Press Enter. This will create a new folder for your project.
9. **Open and debug your project:**  
   In VS Code, open the new project folder. Open `source/app.d`. Click the margin next to line 5 to set a breakpoint (a red dot will appear). Press F5 to start debugging. When the program stops at the breakpoint, press F10 to step and print "Greetings, D!" to the Terminal. Press F5 again to finish running the program.  
   > *Beginner Tip:* Breakpoints let you pause your program and see what it’s doing. F5 starts or continues, F10 steps one line.

Congratulations! You are now ready to start learning and building D projects on Windows.

> **Sidebar:**  
> This method gives you full F5 debugging and uses the VS Code Terminal as your Console. It avoids manual file copying and makes new D project setup quick and reliable—just one command for a ready-to-debug project.
> 
> **Beginner Tip:** If you get stuck, try searching for the error message online, or ask a classmate or instructor for help. Everyone needs help sometimes!
