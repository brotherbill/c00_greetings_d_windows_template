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

## 3. Debug with F5 in VS Code

- Set a breakpoint:
  - Click to the left of a line number in `source/app.d` (a red dot will appear).
- Press F5 or go to Run > Start Debugging.
- If prompted, select `Debug D project`.
- The program will start under the debugger and stop at your breakpoint.
- You can step through code, inspect variables, and view output in the terminal pane.

---


## Limitations of Programming in D on Windows

1. **Console Buffering:**
  - Using `write("I'm hiding");` will not buffer as expected on Windows. Output is eagerly flushed to the console, even without a newline or explicit flush. This is a limitation of the Windows console and D runtime on Windows.

2. **Linking with std.random:**
  - On Windows, linking with `std.random` may fail due to a known issue with the DMD toolchain. There is a workaround, which will be explained when you reach a lesson that uses random numbers.

3. **Best Experience: Use Ubuntu in a VM:**
  - For a smoother D development experience, consider running Ubuntu in a Virtual Machine (VM) on your Windows PC. This allows D to work as intended, including proper console buffering and linking. See [hello_d_ubuntu setup guide](https://github.com/brotherbill/hello_d_ubuntu) for step-by-step instructions. Setting up the VM is a bit tedious and may take a couple of hours, but you do not need to buy a Linux box, and D will run the way it should.
