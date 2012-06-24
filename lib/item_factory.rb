require 'legendary_item.rb'
require 'normal_item.rb'
require 'backstage_passes.rb'
require 'aged_brie.rb'
require 'item.rb'

class ItemFactory

	KNOWN_ITEMS = {
		"Sulfuras, Hand of Ragnaros" => LegendaryItem,
		"+5 Dexterity Vest" => NormalItem,
		"Elixir of the Mongoose" => NormalItem,
		"Conjured Mana Cake" => NormalItem,
		"Backstage passes to a TAFKAL80ETC concert" => BackstagePasses,
		"Aged Brie" => AgedBrie,
	}

	def new_item(name, sell_in, quality)
		return KNOWN_ITEMS[name].new(name, sell_in, quality) if KNOWN_ITEMS.key? name
		Item.new(name, sell_in, quality)
	end
end