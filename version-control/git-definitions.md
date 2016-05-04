# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a way of tracking and organizing files and changes to files in order to allow both a clear record of work done (and, if reverting, undone) and to allow multiple people (in time or space) to work on the same thing at the same time without access to each other. By tracking what changes are made and when, it becomes possible/easier to merge those disparate changes togehter in a semi-automated way without losing some of the work or requiring someone to go through every line each time that happens.

It also gives a clear pathway of changes that isn't necessarily linear, so certain changes can be removed/undone without disturbing other work that was done on the same file.

* What is a branch and why would you use one?

A branch is a separate track of version control. It can be used to encapsulate features and gives a space to work on new features that won't conflict with other work being done. This allows the feature to be merged into the project once it is complete, which reduces clutter and maintainence, and makes it so that you need to think about interaction between features all at once (when the feature is being merged) as opposed to constantly as multiple features are being worked on at once.

* What is a commit? What makes a good commit message?

A commit is like a save point. It contains a message saying what was done and also a record of any changes since the last commit. A good commit message explains clearly everything that was done in the commit, but otherwise avoids verbosity.

* What is a merge conflict?

A merge conflict is when an area of code in the branch you're merging to and merging from were changed in different ways (including possibly being deleted). This means that there's no clear path forward for merging them, and resolution requires a human to go through and figure out how the conflict should be resolved.
