require './normal_item.rb'
require './aged_item.rb'
require './legendary_item.rb'
require './conjured_item.rb'
require './ticket_item.rb'

class GildedRose

  attr_accessor :items

  @items = []

  def initialize
    @items = []
    @items << NormalItem.new("+5 Dexterity Vest", 10, 20)
    @items << AgedItem.new("Aged Brie", 2, 0)
    @items << NormalItem.new("Elixir of the Mongoose", 5, 7)
    @items << LegendaryItem.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << TicketItem.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << ConjuredItem.new("Conjured Mana Cake", 3, 6)
  end

  def update_quality
    @items.each do |item|
      item.day_passes
    end
  end

end