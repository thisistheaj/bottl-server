class BottlsController < ApplicationController
  def index
	  @bottls = Bottl.all
	  render json: @bottls
  end

  def show
	  @bottl = Bottl.find(params[:id])
	  render json: @bottl
  end

  def closest
	  @lng = params[:longitude].to_f
	  @lat = params[:latitude].to_f
	  @miles = params[:miles].to_f
	  @bottls =  Bottl.within(@miles,:origin => [@lat,@lng])
	  render json: @bottls
  end

  def new

  end
  
  def create
	  @bottl = Bottl.new(bottl_params)
	  @bottl.save
	  render json: @bottl 
  end

  def destroy 
	  @bottl = Bottl.find(params[:id])
	  @bottl.destroy
	  render json: {:status => "success"}
  end

  private
  	def bottl_params
            params.require(:bottl).permit(:sender, :message, :latitude, :longitude)
	end

end
