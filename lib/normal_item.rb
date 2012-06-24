require 'item.rb'

class NormalItem < Item

  def update_stats
    decrease_sell_in
    decrease_quality if @quality > 0
    decrease_quality if @sell_in <= 0
  end
end