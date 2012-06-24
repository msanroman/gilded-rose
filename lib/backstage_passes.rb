require 'item.rb'

class BackstagePasses < Item

  def update_stats
    decrease_sell_in
    if @sell_in < 0
      reset_quality
    elsif @sell_in <= 5
      3.times { increase_quality }
    else 2.times { increase_quality }
    end
  end
end