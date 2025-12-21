## Task 1

Make the duck go brrr with a `sprint` feature.

## Acceptance criteria

- When holding a keyboard button down, the duck moves faster
- When releasing the button, the duck goes back to normal speed

## Stuff you need to know

Since this is your first task, you might wanna read about the fundamentals of
bevy and how the code is structured. You just need to touch the
`src/demo/player.rs` file for this task but knowing how systems behave and how
to register them is key.

- ECS [overview](https://bevy.org/learn/quick-start/getting-started/ecs/)
- How to
  [register](https://bevy.org/learn/quick-start/getting-started/ecs/#your-first-system)
  a new `System`
- How to
  [Query](https://bevy.org/learn/quick-start/getting-started/ecs/#your-first-query)
  for a `Component`

## Tips

- You just need the file `src/demo/player.rs`
- Look into the function `record_player_directional_input` because it's doing a
  similiar job to what we want to achieve.
- The registering of the `System` is done at line 23.

## Apply the solution

Either stash your changes or switch to a new branch and then run

```bash
git apply solution_1.patch
```
