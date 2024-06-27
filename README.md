# Libft

![42 São Paulo](https://img.shields.io/badge/42-SP-000000)

## Table of Contents

- [About](#about)
- [Features](#features)
- [How to Compile](#how-to-compile)
- [How to Use](#how-to-use)
- [File Structure](#file-structure)
- [Contributing](#contributing)
- [License](#license)

## About

The **Libft** project is a custom library created as part of the curriculum at [42 São Paulo](https://www.42sp.org.br/). This project serves as the starting point for many other projects at 42, providing basic functions that replace and complement the standard C library functions.

## Features

Libft includes various utility functions for string manipulation, memory management, linked lists, and other common operations in C. Some of the features include:

- String manipulation (`ft_strlen`, `ft_strcpy`, `ft_strncpy`, etc.)
- Memory management (`ft_memset`, `ft_memcpy`, `ft_memccpy`, etc.)
- Linked list management (`ft_lstnew`, `ft_lstadd`, `ft_lstdelone`, etc.)
- Additional functions (`ft_atoi`, `ft_isalpha`, `ft_tolower`, etc.)

## How to Compile

To compile the library, you can use the provided Makefile. Run the following commands in the terminal:

```sh
make
```

This will generate the libft.a file, which can be included in other projects.

To clean up the object files generated during compilation:

```sh
make clean
```

To clean all generated files, including libft.a:

```sh
make re
```

## How to Use

To use Libft in your projects, include the library header and link the libft.a file during compilation:

```c
#include "libft.h"
```
When compiling your project, add libft.a to the compiler command line:

```shell
gcc -Wall -Wextra -Werror -o my_program my_program.c libft.a
```

## File Structure

The project directory structure is organized as follows:

```
libft/
├── includes/
│   └── libft.h
├── src/
│   └── aditionals/
│   └── list/
│   └── memory/
│   └── string/
├── Makefile
├── README.md
```
- includes/: Contains the libft.h header file;
- src/: Contains the source code files for the library;
- Makefile: Build script;
- README.md: Project documentation.

## Contributing

Contributions are welcome! If you want to contribute to this project, please follow the steps below:

1. Fork the project
2. Create a branch for your feature (git checkout -b feature/new-feature)
3. Commit your changes (git commit -am 'Add new feature')
4. Push to the branch (git push origin feature/new-feature)
5. Create a new Pull Request

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/Andrefcampos/Libft/blob/main/MIT_license) file for more details.
