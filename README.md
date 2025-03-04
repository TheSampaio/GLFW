# GLFW

[![Build status](https://github.com/glfw/glfw/actions/workflows/build.yml/badge.svg)](https://github.com/glfw/glfw/actions)
[![Build status](https://ci.appveyor.com/api/projects/status/0kf0ct9831i5l6sp/branch/master?svg=true)](https://ci.appveyor.com/project/elmindreda/glfw)

## Introduction

GLFW is an open-source, cross-platform library for OpenGL, OpenGL ES, and Vulkan application development. It provides a simple, platform-independent API for creating windows, managing contexts and surfaces, handling input, and managing events.

GLFW supports Windows, macOS, Linux, and other Unix-like systems. Both Wayland and X11 are supported on Linux.

GLFW is licensed under the [zlib/libpng license](https://www.glfw.org/license.html).

For more information:
- [Download the latest release](https://www.glfw.org/download.html) (source and Windows binaries)
- [View the documentation](https://www.glfw.org/docs/latest/)
- [See release notes](https://www.glfw.org/docs/latest/news.html)
- [Version history](https://www.glfw.org/changelog.html)

The `master` branch serves as the stable integration branch and should always compile and run correctly on all supported platforms. However, details of new features may change before official releases. Development work occurs in [other branches](https://github.com/glfw/glfw/branches/all) before merging into `master`.

New to GLFW? Check out the [quick tutorial](https://www.glfw.org/docs/latest/quick.html). If migrating from GLFW 2, refer to the [transition guide](https://www.glfw.org/docs/latest/moving.html).

GLFW exists thanks to contributions from developers worldwide. See [CONTRIBUTORS.md](CONTRIBUTORS.md) for details.

## Building GLFW

GLFW is written primarily in C99, with macOS support containing some Objective-C code. It requires only standard OS headers and libraries and does not need additional headers for context creation APIs (WGL, GLX, EGL, NSGL, OSMesa) or rendering APIs (OpenGL, OpenGL ES, Vulkan).

Supported compilers:
- Windows: Visual C++ 2013 and later, MinGW, MinGW-w64
- macOS: Clang
- Linux & Unix-like: GCC, Clang

Pre-compiled binaries for Windows and macOS are available on the [GLFW download page](https://www.glfw.org/download.html). To compile GLFW yourself, see the [compilation guide](https://www.glfw.org/docs/latest/compile.html).

## Using GLFW

Refer to the [documentation](https://www.glfw.org/docs/latest/) for tutorials, guides, and API references.

## Contributing

If you'd like to contribute, please read the [contribution guide](https://github.com/glfw/glfw/blob/master/docs/CONTRIBUTING.md).

## System Requirements

- Windows XP and later
- macOS 10.11 and later
- Linux and Unix-like systems running X11 or Wayland
- OSMesa backend requires Mesa 6.3

See the [compatibility guide](https://www.glfw.org/docs/latest/compat.html) for more details.

## Dependencies

GLFW itself requires only CMake 3.16 or later and OS-specific headers and libraries.

Example and test programs depend on:
- [getopt\_port](https://github.com/kimgr/getopt_port/) - command-line option handling
- [TinyCThread](https://github.com/tinycthread/tinycthread) - multithreading
- [glad2](https://github.com/Dav1dde/glad) - OpenGL and Vulkan function loading
- [linmath.h](https://github.com/datenwolf/linmath.h) - linear algebra
- [Nuklear](https://github.com/Immediate-Mode-UI/Nuklear) - UI for test and example programs
- [stb\_image\_write](https://github.com/nothings/stb) - image output

Documentation is generated with [Doxygen](https://doxygen.org/) if available.

## Reporting Bugs

Bugs should be reported via the [issue tracker](https://github.com/glfw/glfw/issues). Before reporting, check the [contribution guide](https://github.com/glfw/glfw/blob/master/docs/CONTRIBUTING.md) for details on what to include.

## Recent Changes (since 3.4)

- Added `GLFW_UNLIMITED_MOUSE_BUTTONS` input mode for extra mouse buttons (#2423)
- Updated minimum CMake version to 3.16 (#2541)
- [Cocoa] Added `QuartzCore` framework dependency
- [Cocoa] Removed support for OS X 10.10 Yosemite and earlier (#2506)
- [Wayland] Fixed crashes related to fractional scaling and drag events (#2517)
- [X11] Fixed assertion failure when running without a window manager (#2593,#2601,#2631)
- [Null] Added Vulkan 'window' surface creation via `VK_EXT_headless_surface`
- [Null] Enabled EGL context creation via `EGL_MESA_platform_surfaceless` (#2518)

## Contact & Community

Visit [glfw.org](https://www.glfw.org/) for the latest updates, news, and documentation.

- Have questions? Join the [GLFW forum](https://discourse.glfw.org/).
- Want to report a bug or request a feature? Use the [issue tracker](https://github.com/glfw/glfw/issues).
- Interested in contributing? Join the discussion on GitHub or the forum.

---

This project is not affiliated with the original GLFW developers. This README respects the original project's licensing and provides relevant information for users.

