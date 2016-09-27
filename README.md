# dotfiles

This is where I keep my conky and .bashrc.  To use them, simply download to your own computer and put them into your /home/username directory.  A word of warning, my .bashrc is set up for Arch Linux, with a few custom aliases and settings, so you might want to pick through them and just copy/paste the ones you want, instead of replacing your .bashrc with mine.  I also have proxy servers in my .bashrc, so if you're not running polipo, your internet won't work from a terminal (if you're running Squid, just change the port from 8123 to 3128 and you should be good to go).

The conky file shows system info, CPU load and temp (using lm_sensors) for 12 CPU cores (comment out if you have fewer cores), GPU temperature for 2 Nvidia GPUs (comment the second one out if you only run 1 GPU), 10 CPU processes, 10 memory processes, 1 network interface (the name of your interface may be different than mine), upload/download/totals, public/lan ip address, inbound/outbound ports and free/total for /home, /, /tmp and /tmpfs (you can set this up however you want it, to monitor whichever drives are on your computer, but some editing will be necessary).  The synax is pretty straightforward, just tailor it to your system, it shouldn't take more than a couple of minutes.

bin.tar.xz is a small collection of scripts that I keep in my /home/user/bin directory, they're just things that I find handy to have, perhaps you will too.

Thanks for stopping by.
