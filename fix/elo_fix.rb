# frozen_string_literal: true

require_relative 'fix_helper'

Fix.describe EloRatingSystem do
  on :elo, 1613, 2.867, 2.5, 32 do
    on :round do
      it { MUST eql 1601 }
    end
  end

  on :elo, 1613, 2.867, 3, 32 do
    on :round do
      it { MUST eql 1617 }
    end
  end
end
