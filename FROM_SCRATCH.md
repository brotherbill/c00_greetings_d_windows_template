
# FROM_SCRATCH.md

## How to Create a Fresh D Project on Windows 11 (Beginner Guide, DMD Only)

### 1. Install DMD and Dub
  - `dmd --version` (should print version info)
  - `dub --version` (should print version info)

### 2. Create Your Project Folder
### 3. Initialize a New D Project
  - `dub init .`

  ```d
  import std.stdio;
  
  void main()
  {
      writeln("Greetings, D!");
  }
  ```

### 5. Update dub.json for Debugging
  ```json
  "configurations": [
    {
      "name": "application",
      "targetType": "executable",
      "dflags": ["-g", "-debug"]
    }
  ]
  ```

### 6. Configure VS Code for Debugging
  ```json
  {
    "version": "0.2.0",
    "configurations": [
      {
        "name": "Debug D project",
        "type": "cppvsdbg",
        "request": "launch",
        "program": "${workspaceFolder}/c00_hello_d_windows.exe",
        "args": [],
        "stopAtEntry": false,
        "cwd": "${workspaceFolder}",
        "preLaunchTask": "dub: build",
        "console": "integratedTerminal"
      },
      {
        "name": "Debug D project (Stop at entry)",
        "type": "cppvsdbg",
        "request": "launch",
        "program": "${workspaceFolder}/c00_hello_d_windows.exe",
        "args": [],
        "stopAtEntry": true,
        "cwd": "${workspaceFolder}",
        "preLaunchTask": "dub: build",
        "console": "integratedTerminal"
      }
    ]
  }
  ```

### 7. Configure Build Tasks
  ```json
  {
    "version": "2.0.0",
    "tasks": [
      {
        "label": "dub: build",
        "type": "shell",
        "command": "dub build",
        "group": {
          "kind": "build",
          "isDefault": true
        },
        "presentation": {
          "echo": true,
          "reveal": "always",
          "focus": false,
          "panel": "shared",
          "showReuseMessage": true
        },
        "problemMatcher": []
      },
      {
        "label": "dub: run (integratedTerminal)",
        "type": "shell",
        "command": "dub run",
        "group": {
          "kind": "build",
          "isDefault": true
        },
        "presentation": {
          "echo": true,
          "reveal": "always",
          "focus": true,
          "panel": "shared"
        },
        "problemMatcher": []
      },
      {
        "label": "backup: success snapshot",
        "type": "shell",
        "command": "$ts = Get-Date -Format 'yyyyMMdd_HHmmss'; $zip = '..\\${workspaceFolderBasename}_success_' + $ts + '.zip'; Compress-Archive -Path * -DestinationPath $zip -Force; Write-Host ('Backup created: ' + $zip)",
        "presentation": {
          "echo": true,
          "reveal": "always",
          "focus": false,
          "panel": "shared",
          "showReuseMessage": true
        },
        "problemMatcher": []
      }
    ]
  }
  ```

### 8. Build and Run
  - `dub build`
  - `dub run`

### 9. Debug with F5 in VS Code

---

You now have a working D project that builds, runs and debugs in Windows 11 using VS Code and DMD only.