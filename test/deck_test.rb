require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require "pry"

class DeckTest < Minitest::Test
  def test_it_exists
    deck = Deck.new(nil)

    assert_instance_of Deck, deck
  end

  def test_it_has_attributes
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal [card1, card2, card3], deck.cards
  end

  def test_cards_have_rank
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    assert_equal 12, deck.rank_of_card_at(0)
  end

  def test_jeff_high_ranking_cards
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:spade, '2', 2)
    card4 = Card.new(:heart, 'Ace', 14)
    card5 = Card.new(:spade, 'King', 13)

    cards = [card1, card2, card3, card4, card5]

    deck = Deck.new(cards)

    assert_equal [card1, card4, card5], deck.jeff_high_ranking_cards
  end

  # def test_percentage_of_high_ranking_cards
  #   card1 = Card.new(:diamond, 'Queen', 12)
  #   card2 = Card.new(:spade, '3', 3)
  #   card3 = Card.new(:heart, 'Ace', 14)
  #
  #   cards = [card1, card2, card3]
  #
  #   deck = Deck.new(cards)
  #
  #   assert_equal 66.67, deck.percent_high_ranking
  #   # binding.pry
  # end

    # def test_card_can_be_removed
    #   card1 = Card.new(:diamond, 'Queen', 12)
    #   card2 = Card.new(:spade, '3', 3)
    #   card3 = Card.new(:heart, 'Ace', 14)
    #
    #   cards = [card1, card2, card3]
    #
    #   deck = Deck.new(cards)
    #   #binding.pry
    #   assert_equal card1, deck.remove_card
    # end

    # def test_card_can_be_added
    #   card1 = Card.new(:diamond, 'Queen', 12)
    #   card2 = Card.new(:spade, '3', 3)
    #   card3 = Card.new(:heart, 'Ace', 14)
    #   card4 = Card.new(:club, '5', 5)

    #   cards = [card1, card2, card3]

    #   deck = Deck.new(cards)
    #   # binding.pry
    #   assert_equal [card1, card2, card3, card4], deck.add_card(card4)
    # end
end
