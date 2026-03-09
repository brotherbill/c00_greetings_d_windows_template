# FROM_SCRATCH_EXPERT.md

Quick, scriptable setup for D development on Windows 11 (for experienced users):

1. **Download and install Visual Studio Code**
   - https://code.visualstudio.com/ (defaults OK)
   - Install C/C++ extension (Microsoft)

2. **Install Visual Studio 2026**
   
   - Download from Microsoft, defaults OK
   - No workloads needed for D
   
3. **Install DMD D Compiler**
   - https://dlang.org (Windows installer)
   - On "Choose Visual Studio Installation", select "Do nothing"

4. **Install code-d Extension**
   - VS Code: Ctrl+Shift+X, search "code-d" (WebFreak)

5. **Create Project Folder**
   - e.g., `C:\dev\d` (ensure full path exists; create any missing part)

6. **Clone Project Template**
   ```powershell
   cd C:\dev\d
   git clone https://github.com/brotherbill/c00_greetings_d_windows_template
   cd c00_greetings_d_windows_template


   ```

7. **Set Up Project Creation Script**
   
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
   ./setup_new_d_project_global.ps1
   ```

8. **Create a New D Project**
   
   ```powershell
   new_d_project -name tic_tac_toe_project -description "this plays tic-tac-toe against one player"
   ```
   
   
   
9. **Open and Debug**
   - Open VS Code, open the new project folder
   - Set a breakpoint in `source/app.d`, F5 to debug, F10 to step

---

- No hand-holding, no screenshots
- All steps are scriptable and repeatable
- For troubleshooting, see FROM_SCRATCH_BEGINNER.md or search error messages
