require 'pry'

class Project

  attr_accessor :name
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
    # backer.back_project self
  end

end
