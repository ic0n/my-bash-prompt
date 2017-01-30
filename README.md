# my-bash-prompt
My beautiful bash prompt (WORK IN PROGRESS)

Installation
------------
There's lots of bugs and the code is dirty right now. Seriously DO NOT install it.    

Requirements:
  - tput
  - bash 3+
  - `$TERM` must be set to `xterm-256color`
  
To install, run the following from your terminal:
```
$ cd
$ git clone https://github.com/ic0n/my-bash-prompt.git
$ ln -s .bash_prompt ~/.bash_prompt
```
And them, add this line in your .bashrc (For macOS/OSX it is .bash_profile)

Features(WORK IN PROGRESS)
--------
- All written in bash script
- Easy to distinguish with line is the command you type
- Collapsable path
- Indicate for the previously failed command
- Indicate for http proxy
- Indicate for background jobs
- Collapsable username and hostname status line information

Screen Shot
----------
![screenshot](https://raw.githubusercontent.com/ic0n/my-bash-prompt/master/screen_shot/screenshot.png)

Why?
----
First of all, the default macOS/OSX bash prompt is hard to notice when there are lots of text.    
Second of all, well, this's  so much fun!

Note
------------------
Sorry for my bad English, not came from a English speaking country.
