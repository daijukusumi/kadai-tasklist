(1..100).each do |number|
  Task.create(content: 'test' + number.to_s, status: 'test' + number.to_s)
end