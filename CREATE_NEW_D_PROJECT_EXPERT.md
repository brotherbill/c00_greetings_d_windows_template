# README_EXPERT.md
---

This guide is for experienced developers setting up D projects on Windows using this template.

## Common Windows Issues

## Alternative: Develop in Ubuntu VM
Instructions are provided for setting up an Ubuntu VM. Developing in Linux avoids many Windows-specific issues with D and offers a more consistent experience.

## Project Setup
> **Note:** Each step starts with a `cd` command to ensure you are in the correct directory. If you are following the steps in order, the `cd` may be redundant—it's included for safety in case you skip around or repeat steps out of sequence.
1. Install VS Code, DMD, and the `code-d` extension.
2. Clone the template:
   ```powershell
   cd C:\dev\d\

   git clone https://github.com/brotherbill/c00_greetings_d_windows_template

   cd C:\dev\d\c00_greetings_d_windows_template
   ```
   - Do not edit, delete, or move `c00_greetings_d_windows_template` (required for scaffolding).
3. Run setup script:
   ```powershell
   cd C:\dev\d\c00_greetings_d_windows_template

   ./setup_new_d_project_global.ps1
   ```
4. Create and open a new project in VS Code:
   
   For example, to create a project named `chess_master_2525`:
   
   ```powershell
   cd C:\dev\d\

   new_d_project -name chess_master_2525 -description "A chess engine and GUI"

   cd C:\dev\d\chess_master_2525

   code .
   ```

   This will:
   - Create a new folder called `chess_master_2525` in `C:\dev\d\`
   - Set up all the files for your new D project
   - Open the project in VS Code, ready for you to start coding

   Replace `chess_master_2525` and the description with your own project name and summary as needed.

## Running and Debugging
1. Open the new project folder in VS Code.
2. Open `source/app.d`.
3. Set a breakpoint as needed.
4. Press F5 to launch in debug mode. Use F10 to step over lines.
5. Continue debugging as required.

For full details and troubleshooting, see FROM_SCRATCH_EXPERT.md or FROM_SCRATCH_BEGINNER.md.
