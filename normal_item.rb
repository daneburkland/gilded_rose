require './item'

class NormalItem < Item
  def day_passes
    @quality -= 1
    @quality = [@quality, 0].max
    @sell_in = @sell_in - 1
  end
end