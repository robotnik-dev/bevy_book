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

Each task solution is prepared in a seperate git patch file. To apply the
solution you can run the script in the 'solutions' folder with a conrete task
number. The task number is given inside the task itself so e.g. you want to see
the solution for task number 3 you can run

```bash
solutions/apply.sh 0003
```

> Before you apply make sure that the working tree is clean (save your work)
> otherwise the script won't work.

### Save your work

1. Stash your changes

```bash
git stash --include-untracked
```

2. Apply the solution to a different branch

```bash
# Save your code
git commit -am "my solution"

# Switch to a new branch.
git switch -c my-solution-task-1

# Apply the solution
git apply solution_1.patch
```

3. Just delete your code

```bash
git restore --staged .
git restore .
```

## Task 0001

### Solution

```bash
solutions/apply.sh 0001
```

<details>
<summary> How i made it (spoiler) </summary>

I decided to use the `shift` key for sprinting. The current system works like
this:

1. The player input is recorded seperately from the movement itself, so when a
   key is pressed, it's saved as an `intent`. The `Controller` struct has a
   member called [intent](./src/demo/movement.rs#L37) and is manipulated inside
   the function [record_player_directional_input](./src/demo/player.rs#L65).

2. I copied the function and called the new one `record_sprint`. In there i
   listened for the input event for the shift key and changed the `intent` like
   in the other function but this time the `max_speed`.

3. After this i just needed to register the new function (called `system` in
   bevy) to the App.

With this i changed just one file and got the sprinting feature done.

</details>

### The task

We try to extend the character movement of the duck to increase the movement
speed while a key is pressed and return to normal when released; basically a
`sprint` feature.
