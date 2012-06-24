require 'item.rb'

class AgedBrie < Item

  def update_stats
    decrease_sell_in
    increase_quality if has_not_reached_max_quality
    increase_quality if has_not_reached_max_quality && @sell_in <= 0
  end
end