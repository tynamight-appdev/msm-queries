class ActorsController < ApplicationController
  def index
    render ({ :template => "actor_templates/index.html.erb"})
  end

  def details
    @act_id = params.fetch("an_id")
    @act = Actor.where({ :id => @act_id}).at(0)
    render ({ :template => "actor_templates/bio.html.erb"})
  end
end