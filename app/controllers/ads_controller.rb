class AdsController < ApplicationController
	def new
	@ad = Ad.new
	end
	
	def show
	@ad = Ad.find(params[:id])
	end
	
	def index
	@ads = Ad.all
	end
	
	def create
	@ad = Ad.new(ad_params)
	@ad.save
	end

private

def ad_params
  params.require(:ad).permit(:name, :price, :description, :seller_id, :email, :img_url )
end	
	
end
