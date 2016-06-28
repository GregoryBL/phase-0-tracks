# Web Server research

## What are some of the key design philosophies of the Linux operating system?

Linux is considered a "hacker's operating system," and by that I (they?) mean it's created by volunteers in a loose collaboration, with a lack of top-down control that would allow for a certain amount of assurance with each release. The focus in development is first and foremost to develop a free implementation of UNIX, not to create something perfect or bug-free.

Linux is open-source, meaning anyone can read the source and compile it and use it. This also makes it easy for anyone to modify it and potentially choose to contribute new code to it.

Many Linux distributions exist, each of which include a version of the Linux kernel and many other programs that are required or useful to achieve that particular distribution's aims. This allows Linux to be very flexible.

## What is a VPS? What, according to your research, are the advantages of using a VPS?

A VPS is a section of memory on a computer that acts as its own computer. This allows many of these "computers" or "virtual machines" to run on the same underlying hardware. It also makes creating and destroying them when done very easy, and creates a self-contained place for you to make mistakes that won't affect your physical hardware and can easily be cleaned up or reverted if something goes wrong.

Another benefit is being able to clone them easily and also being able to resize them and change their virtual abilities (like increase ram or processing power).

## Why is it considered a bad idea to run programs as the root user on a Linux system?

Running programs as root can be dangerous on Linux because the program will have access to any part of your system and can change anything it wants. If it goes wrong it could delete/modify/corrupt important system programs, and if compromised it could allow an attacker to use your installation for anything s/he wants.

Because of this it's generally best to run any process with the least privileges it needs.