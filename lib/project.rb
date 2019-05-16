class Project

  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    # backer.back_project()
    backer.backed_projects << self
  end


end


ropes = Project.new("All The Ropes")
arel = Backer.new("Arel")
ropes.add_backer(arel)
