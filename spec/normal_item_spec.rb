require File.expand_path(File.dirname(__FILE__)+'/../lib/normal_item.rb')

describe NormalItem do
  it "decreases it's quality and it's sell_in in one point every day when the sell day hasn't passed yet" do
    item = NormalItem.new("+5 Dexterity Vest", 10, 20)
    item.update_stats
    item.sell_in.should equal 9
    item.quality.should equal 19
  end

  it "decreases it's quality twice if it's sell day has passed" do
    item = NormalItem.new("item", 0, 10)
    item.update_stats
    item.sell_in.should equal -1
    item.quality.should equal 8
  end
end