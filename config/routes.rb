Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/movies", { :controller => "movies", :action => "index"})

  get("/actors", { :controller => "actors", :action => "index"})

  get("/directors/eldest", { :controller => "directors", :action => "eldest"})

  get("/directors/youngest", { :controller => "directors", :action => "youngest"})

  get("/directors/:an_id", { :controller => "directors", :action => "details"})

  get("/movies/:an_id", { :controller => "movies", :action => "details"})

  get("/actors/:an_id", { :controller => "actors", :action => "details"})

end
