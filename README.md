# Practical Journal Notes

A collection of programming practical exercises for Web Development, C++, Java, and DBMS.

______________________________________________________________________

## Subjects

| Subject | Description | Exercises |
|---------|-------------|-----------|
| [**AWD**](awd/) | Advanced Web Development (HTML, CSS, JavaScript) | 45 |
| [**C++**](cpp/) | Object-Oriented Programming in C++ | 34 |
| [**Java**](java/) | Java Programming (Core, AWT, Swing, Threads) | 42 |
| [**DBMS**](dbms/) | Database Management (SQL & PL/SQL) | 5 |

______________________________________________________________________

## Quick Navigation

### AWD Topics
- HTML: Lists, Tables, Forms, Links
- CSS: Selectors, Combinators, Inline/External styles
- JavaScript: Validation, Arrays, DOM manipulation

### C++ Topics
- Classes & Objects
- Constructors & Destructors
- Operator Overloading
- Inheritance & Polymorphism
- Exception Handling
- File I/O

### Java Topics
- Basic Programs (Loops, Arrays, Strings)
- Classes & Objects
- Abstract Classes & Interfaces
- Exception Handling
- Multithreading
- File I/O
- AWT & Swing

### DBMS Topics
- Table Creation & Management
- SQL Queries
- PL/SQL Programs

______________________________________________________________________

## Environment

This project uses [Nix](https://nixos.org/) for reproducible development environment.

```bash
# Enter development shell
nix-shell

# Or use direnv
 direnv allow
```

### Available Tools
- JDK 21 (headless)
- Node.js & pnpm
- Python 3.12
- Clang/LLVM tools
- mdformat

______________________________________________________________________

## Structure

```
.
├── awd/         # HTML/CSS/JS practicals
├── cpp/         # C++ programs
├── java/        # Java programs (markdown documentation)
├── dbms/        # SQL & PL/SQL exercises
└── default.nix  # Nix development shell
```
