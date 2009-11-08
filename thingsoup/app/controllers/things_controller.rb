class ThingsController < ApplicationController
  layout 'standard'

  def index
    @things = Thing.new.list
  end
  
  def show
    @thing = Thing.new.get(params[:id])
  end
end
