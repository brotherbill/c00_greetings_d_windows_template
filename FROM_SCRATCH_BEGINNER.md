> These instructions assume a fresh Windows 11 install, but they also work on systems with existing tools.

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

1. **Download and install Visual Studio Code**
   Visit <https://code.visualstudio.com/>, click the download button, and run the installer. Accept the default options. Optionally, select "Create a desktop icon" to easily open VS Code by double-clicking it.
   
   After installing VS Code, open it and install the "C/C++" extension by Microsoft:
   - Press Ctrl+Shift+X to open Extensions.
   - In the search box, type `C/C++`.
   - Find the extension by Microsoft and click Install.
   - If prompted to try a pre-release version, choose "No"—the stable version is recommended and fully supported.

When finished, close VS Code.

   > *Beginner Tip:* During installation, you may check "Create a desktop icon" to make it easier to open VS Code later.  
   > *Beginner Tip:* On completing the VS Code Setup wizard, you may uncheck "Launch Visual Studio Code"—it isn't needed for the next step.  
   > *Beginner Tip:* Visual Studio Code (VS Code) is a free code editor. It's safe to install and is used by millions of developers.

2. **Install Visual Studio 2026**
   If you do not already have Visual Studio 2026 installed, you may need it for D development tools and libraries.

   1. Download the Visual Studio 2026 installer from the official Microsoft website.
   2. Accept all default options in the Visual Studio installer.
   3. If you see a step with an "Install" button, click Install.
   4. If you see a dialog asking "Do you want to continue without workloads?", click Continue. You do not need to select or install any workloads for D development.
   5. Wait for the installation to finish. You do not need to launch Visual Studio when done.
   6. When the Visual Studio Installer completes, you will see a window titled "Visual Studio Installer" with "Visual Studio Community 2016" displayed. Close this window by clicking the X in the title bar (top right corner).
   > *Note:* You do not need to launch Visual Studio itself—just close the installer window when finished.
   > *Note:* Installing Visual Studio may take several minutes. Please be patient while the installation completes.

3. **Install DMD D Compiler**
   Visit <https://dlang.org>, click "Download Windows Installer," and follow the prompts. During installation:
   - Accept all default options,—just keep clicking Next, except for "Choose Visual Studio Installation".
   - For wizard step: "Choose Visual Studio Installation", select the last option: "Do nothing"
   - At the end of the D installation, you will see a final wizard step titled "Completing D Programming Language Setup." Click Finish to close the installer.
   - When you are done downloading the installer, you may close the browser page with the dlang.org website.
   > *Beginner Tip:* If you see a warning about the download, refer to the "Handling Download Warnings for the D Installer" section above for step-by-step instructions.
   > *Beginner Tip:* Once the download is complete, open the downloaded file to start the installer. Windows will likely show a dialog: "Do you want to allow this app from an unknown publisher to make changes to your device?" This is normal for D—click Yes to continue with the installation.
   > *Beginner Tip:* The DMD compiler lets your computer understand and run D programs.
4. **Install code-d Extension**
   Open VS Code. Press Ctrl+Shift+X to open Extensions. Search for `code-d` by WebFreak and click Install.  Close VS Code.
   >     *Beginner Tip:* Extensions add new features to VS Code. `code-d` helps you write and debug D code easily.
   >     *Beginner Tip:* After opening VS Code, you can optionally make it full screen (click the square icon in the top right or press F11) for a better editing experience.
   >     *Beginner Tip:* In the Extensions view, type `code-d` into the textbox just below the "EXTENSIONS: MARKETPLACE" label. The first item in the list should be "D Programming Language (code-d)". Click Install next to it.
   >     *Beginner Tip:* If prompted, click the "Trust Publishers & Install" button to continue installing the extension.
   >     **Note:** You may see a "Reinstall serve-d" notification in VS Code. It is not needed—just close the notification.  If prompted to change compilers, just close the notification.


5. **Choose Project Folder**
   In File Explorer, create the full folder path where you want to store your D projects (for example, `C:\dev\d`). If any part of the path (such as `C:\dev` or `C:\dev\d`) does not exist, create it now. At the end of this step, the entire `C:\dev\d` path should exist, even if some parts already existed before. Close File Explorer. It will be easier to follow this course if you store your D projects there.

   > *Beginner Tip:* To create a new folder, right-click and choose "New > Folder." If a parent folder (like `C:\dev`) does not exist, create it first, then create `d` inside it.

6. **Clone Project Template**
   In VS Code, 

   1. select `Terminal > New Terminal` in the top menu."  

   > *Beginner Tip:* The terminal is where you type commands for your computer to run.

   2. **Download the project template:**  
      1. In the terminal, run: `git --version`
         If you get error messages, then 
         1. Install Git from <https://git-scm.com>
         2. On Completed page, uncheck: View Release Notes, then click Finish. Close browser.
         3. Close VS Code
         4. Open VS Code
         5. Open Terminal 
            1. Run `git --version`  You should see its version number.

      2. Run: `cd C:\dev\d`  This ensures that this folder will be the parent of our new project.
      3. Run: `git clone https://github.com/brotherbill/c00_greetings_d_windows_template`
         This will create a folder called `c00_greetings_d_windows_template` in your chosen location.  

      4. Run: `cd ./c00_greetings_d_windows_template`  
      5. Open the folder `C:\dev\d\c00_greetings_d_windows_template` in VS Code.

   > **Do not edit or delete `c00_greetings_d_windows_template`—this is a template for new D projects. Always create a new project before making changes.**

7. **Set Up Project Creation Script**
   
   1. In the terminal, run:
      `Get-ExecutionPolicy -List`  
      If CurrentUser is `Undefined`, run: (Answer: [Y] for Yes)
           `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`
   
   2. `.\setup_new_d_project_global.ps1`  (You may omit the `.ps1` extension)
      Press Enter. This makes the `new_d_project` script available to just you, everywhere on your computer.  
   
   3. Close VS Code.
   

8. **Create a New D Project**

   1. Open the Terminal (Windows key, then type "terminal" or use VS Code's Terminal > New Terminal).
   2. In the terminal, run:
      ```powershell
      cd C:\dev\d
      new_d_project -name tic_tac_toe_project -description "this plays tic-tac-toe against one player"
      ```
      Press Enter. This will create a new folder for your project and populate it with minimal D project files.
   3. Close Terminal.


9. **Open and Debug**

   Open VS Code, then open the new project folder (e.g., `C:\dev\d\tic_tac_toe_project`). Open `source/app.d`. Click the margin next to a line to set a breakpoint (a red dot will appear). Press F5 to start debugging. When the program stops at the breakpoint, press F10 to step through your code.

   > *Beginner Tip:* Breakpoints let you pause your program and see what it’s doing. F5 starts or continues, F10 steps one line.

Congratulations! You are now ready to start learning and building D projects on Windows.

> **Sidebar:**  
> This method gives you full F5 debugging and uses the VS Code Terminal as your Console. It avoids manual file copying and makes new D project setup quick and reliable—just one command for a ready-to-debug project.
> 
> **Beginner Tip:** If you get stuck, try searching for the error message online, or ask a classmate or instructor for help. Everyone needs help sometimes!
