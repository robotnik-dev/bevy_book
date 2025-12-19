# Player

Generally speaking in gamedev we can split the player into the
`player character` and the `player controller`. The key difference is that the
`character` is the digital representation of the `controller` which sits behind
the screen. It's you. (It's not always like this e.g. unreal engine uses the
`player controller` term to define a software controller that controls one or
more `pawns` but just remember, this are two different definitions)

When we want to code the `player` we definitely want the first `character`
definition.

## Movement

1. We try to extend the character movement of the duck to increase the movement
   speed while a key is pressed and return to normal when released; basically a
   `sprint` feature.
2. After that we try to keep the duck inside the screen so that it is caged and
   can't flee. Technically it's trapped already because it reappears when
   walking to far but this feature is going to be different.

## Animations

TBA
