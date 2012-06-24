class Item

  attr_accessor :name, :sell_in, :quality

  MAX_QUALITY = 50
        
  def initialize (name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def decrease_quality
    @quality -= 1
  end

  def increase_quality
    @quality += 1
  end

  def has_not_reached_max_quality
    @quality < MAX_QUALITY
  end

  def reset_quality
    @quality = 0
  end

  def decrease_sell_in
    @sell_in -= 1
  end

  def update_stats
  end
end