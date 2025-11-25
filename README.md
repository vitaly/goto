# Goto - A Command Line Helper

Goto is a command-line utility designed to streamline the process of navigating
bookmarked directories and managing git repositories on your local machine.

It provides a set of commands that allow you to quickly search for, clone, and
navigate to directories within your development environment.

## Features

- **Interactive Search**: Easily search and navigate to directories within your development environment.
- **Git Repository Cloning**: Clone git repositories with a simple command and automatically navigate into them.
- **Flexible Directory Management**: Define custom root directories for your projects for quick access.
- **Update Project List**: Refresh the list of projects in your defined project roots.

## Usage

Here are some of the common commands you can use with Goto:

> Note: `g` shell function is used as a wrapper around the `goto`, see below.

- `g -h`: Display help information.
- `g [FILTER]`: Interactively search and CD into a directory from `~/.warprc`.
- `g [-r DIR | -k1 | -k2 | ...] URL`: Clone a git repository from URL and CD
  into it. The `-r` option allows specifying a custom root directory, while
  `-k1`, `-k2`, etc., refer to predefined keys for root directories.
- `g [-r DIR | -k1 | -k2 | ...] [-u] [FILTER]`: Interactively search and CD
  into a repository. The `-u` option updates the project list in the
  `projects_root`.
- `g [-r DIR | -k1 | -k2 | ...] URI [OPTIONS]`: if URI is not yet cloned, clone
  and CD into the directory. Otherwise just CD. `OPTIONS` are git clone options to use.
  Note: They are only used for the initial clone, and ignored if directory already exists.

### Setting Up Root Directories

You can define custom root directories for your repositories.

By default, the root is set to `$HOME/dev/src`. To add or modify root
directories, edit the rc file (by default `$HOME/.gotorc`)

The format is as follows:

```
-:path-for-default-root
A:path-for-root-A
B:path-for-root-B
```

In this case `g -A` will use `path-for-root-A` a the root for git repositories.
`g --`, and `g URI` w/o a root flag will use the default root.

## Installation

To use Goto, clone this repository and add the `goto` script to your PATH.
Ensure the script is executable with `chmod +x goto`.

Alternatively you can export `GOTOBIN` shell variable to point to the executable.

Since using goto requires changing the current directory of the current shell,
a simple eecutable is not enough.

A shell function is provided to wrap the `goto` script. Add the following to your
shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`, etc.):

```bash
source path/to/goto/env/g.bash
```

Or in the case of zsh, link `path/to/goto/env/g.zsh` into your zsh functions folder.

> Note: you might need to recompile your zsh functions after linking the file.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
