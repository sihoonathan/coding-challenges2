class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def padded(t)
    if t < 10
      "0#{t}"
    else
      "#{t}"
    end
  end

  def time_string
    @hour = @seconds / 3600
    @min = (@seconds - @hour * 3600) / 60
    @t_seconds = @seconds - @hour * 3600 - @min * 60
    @time_string = "#{padded(@hour)}:#{padded(@min)}:#{padded(@t_seconds)}"
    @time_string
  end
end
