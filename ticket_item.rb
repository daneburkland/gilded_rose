require './item'

class TicketItem < Item
  def day_passes
    if @sell_in <= 0
      @quality = 0
    elsif @sell_in <= 5
      @quality += 3
      @quality = [50, @quality].min
    elsif @sell_in <= 10
      @quality += 2
      @quality = [50, @quality].min
    else
      @quality += 1
      @quality = [50, @quality].min
    end
    @sell_in = @sell_in - 1
  end
end