require 'pry'
class Project
    attr_reader :name, :backers, :title
    
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end
end