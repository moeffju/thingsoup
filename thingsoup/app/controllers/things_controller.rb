class ThingsController < ApplicationController
  def index
    
    @things = Thing.list

    respond_to do |format|
      format.html
    end
  end
end
