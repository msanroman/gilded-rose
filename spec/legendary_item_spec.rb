require File.expand_path(File.dirname(__FILE__)+'/../lib/legendary_item.rb')

describe LegendaryItem do

  it "doesn't decreases it's quality and is never sold" do
    
    legendary = LegendaryItem.new("Sulfuras, Hand of Ragnaros", 5, 7)
    legendary.update_stats
    legendary.sell_in.should equal 5
    legendary.quality.should equal 7
  end
end