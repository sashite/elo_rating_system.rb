# Elo rating system

[![Build Status](https://travis-ci.org/sashite/elo_rating_system.svg?branch=master)](https://travis-ci.org/sashite/elo_rating_system)

Very simple Ruby implementation of the Elo rating system, a method for calculating the relative skill levels of players in zero-sum games such as chess.

It contains two functions: `expected(player_a, player_b)`, to calculate the expected score of `player_a` in a match against `player_b`; and `elo(old, exp, score, k_factor = 32)`, to calculate the new score for each player.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'elo_rating_system'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install elo_rating_system

## Example

In a five-round tournament, player A, with a rating of `1613`, plays against opponents with the following ratings: `1609`, `1477`, `1388`, `1586`, `1720`.

The expected score is therefore:

```ruby
exp  = EloRatingSystem.expected(1613, 1609)
exp += EloRatingSystem.expected(1613, 1477)
exp += EloRatingSystem.expected(1613, 1388)
exp += EloRatingSystem.expected(1613, 1586)
exp += EloRatingSystem.expected(1613, 1720)

exp.round(3) # => 2.867
```

Player A lost match #1, draw match #2, wins match #3 and #4, and loses match #5.
Therefore the player's actual score is `(0 + 0.5 + 1 + 1 + 0) = 2.5`.

We can now use this to calculate the new Elo rating for player A:

```ruby
EloRatingSystem.elo(1613, 2.867, 2.5).round # => 1601
```

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## About Sashite

This [gem](https://rubygems.org/gems/elo_rating_system) is maintained by [Sashite](https://sashite.com/).

With some [lines of code](https://github.com/sashite/), let's share the beauty of Chinese, Japanese and Western cultures through the game of chess!
