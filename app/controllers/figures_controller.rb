class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    erb :'/figures/index'
  end

  get "/figures/new" do
    erb :'/figures/new'
  end

  post "/figures" do
    puts params
  end

  get "/figures/:id/edit" do
    @landmark = Landmark.find(params[:id])
    erb :'/figures/edit'
  end

  post "/figures/:id/edit" do
    puts params
  end

  get "/figures/:id" do
    @landmark = Landmark.find(params[:id])
    erb :'/figures/show'
  end


end
