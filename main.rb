require 'colorize'
require 'pry'

def puts_git(cmd)
  binding.pry
  puts `git #{cmd} -h`
end

def menu
  puts 'MAIN MENU'.colorize(:cyan)
  puts '1: Enter Git Command'.colorize(:blue)
  puts '2: Exit'.colorize(:color => :light_blue, :background => :red)
  choice = gets.to_i

  case choice
    when 1
      puts 'Enter A Git Command'
      puts_git(gets.strip)
    when 2
      puts 'Thanks for using the git command'
      exit
    else
      puts 'Invalid Choice!'
      menu
  end
  menu
end

menu
