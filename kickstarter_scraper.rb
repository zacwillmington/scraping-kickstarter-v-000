# require libraries/modules here
require 'nokogiri'
require 'pry'

# projects: kickstarter.css("li.project.grid_4")

# title: project.css("h2.bbcard_name strong a").text

# image link: project.css("div.project-thumbnail a img").attribute("src").value

#BLURB
#project.css("p.bbcard_blurb").text


def create_project_hash
    html = File.read('fixtures/kickstarter.html')
    kickstarter = Nokogiri::HTML(html)

    projects = {}

    kickstarter.css("li.project.grid_4").each do |project|
        projects[project] = {}
    end

    projects
    #binding.pry
end

create_project_hash
