# require_relative '../APL_branches.rb'
require_relative '../APL_branches/scraper.rb'

class APLBranches::Controller

  def self.greeting
    puts "Hello! Welcome to APL Branches. Here is a list of each branch of the Austin Public Library:"
    self.list
  end

  #eventually add capability to browse by list of names or by branches open for a given day

    input = gets.chomp

    until input.to_i > 0 || input == "exit" || input == "list"
      puts "Sorry - I don't understand. Please enter a number from 1 - #{APLBranches::Scraper.all_branches.count} or 'exit':"
      input = gets.chomp
    end

    if input.downcase == "exit"
      puts "Ok, see you later!"
      return nil
    elsif input == "list"
      self.list
    elsif input.to_i > 0 && input.to_i <= APLBranches::Scraper.all_branches.count

  end

  def self.list
    APLBranches::Scraper.all_branches.each_with_index {|branch, index| puts "#{index+1}. #{branch}"}
    puts "Want to learn more? Enter a number from the list above. You can also enter 'list' to see the list again, or 'exit' to leave."
  end

  def self.browse_branches
  end


end
