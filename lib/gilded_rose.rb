require 'item.rb'

class GildedRose

  def initialize (factory)
    @items = []
    @items << factory.new_item("+5 Dexterity Vest", 10, 20)
    @items << factory.new_item("Aged Brie", 2, 0)
    @items << factory.new_item("Elixir of the Mongoose", 5, 7)
    @items << factory.new_item("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << factory.new_item("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << factory.new_item("Conjured Mana Cake", 3, 6)
  end

  def update_quality

    @items.each { |item|
      item.update_stats
    } 
  end
end