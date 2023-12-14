# Custom Shell Project
![custom-shell](https://github.com/Official0mega/Custom-Shell/assets/122806822/de241db3-7236-459a-9876-e37f24020f75)


This is a simple UNIX command-line interpreter project. The goal is to create a Robust Shell that can execute commands, handle built-in functionalities, and implement various Advanced Features.

![image](https://github.com/Antoyjuma/simple_shell/assets/122806822/8c75565d-4d72-4889-8c84-fad0f2cda6b1)

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Building the Shell](#building-the-shell)
- [Running the Shell](#running-the-shell)
- [Testing](#testing)
- [Author](#author)
- [License](#license)

## Overview

The Simple Shell project is a part of the ALX SE Foundations curriculum. It involves creating a basic UNIX shell that can interpret and execute commands, handle built-in functionalities like `exit` and `env`, and support various advanced features such as logic operators and comments.

```bash
simple_shell
│
├── AUTHORS
├── Makefile
├── README.md
├── advanced
│   ├── history_manager.c
│   ├── line_reader.c
│   ├── parser.c
│   └── tokenizer.c
├── controllers
│   ├── shell_cmds_0.c
│   ├── shell_cmds_1.c
│   ├── shell_cmds_alias.c
│   ├── shell_cmds_cd.c
│   ├── shell_cmds_help_0.c
│   └── shell_cmds_help_1.c
├── environment
│   ├── executor.c
│   ├── expansion.c
│   └── expansion_helpers.c
├── handlers
│   ├── alias_manager.c
│   └── alias_substitution.c
├── helpers
│   ├── cli_helpers_0.c
│   ├── cmd_t_helpers.c
│   ├── env_var_helpers.c
│   ├── io_helpers.c
│   ├── mem_helpers.c
│   ├── path_helper.c
│   └── token_helper.c
├── include
│   ├── main.h
│   └── main_types.h
├── src
│   └── simple_shell.c
├── tests
│   └── man_1_simple_shell
└── utils
    ├── utils_str_0.c
    ├── utils_str_1.c
    ├── utils_str_2.c
    ├── utils_str_3.c
    ├── utils_validator_0.c
    ├── utils_validator_1.c
    ├── utils_validator_2.c
    └── utils_validator_3.c
```


- **README.md:** Project documentation providing an overview, structure, and instructions.
- **AUTHORS:** File listing contributors to the project.
- **.gitignore:** Specifies files and directories to be ignored by version control.
- **Makefile:** Automates the build process.
- **src:** Source code directory containing various components of the shell.
- **include:** Header files for the shell components.
- **test:** Directory for testing-related files.
- **builtins, variables, logic_operators, comments, advanced:** Subdirectories for specific features/modules.
- **tests:** Additional test files and scripts.

## Building the Shell

To build the shell, use the provided Makefile. Open a terminal and navigate to the project root directory. Run the following command:

```bash
gcc -Wall -Werror -Wextra -pedantic -std=gnu89     src/*.c     advanced/*.c     controllers/*.c     environment/*.c     handlers/*.c     helpers/*.c     utils/*.c     -o hsh

```
* This will compile the source code and generate the executable.

### Running the Shell
* After building the shell, run it with the following command: 
```bash
./hsh
```
* This will start the shell, and you can interact with it by entering commands.

### Testing
* To run tests, use the provided test scripts. Navigate to the tests directory and execute the test script:
```bash
./test_scripts/test_script.sh
```
* Ensure that the shell behaves as expected and passes all relevant tests.

### Author
* Official0mega

### License
* This project is licensed under the MIT License.
