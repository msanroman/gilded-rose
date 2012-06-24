require File.expand_path(File.dirname(__FILE__)+'/../lib/aged_brie.rb')

describe AgedBrie do
  it "increases it's quality every day" do
    brie = AgedBrie.new("cheesy", 10, 2)
    brie.update_stats
    brie.sell_in.should equal 9
    brie.quality.should equal 3
  end

  it "increases twice it's quality when the sell day has passed" do
    brie = AgedBrie.new("kinda blue", 0, 2)
    brie.update_stats
    brie.quality.should equal 4
  end

  it "can't have more than 50 quality points" do
    brie = AgedBrie.new("cheesy", 10, 50)
    brie.update_stats
    brie.quality.should equal 50
  end 
end