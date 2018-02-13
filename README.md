# WixBalExtensionExt    

This is a fork of of the [extended WiX bootstrapper Application](https://wixextba.codeplex.com/) that adds options to automatically launch the installed application when running in either passive or quiet modes.

[![Build status](https://ci.appveyor.com/api/projects/status/mxk75obwrs8y1089?svg=true)](https://ci.appveyor.com/project/ckaczor/wixbalextensionext)
[![NuGet](https://img.shields.io/nuget/v/WixBalExtensionExt.svg)](https://www.nuget.org/packages/WixBalExtensionExt)

## Features

This version has the following enhancements over the original code:

* Add LaunchPassive flag to automatically launch the installed application when in passive mode.
* Add LaunchQuiet flag to automatically launch the installed application when in quiet mode.

## Installation

When using the NuGet package the reference doesn't get added automatically and Visual Studio 2017 seems to no longer support custom install scripts. The reference will have to be added/updated manually by selecting the DLL from the packages directory.

## Authors

* **Neil Sleightholm** - *Initial work* - https://wixextba.codeplex.com/
* **Chris Kaczor** - https://github.com/ckaczor - https://chriskaczor.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
