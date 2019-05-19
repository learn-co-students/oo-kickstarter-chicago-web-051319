class Project

  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def title
    @title
  end
  
  def backers
    @backers
  end
  
  def add_backer(new_backer)
    if !@backers.include?(new_backer)  
       @backers << new_backer
       new_backer.back_project(self)
    end
  end
  
end