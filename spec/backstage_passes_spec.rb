require File.expand_path(File.dirname(__FILE__)+'/../lib/backstage_passes.rb')

describe BackstagePasses do

  it "increases it's quality by 2 when there are 10 days or less" do
    passes = BackstagePasses.new("concert", 10, 2)
    passes.update_stats
    passes.quality.should equal 4
  end
  
  it "increases it's quality by 3 when there are 5 days or less" do
    passes = BackstagePasses.new("concert", 5, 2)
    passes.update_stats
    passes.quality.should equal 5
  end
  
  it "drops it's quality to 0 after the concert" do
    passes = BackstagePasses.new("concert", 0, 100)
    passes.update_stats
    passes.quality.should equal 0
  end
end