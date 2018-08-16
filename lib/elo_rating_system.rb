# frozen_string_literal: true

# Elo rating system
#
# @see https://en.wikipedia.org/wiki/Elo_rating_system
module EloRatingSystem
  def self.expected(player_a, player_b)
    # @note Calculate expected score of A in a match against B.
    #
    # @param player_a [Integer] Elo rating for player a.
    # @param player_b [Integer] Elo rating for player b.
    1 / (1 + 10**((player_b - player_a.to_f) / 400))
  end

  def self.elo(old, exp, score, k_factor = 32)
    # @note Calculate the new Elo rating for a player.
    #
    # @param old      [Integer] The previous Elo rating.
    # @param exp      [Float]   The expected score for this match.
    # @param score    [Float]   The actual score for this match.
    # @param k_factor [Integer] The k-factor for Elo (default: 32).
    old + k_factor * (score - exp)
  end
end
