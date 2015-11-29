libpebliss
---
Evolved from [portable-executable-library](https://code.google.com/p/portable-executable-library)

**Original Author:** rukaimi (kaimi.ru)

Thanks to his really great work!


### PE Bliss
Cross-Platform [PE](https://en.wikipedia.org/wiki/Portable_Executable)(Portable Executable) Manipulating Library
* C++
* Compatibility
  * Little-endian systems only, might not support big-endian ones.
  * Windows, tested on Visual Studio 2013 Express
  * Linux, tested on GCC 4.8.4
  * OSX, tested on LLVM 7.0.0

* Useful usage samples and well unit-tested.

### Features

* Read 32- and 64-bit PE files (PE, PE+) for Windows, work similar with both formats
* Create PE/PE+ binaries from scratch
* Rebuild 32- and 64-bit PE files
* Work with directories and headers
* Convert addresses
* Read and write PE sections
* Read and write imports
* Read and write exports (forwarders supported)
* Read and write relocations
* Read and write resources
* Read and write TLS (including callbacks and raw data)
* Read and write image config (including SE Handlers and Lock Prefix addresses)
* Read basic .NET information
* Read and write bound imports
* Read exception directory (PE+ only)
* Read debug directory and extended debug information
* Calculate entropy
* Change file alignment
* Change base address
* Work with DOS Stub and Rich overlay
* High-level resource reading: bitmaps, icons, cursors, version info, string and message tables
* High-level resource editing: bitmaps, icons, cursors, version info

Library doesn't use WinAPI and doesn't execute PE files, so it's safe to use it with suspicious binaries.

### TODO

* Unit-test
  * test on big-endian

* use [CMake](http://cmake.org) instead ???

