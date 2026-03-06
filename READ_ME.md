## Making `npw` Globally Available


To use `npw` from any folder in your terminal:

1. Open your Terminal (PowerShell).
2. Copy and paste the following command, then run it:

  ```powershell
  powershell -File .\setup_npw_global.ps1
  ```

This will:
- Copy `npw.ps1` to a user scripts directory (e.g., `C:\Users\YourName\scripts`)
- Create a wrapper `npw.cmd` for easy calling
- Add the scripts directory to your user PATH if needed

After running the setup, you can simply call:

```
npw -name my_new_project -description "My new D project for Windows"
```

from any folder, and a new project will be created as a subfolder.
# How to Build, Run, and Debug This D Project

## 1. Build and Run from the Terminal

Open the VS Code Terminal (View > Terminal).
- To build the project:
  - `dub build`
- To run the project:
  - `dub run`
- The output will appear in the terminal pane.

## 2. Clean Build Artifacts

- To remove generated .exe and .pdb files, run the VS Code task:
  - Press Ctrl+Shift+P, type `Run Task`, and select `clean`.
S
## 3. Debug with F5 in VS Code

- Set a breakpoint:
  - Click to the left of a line number in `source/app.d` (a red dot will appear).
- Press F5 or go to Run > Start Debugging.
- If prompted, select `Debug D project`.
- The program will start under the debugger and stop at your breakpoint.
- You can step through code, inspect variables, and view output in the terminal pane.


## Limitations of Programming in D on Windows

1. **Console Buffering:**
  - Using `write("I'm hiding");` will not buffer as expected on Windows. Output is eagerly flushed to the console, even without a newline or explicit flush. This is a limitation of the Windows console and D runtime on Windows.

2. **Linking with std.random:**
  - On Windows, linking with `std.random` may fail due to a known issue with the DMD toolchain. There is a workaround, which will be explained when you reach a lesson that uses random numbers.

3. **Compiler Accessibility:**
  - The DMD compiler is easily accessible. The GDC and LDC compilers are more challenging to add to the project, and are outside the scope of this course for the Windows environment.
