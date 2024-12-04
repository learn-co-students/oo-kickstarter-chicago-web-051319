require "pry"

class Backer

    attr_reader :backed_projects, :name

    def initialize(name)
        @name = name
        @backed_projects = []

    end

    def back_project(title)
        #binding.pry
        backed_projects << title
        title.backers << self

    end






end
