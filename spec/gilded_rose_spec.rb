require File.expand_path(File.dirname(__FILE__)+'/../lib/gilded_rose.rb')
require File.expand_path(File.dirname(__FILE__)+'/../lib/item_factory.rb')
require File.expand_path(File.dirname(__FILE__)+'/../lib/item.rb')

describe GildedRose do

  it "updates each item stats" do
    factory = double("ItemFactory")
    item = double("Item")
    factory.should_receive(:new_item).with("+5 Dexterity Vest", 10, 20) {item}
    factory.should_receive(:new_item).with("Aged Brie", 2, 0) {item}
    factory.should_receive(:new_item).with("Elixir of the Mongoose", 5, 7){item}
    factory.should_receive(:new_item).with("Sulfuras, Hand of Ragnaros", 0, 80) {item}
    factory.should_receive(:new_item).with("Backstage passes to a TAFKAL80ETC concert", 15, 20) {item}
    factory.should_receive(:new_item).with("Conjured Mana Cake", 3, 6) {item}
    item.should_receive(:update_stats).exactly(6).times

    inn = GildedRose.new(factory)
    inn.update_quality
  end
end