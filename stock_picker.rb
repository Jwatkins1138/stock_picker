original_array = [7, 3, 6, 9, 15, 8, 6, 1, 10]
wierd_array = [10, 2, 2, 2, 2, 2, 2, 2, 1]
test_array = [2, 10, 3, 1, 10, 9, 3, 2, 1, 4]


def stock_picker(price_array)
    x = 0
    y = 0
    profit = 0
    days = []
    while x < price_array.length
      while y < price_array.length
        if (price_array[y] - price_array[x]) > profit 
          days = [x, y]
          profit = (price_array[y] - price_array[x])
        end
        y += 1
      end
      x += 1
      y = x
    end
    if days.empty?
      p 'no profitable trades'
    else
      p days
    end
  end

stock_picker(original_array)