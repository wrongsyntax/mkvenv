# mkvenv
A bash script that automatically creates a new Python virtual environment, activates it, and creates a new directory to work in.

# Prerequisites
Usage of mkvenv requires that you have already installed virtualenv.
Using pip, run the command `pip install virtualenv`. If you have multiple versions of Python installed, you can use a specific version of pip to install virtualenv to ensure the virtual environments you create run with that specific version of Python.
More information can be found at [pypa/virtualenv](https://github.com/pypa/virtualenv).

# Installation
Currently, the only way to do this is to add this to your `.bash_profile` or something similar, since doing it as a seperate file runs it as its own instance, and so does not operate in the current working directory.
To do this, simply copy the contents of `mkvenv.sh` and add it to your `.bash_profile`, or whichever file you use to manage your bash aliases.

# Usage
```
Usage:
  mkvenv [options] <env_name> [dir_name]
	env_name		Name of new virtual environment.
	dir_name		Optional: name for project working directory.
	-v, --version		Print the version number of mkvenv.
```
Simply navigate to the directory you want to make the virtual environment in, and use mkvenv.

## Example Usage
To create a virtual environment in `~/Desktop` named `venv`, the following steps would be followed:
1. `cd Desktop`
2. `mkvenv venv`

This would create a directory named `venv` on the Desktop, enter the new directory, activate the virtual environment, and finally create a folder called `venvRoot` that can be used as a working directory for that virtual environment.
Alternatively, a different name for `venvRoot` could be specified by adding it to the end of the `mkvenv venv` command: `mkvenv venv home` would create a folder called `home` rather than `venvRoot`.
