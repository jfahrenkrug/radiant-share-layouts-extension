ActionController::Routing::Routes.draw do |map|
  # I'm sure this can be done more elegantly, but without it, RSpec complains about routing errors
  if ENV["RAILS_ENV"] == "test"
    map.connect ':controller/:action/:id'
  end
end