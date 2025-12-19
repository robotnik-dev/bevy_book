# Bevy Book

I want to learn bevy and simultanously teach it to my girlfriend, this is what
this project tries to attempt.

## Setup

1. Install Rust Rust installation goes via rustup

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

2. Install dependencies

Bevy needs some dependencies for each platform something different, you can see
what you need to install
[here](https://github.com/bevyengine/bevy/blob/latest/docs/linux_dependencies.md)

3. Run the game

This project was generated using the
[Bevy New 2D](https://github.com/TheBevyFlock/bevy_new_2d) template and will be
the example game throughout this journey.

> When you want, you can install the
> [bevy cli](https://thebevyflock.github.io/bevy_cli/cli/install.html) to
> [run](https://thebevyflock.github.io/bevy_cli/cli/linter.html) bevy specific
> lints after each stage but it's not necessary.

Run the game with this command

```bash
cargo run
```

This wil take a while when compiling for the first time. After that each
`cargo run` should compile relatively quick.

You will probably see a window opening and when you start the game you can walk
the little duck around.

## The book

The main purpose of the book is to work on existing features and try to change
one thing at a time. This is to ensure that no step is to overwhelming and you
can take your time exploring the codebase afterwards if you want to.

Visit the [guide](https://robotnik-dev.github.io/bevy_book) to get started.
