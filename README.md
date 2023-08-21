# OCaml Project Setup without Dune

This repository provides a basic setup for an OCaml project without using Dune as the build system. It aims to provide a simple and straightforward structure for your OCaml project, allowing you to focus on writing code without the complexities of a build system.

## Project Structure

The project structure is organized as follows:

```
.
├── bin
│   └── bin_file.ml
├── lib/
├── main.ml
├── _tags
└── test/
```

- `./main.ml`: This file might contain the entry point of your application, where it starts execution.

- `./_tags`: This file is likely related to build configuration. It might be used with the OCaml build tool (such as OCamlbuild) to specify build rules and flags for different parts of the project.

- `./bin/`: This folder is intended for executable code, like your project's main application.

- `./lib/`: This folder is likely intended for your project's library code.

- `./test/`: This folder seems to be intended for test-related code.

## Setup ocaml

1. **Install opam:** It's easy to install opam with your system's package manager on Linux:
   ```
   # Ubuntu and Debian:
   $ apt install opam

   # Archlinux
   $ pacman -S opam
   ```

2. **Initialize opam** and **Create an opam switch**:
    ```
    $ opam init          # Can take some time
    $ eval $(opam env)
    ```
    ```
    $ opam switch create 4.14.0
    $ eval $(opam env)
    ```

3. **Install Base**: Base is a library that is used in this setup only for demonstration purposes, to see how it works even with external libraries:
    ```
    $ opam install base
    ```

4. (optional) **OCaml Platform Tools on Unix**: All these tools can be installed in your current switch:
    ```
    $ opam install dune merlin ocaml-lsp-server odoc ocamlformat utop dune-release
    ```

## Getting Started

1. **Clone the Repository:** Clone this repository to your local machine using the following command:

   ```
   https://github.com/FedericoBruzzone/setup-ocaml-project-without-dune.git
   ```

2. **Compile and Run:**

    - To compile your code and create an executable with `ocamlbuild`, run:
        ```
        $ ocamlbuild -use-ocamlfind main.native
        $ ./main.native
        ```
        eventually,
        ```
        $ ocamlbuild -clean
        ```
    - To compile your code and create an executable with `ocamlopt`, run:
        ```
        $ ocamlfind ocamlopt -o main.cmo -linkpkg -package base -I bin bin/bin_file.ml main.ml
        $ ./main.cmo
        ```

## Useful command

`ocamlfind list`

`opam list`

## Contributing

Contributions to this project are welcome! If you have any suggestions, improvements, or bug fixes, feel free to submit a pull request.

## License

This repository is licensed under the [GNU General Public License (GPL)](https://www.gnu.org/licenses/gpl-3.0.html). Please review the license file provided in the repository for more information regarding the terms and conditions of the GPL license.

## Contact

If you have any questions, suggestions, or feedback, do not hesitate to [contact me](https://federicobruzzone.github.io/).

