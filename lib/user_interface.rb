# #JOB: Deals with I/O
# class UserInterface
#   result = 0
#   while true do
#     input = gets.chomp
#     hash = TextConverter.new(input).get_operator_and_number
#     break if hash[:operator] == 'exit'.to_sym
#     if hash[:operator] != 'cancel'.to_sym
#       cal = Calculator.new(result)
#       result = cal.exicute(hash)
#     else 
#       result = 0
#     end
#   end
# end