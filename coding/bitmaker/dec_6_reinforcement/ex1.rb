seating_chart = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def assigned_seats(arr)
  arr.each_with_index do |row, row_num|
    row.each_with_index do |seat, seat_num|
      if seat == nil
        puts "Row #{arr[row_num + 1]} seat #{seat_num+1} is free. Do you want to sit there? (y/n)"
        print "> "
        answer = gets.chomp
        if answer == "y"
          puts "What is your name?"
          print "> "
          name = gets.chomp
          arr[row_num][seat_num] = name
          return arr
        end
      end
    end
  end
end



new_chart = assigned_seats(seating_chart)
puts new_chart.inspect
