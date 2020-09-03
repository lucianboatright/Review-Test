def band_pass_filter(arr, min = 40, max = 1000)

  arr.map do |item|
    if item < min 
      item = min 
    elsif item > max
      item = max
    else 
      item
    end
  end



end