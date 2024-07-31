class SlotMachine
  FIGURES = {
    'cherry' => 10,
    'seven' => 20,
    'bell' => 30,
    'star' => 40,
    'joker' => 50
  }

  def initialize(reels = [])
    @reels = reels
  end

  def play
    @reels = []

    3.times do
      @reels << FIGURES.keys.sample
    end

    @reels
  end

  def score
    if @reels.uniq.size == 1
      FIGURES[@reels[0]]
    elsif @reels.uniq.size == 2 && @reels.include?('joker')
      FIGURES[@reels.sort[1]] / 2
    else
      0
    end
  end
end

# figures = %w[joker star bell seven cherry]

# combinations = figures.repeated_permutation(3).map(&:sort).uniq

# combinations.each_with_index do |combo, index|
#   puts "#{index + 1}. #{combo}"
# end
