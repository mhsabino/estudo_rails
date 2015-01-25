class FlowersController < ApplicationController
  def index
  	url_id = params[:id]
  	@id = url_id ? url_id : 0
  end

  def show
  	@text = "Ola mundo show!!!"
  end

end
