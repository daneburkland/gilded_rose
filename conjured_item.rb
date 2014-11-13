class ConjuredItem < Item
  def day_passes
    @quality -= 2
    @quality = [@quality, 0].max
    @sell_in = @sell_in - 1
  end
end