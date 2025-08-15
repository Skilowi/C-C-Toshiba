# C-C-Toshiba
My automatization program to control my 3 Toshiba laptops over SSH.

Few months ago I acquired 3 2008 Toshiba laptops (Satellite Pro S300L model). They are no monsters of power, equipped with Intel C2D T5870 and 2GB of DDR2 800MHz RAM.
Over PXE I installed Arch Linux on them. In last hour I scratched these two scripts which quickly open 3 terminal windows with SSH logged already into these laptops, with one extra checking if they are even alive :-D

# Program is quite limited, pretty much hardcoded/personalized under me. If you need such script, you can look how I made this one (or copy it and mod it so it works for you :-)).

Current limitations are:
- Program supports only up to 3 Hosts, which names are "TOSHIBA", "ABIHSOT" and "TOSHRMS". To make it work you would have change hostnames of your hosts/change variables in `toshiba.sh` and `controlandcommand.sh`
- Also SSH connects directly by hostnames, that requires both your computer and your hosts to have same username.
- Both scripts must be stored on your Desktop (e.g. /home/linuxuser/Desktop/). Otherwise second script wont start. You would have to change path to run `controlandcommand.sh` in `toshiba.sh`.
- Hosts password is stored directly in `toshiba.sh`. I think it also might get stored in terminal history /!\ SCARY! /!\. Also this program uses plain password, no keys /!\ SCARY!² /!\
- Hardcoded for 1920x1080 monitor. You will have to play with numbers in `--geometry` in `toshiba.sh` and see what fits you best.
- Also it all will run only if you use xfce4. You need xfce4-terminal!!!!!!

# Run

To run it put both scripts on your Desktop (your Desktop directory must be called `Desktop/`) then you can run `toshiba.sh`.

# Descrpiption of scripts:

  toshiba.sh - run 3 Terminal windows, each with SSH session to each HOST, then run `controlandcommand.sh`
  
  controlandcommand.sh - Ping your 3 hosts, print if they are ONLINE/OFFLINE in loop.
