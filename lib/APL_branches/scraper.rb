require 'pry'

require_relative '../APL_branches/branches.rb'

class APLBranches::Scraper

  attr_accessor :hours, :address, :name, :phone

  @@all_branches = []

  def self.scrape_branches
  end

  def self.make_branches
  end

  def self.all_branches
    @@all_branches.uniq
  end


end
