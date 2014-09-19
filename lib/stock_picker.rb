def stock_picker(stock)
  max_profit = 0
  best_date = []
  stock.length.times do |buy_date|
    stock.length.times do |sell_date|
      next if sell_date <= buy_date
      profit = stock[sell_date] - stock[buy_date]
      if profit > max_profit
        max_profit, best_date = profit, [buy_date, sell_date]
      end
    end
  end
  best_date
end