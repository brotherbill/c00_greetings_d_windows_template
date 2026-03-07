

# Project Creation Workflow

## One-Time Setup

To set up your D development environment, follow the instructions in FROM_SCRATCH.md. This is a one-time process that prepares your system and creates the `hello_d_windows` project, which contains all templates and scripts needed for new projects.

**Important:**
- Do not edit or delete the `hello_d_windows` project/directory. It is required to easily create new projects with `np.ps1`.

## Creating a New D Project

Each time you want to create a new D project:

1. Navigate to the parent folder where you want your new project (e.g., `C:\dev\d`).
2. Open the VS Code Terminal (Terminal).
3. (Optional, for repo updates) Periodically—such as every month or quarter—update your setup:
   - Run: `git clone https://github.com/brotherbill/hello_d_windows`
   - Run: `setup_np_global.ps1`
5. Create your new project:
   `np -name my_next_d_project -description "description of my next d project"`

See FROM_SCRATCH.md for full setup details and troubleshooting.
