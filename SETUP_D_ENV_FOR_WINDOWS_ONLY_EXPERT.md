# SETUP_D_ENV_FOR_WINDOWS_ONLY_EXPERT.md
---
Concise, scriptable setup for D development on Windows 11 (for experienced users):

1. **Install Visual Studio Code**
   - https://code.visualstudio.com/ (defaults OK)
   - Install C/C++ extension (Microsoft)

2. **Install Visual Studio 2026**
   - https://visualstudio.microsoft.com/vs/community/
   - Defaults OK, no workloads needed for D

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
   
   cd C:\dev\d\c00_greetings_d_windows_template
   ./setup_new_d_project_global.ps1
   ```
   
8. **Create a New D Project**
   ```powershell
   cd C:\dev\d
   
   new_d_project -name tic_tac_toe -description "this plays tic-tac-toe with two players, one player, or zero players. (See War Games movie, 1983)"
   ```
   
9. **Open and Debug**
   
   - Open VS Code, open the new `C:\dev\d\tic_tac_toe` project folder
   - Open `source/app.d`, set a breakpoint, F5 to debug, F10 to step

---
- No hand-holding, no screenshots
- All steps are scriptable and repeatable
- For troubleshooting, see SETUP_D_ENV_FOR_WINDOWS_ONLY_BEGINNER.md or search error messages
