# Bevy Book

I want to learn bevy and simultanously teach it to my girlfriend, this is what
this project tries to attempt.

## Setup

1. Install Rust Rust installation goes via rustup

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

2. Install dependencies

Bevy needs some
[dependencies](https://github.com/bevyengine/bevy/blob/latest/docs/linux_dependencies.md)
for each platform something different.

3. Install bevy CLI

To check for bevy lints and easily run the game, it's convenient to have to bevy
cli installed. It's not stable yet but you can work with it.

```bash
cargo install --git https://github.com/TheBevyFlock/bevy_cli --branch main --locked bevy_cli
```

3. Run the game

This project was generated using the
[Bevy New 2D](https://github.com/TheBevyFlock/bevy_new_2d) template and will be
the example game throughout this journey.

Run the game with this command

```bash
bevy run
```

or

```bash
cargo run
```

This wil take a while when compiling for the first time. After that each run
command should compile relatively quick.

You will hopefully see a window opening and when you start the game you can walk
the little duck around with `wasd` or `arrow keys`.

## The book

The main purpose of the book is to work with the base game and try to change one
thing at a time. This is to ensure that no step is to overwhelming and you can
take your time exploring the base codebase afterwards if you want to.

### How it's supposed to work

Each challenge or task is it's own branch. After completing a task, a git .patch
file can be applied to reveal the solution I found. It can be multiple solutions
which will be numbered beginning with `1`.

Before you apply make sure that the working tree is clean:

```bash
git restore .
```

> WARNING: This will erase all of your work so you can alternatively just make a
> new branch of of this one and apply the solution there if you don't want to
> erase your code.

```bash
# Save your code
git commit -am "my solution"

# Switch to a new branch.
git switch -c my-solution-task-1

# Apply the solution
git apply solution_1.patch
```

## Let's start

You can go to the first task by switching to the first branch:

```bash
git switch task_1
```

> `git switch` works with a non-clean git tree so all changes are pulled over to
> the branch. Use `git checkout` or stash your changes when you don't want that.
