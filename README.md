# ft_printf

This project is my implementation of the `ft_printf` function for the 42 school curriculum. It is a simplified version of the standard C library `printf` function, allowing for formatted output to the standard output (stdout).

## Description

The `ft_printf` project challenges students to understand variadic functions, format specifiers, and low-level output operations. It serves as a stepping stone towards more complex projects in the 42 curriculum, demonstrating the intricacies of string manipulation and memory management.

## Features Implemented

This implementation of `ft_printf` supports the following conversion specifiers:

*   **%c:** Prints a single character.
*   **%s:** Prints a string of characters.
*   **%p:** Prints a pointer address in hexadecimal format.
*   **%d:** Prints a decimal integer.
*   **%i:** Prints an integer in base 10.
*   **%u:** Prints an unsigned decimal integer.
*   **%x:** Prints a hexadecimal integer in lowercase.
*   **%X:** Prints a hexadecimal integer in uppercase.
*   **%%:** Prints a percent sign.

## Compilation

To compile the library, run the following command:

```bash
make
```

This will create a static library file named libftprintf.a.

Usage
To use the library in your project, you need to:

Include the header file ft_printf.h in your source files.
Link your project with the libftprintf.a library.
Here's an example of how to use ft_printf:

```c
#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello, %s! You are %d years old.\n", "world", 42);
    return (0);
}
```
