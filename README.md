# Goto - A Command Line Helper

Goto is a command-line utility designed to streamline the process of navigating and managing git repositories on your local machine. It provides a set of commands that allow you to quickly search for, clone, and navigate to directories within your development environment.

## Features

- **Interactive Search**: Easily search and navigate to directories within your development environment.
- **Git Repository Cloning**: Clone git repositories with a simple command and automatically navigate into them.
- **Flexible Directory Management**: Define custom root directories for your projects for quick access.
- **Update Project List**: Refresh the list of projects in your defined project roots.

## Usage

Here are some of the common commands you can use with Goto:

- `g -h`: Display help information.
- `g [FILTER]`: Interactively search and CD into a directory from `~/.warprc`.
- `g [-r DIR | -k1 | -k2 | ...] URL`: Clone a git repository from URL and CD into it. The `-r` option allows specifying a custom root directory, while `-k1`, `-k2`, etc., refer to predefined keys for root directories.
- `g [-r DIR | -k1 | -k2 | ...] [-u] [FILTER]`: Interactively search and CD into a repository. The `-u` option updates the project list in the projects_root.

### Setting Up Root Directories

You can define custom root directories for your repositories. By default, the root is set to `$HOME/dev/src`. To add or modify root directories, edit the associative array `project_root` within the script.

### Error Handling

Goto includes basic error handling, displaying error messages and exiting gracefully when encountering issues.

## Installation

To use Goto, clone this repository and add the `goto` script to your PATH. Ensure the script is executable with `chmod +x goto`.

## Contributing

Contributions are welcome! Feel free to submit pull requests or open issues to improve the functionality or documentation of Goto.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
