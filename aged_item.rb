require './item'

class AgedItem < Item
  def day_passes
    @quality += 1
    @quality = [50, @quality].min
    @sell_in = @sell_in - 1
  end
end
