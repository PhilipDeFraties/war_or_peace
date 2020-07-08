class Deck
  attr_reader :cards, :rank

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(position)
    @cards[position].rank
  end

  def high_ranking_cards
    high_ranks = []
    @cards.each do |card|
      high_ranks << card if card.rank >= 11
    end
    high_ranks
  end

  def percent_high_ranking
    high_ranks = []
    @cards.each do |card|
      if card.rank >= 11
        high_ranks << card
      end
    end
    ((100 / @cards.count.to_f) * high_ranks.count).round(2)
  end

  def jeff_high_ranking_cards
    @cards.inject([]) do |accum, card|
      accum << card if card.rank >= 11
      accum
    end
  end

  def jeff_percent_high_ranking
    count_total_cards = @cards.length
    return 0.0 unless count_total_cards.positive?

    count_high_ranking_cards = jeff_high_ranking_cards.length
    ((count_high_ranking_cards / count_total_cards.to_f) * 100).round(2)
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards << card
  end
end
