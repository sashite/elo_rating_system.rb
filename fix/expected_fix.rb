# frozen_string_literal: true

require_relative 'fix_helper'

Fix.describe EloRatingSystem do
  on :expected, 1613, 1609 do
    on :round, 3 do
      it { MUST eql 0.506 }
    end
  end

  on :expected, 1613, 1477 do
    on :round, 3 do
      it { MUST eql 0.686 }
    end
  end

  on :expected, 1613, 1388 do
    on :round, 3 do
      it { MUST eql 0.785 }
    end
  end

  on :expected, 1613, 1586 do
    on :round, 3 do
      it { MUST eql 0.539 }
    end
  end

  on :expected, 1613, 1720 do
    on :round, 3 do
      it { MUST eql 0.351 }
    end
  end
end
