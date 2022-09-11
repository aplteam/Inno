# Inno


Inno is a Windows-only installer. It is way simpler than Microsoft's installer but not simple: installing software under Windows is way more complex than on any Unix derivative, be it Linux, AIX or Mac-OS.

Inno is widely used and accepted but usually not by very large companies, so watch out.

Inno is used by a couple of applications designed for Dyalog. An example is the "Find-and-Replace" tool [Fire](https://github.com/aplteam/Fire "Link to Fire on GitHub").

The general idea is that a script (extension: "iss") contains definitions and directives. Such a script is the input for the Inno compiler.

There is a sample script available that should suffice to get you going.

In order to use Inno you must install it like any other Windows application. We recommend to also install Kymoto's Inno Script Studio which is of great help when editing an Inno script.

The Inno package is used by [MakeHelpers](https://github.com/aplteam/MakeHelpers "Link to the MakeHelpers project on GitHub")