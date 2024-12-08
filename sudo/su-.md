# Su -

## `su` (without `-`):  
Allows you to switch users (by default, to root), but does not completely modify the environment.  
The current environment (variables, working directory, etc.) remains that of the initial user.

### Example  
If you are in `/home/user` before typing `su`, you will stay in that directory even after becoming root.

## `su -`  
Switches users and fully loads the environment of the target user (by default, root).  
This includes:  
- Environment variables (e.g., PATH, HOME, etc.)  
- The working directory changes to `/root` (the root user's home directory).  
- The configuration settings specific to the root user (such as `.bashrc`, `.profile` files).  

In other words, it is like logging in as the original root user (thus opening a dedicated session for it).

## Why use `su -`  
### Command Path (`PATH`)  
In root mode, some important system commands (like those in `/sbin` or `/usr/sbin`) may not be available if the environment is not properly loaded.  
With `su` without `-`, these paths might be missing, and some administrative commands may not work.

