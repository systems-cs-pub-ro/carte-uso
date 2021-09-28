# USO Book

This repository hosts the book "Utilizarea sistemelor de operare" (Romanian) as LaTeX source code (generating PDF) and support source code.
This book targets all those who want to take their first steps in the world of operating systems and Linux.
And to those who want to strengthen their knowledge and practical skill in using operating systems.

The book is the official course material for the ["Utilizarea sistemelor de operare" course](https://ocw.cs.pub.ro/courses/uso) (same name) at the [Faculty of Automatic Control and Computers](https://acs.pub.ro/), [University POLITEHNICA of Bucharest](https://upb.ro/).

At this point, the content is in Romanian, with plans to have it translated in other languages.

## Authors

The authors of this book are:

* Răzvan Deaconescu, razvan.deaconescu@upb.ro
* Răzvan Rughiniș, razvan.rughinis@upb.ro
* Mihai Carabaș, mihai.carabas@upb.ro
* Alexandru Radovici, alexandru.radovici@upb.ro

Images in the book (SVG) have been created by Andrei Stănescu (andrei.stanescu23@gmail.com).

Sergiu Weisz (sergiu.weisz@upb.ro) did a large part of the editing.

The book cover was designed by Bogdan Calapod (bogdan.marius.calapod@gmail.com).

This book relied on reviews, ideas and contributions from numerous people, mentioned in each content file.

## Structure

Actual book content is in the `book/` folder.
Each chapter uses a subfolder storing its content.
Content is written and built using [LaTeX](https://www.latex-project.org/).
To build the book, follow the instructions in [README.md](book/README.md).

Support source code is in the `code/` folder.
Similarly, there is a subfolder for each chapter with support source code.
Source code is referenced in each chapter content in the `book/` folder.

## Virtual Machine

The content in the practical, focused on Linux.
We use a virtual machine running Ubuntu Linux 18.04 to run commands and highlight practical actions.
It is recommended you used this virtual machine when reading the book and replicating commands and their results.

The virtual machine is available in OVA (*Open Virtual Appliance*) format at http://uso.cs.pub.ro/res/USO.ova.
Download the virtual machine (2.8 GB) and import in a virtualization solution such as VirtualBox or VMware Workstation Player.

## Contributing

The book is developed as free / open content.
Content is licensed under [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).
Support source code is licensed [3-Clause BSD](https://opensource.org/licenses/BSD-3-Clause).
See details in [COPYING.md](COPYING.md).

Contributions are welcome to improve content: reporting typos and inconsistencies, suggesting improvements, adding content, etc.
You may contribute by:

* opening [issues](https://github.com/systems-cs-pub-ro/carte-uso/issues)
* taking part in [discussions](https://github.com/systems-cs-pub-ro/carte-uso/discussions)
* creating [pull requests](https://github.com/systems-cs-pub-ro/carte-uso/pulls) to update the content

See more in [CONTRIBUTING.md](CONTRIBUTING.md).
