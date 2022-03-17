class DirectorsController < ApplicationController
  def index
    render ({ :template => "director_templates/index.html.erb"})
  end

  def eldest 
    @old_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render ({ :template => "director_templates/eldest.html.erb"})
  end

  def youngest
    @young_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render ({ :template => "director_templates/youngest.html.erb"})
  end 

  def details
    @director_id = params.fetch("an_id")
    @director_indiv = Director.where({ :id => @director_id}).at(0)
    render ({ :template => "director_templates/bio.html.erb"})
  end
end