## Linux Design Philosophy

Linux is an open source operating system designed to be robust flexible and even lightweight. Linux manages the system drivers by including them as modules in its kernel and in its purest form comes with nothing more than the command line installed. The system is customizable to no end which allows people to build anything from a super lightweight web server with only the necessary programs in it, all the way up to a fully fleshed out desktop distribution with fancy desktop compositions. While there are so many flavors of linux they all work perfectly well with each other since the kernel and core processes remain the same across them all.

## Virtual Private Server
A VPS is a server that is run using a virtual machine either on your computer or a remote one. The benefit of this is that you can have a linux server running in a VM inside a windows operating system which allows you to dynamically allocate system resources and even save hosting money by tailoring the memory and cpu power you requite. Another huge benefit of this is that a VPS is completely sandboxed in its VM and any attacks will not affect the rest of your system.

## ROOT!!!
Running programs as root in linux is extremely dangerous because the super-user has complete and total control of the machine, if there was a bug or a malicious attack there would be nothing stopping the command rm -rf / from running and erasing all files or someone installing additional code that steals the private information of everyone accessing your site.