# АЛГОРИТМ РЕШЕНИЯ ЗАДАЧИ
# Разбиваем текущую строку последовательности на подстроки - цепочки из повторяющихся цифр
# Следующая строка получается путем соединения строк вида: СV, где С - количество  символов в цепочке,
# V - сама цифра

count = 15
current_str = "1"
puts current_str
for num in 2..count
  str_parts = current_str.scan(/((.)\2*)/).map(&:first)
  current_str = str_parts.map{|str| str.size.to_s + str[0]}.join()
  puts current_str
end




