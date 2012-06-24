require File.expand_path(File.dirname(__FILE__)+'/../lib/item_factory.rb')

describe ItemFactory do

  it "creates Sulfuras as a legendary item" do
    sulfuras = subject.new_item("Sulfuras, Hand of Ragnaros", 5, 7)
    sulfuras.should be_an_instance_of LegendaryItem
  end

  it "creates +5 Dexterity Vest and Elixir of the Mongoose as normal items" do
    vest = subject.new_item("+5 Dexterity Vest", 10, 20)
    vest.should be_an_instance_of NormalItem

    elixir = subject.new_item("Elixir of the Mongoose", 5, 7)
    elixir.should be_an_instance_of NormalItem
  end

  it "creates Backstage passes to a TAFKAL80ETC concert as backstage passes" do
    passes = subject.new_item("Backstage passes to a TAFKAL80ETC concert", 1, 1)
    passes.should be_an_instance_of BackstagePasses
  end

  it "creates Aged Brie as AgedBrie" do
    brie = subject.new_item("Aged Brie", 2, 1)
    brie.should be_an_instance_of AgedBrie
  end

  it "creates a generic item if it doesn't know what kind of object is" do
    item = subject.new_item("Nothing special", 1, 23)
    item.should be_an_instance_of Item
  end
end
