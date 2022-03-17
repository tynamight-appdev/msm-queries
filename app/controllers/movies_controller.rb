class MoviesController < ApplicationController
  def index
    render ({ :template => "movie_templates/index.html.erb"})
  end

  def details
    @m_id = params.fetch("an_id")
    @m = Movie.where({ :id => @m_id}).at(0)
    @director_idn = @m.director_id
    @director = Director.where({ :id => @director_idn}).at(0)
    render ({ :template => "movie_templates/details.html.erb"})
  end
end