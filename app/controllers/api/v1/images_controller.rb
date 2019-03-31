require 'pry'


class Api::V1::ImagesController < ApplicationController
	before_action :find_image, only: [:update]

	def index
		@images = Image.all
		render json: @images
	end

	def create
		title = params[:title]
		url = params[:url]
		attribution = params[:attribution]
		notes = params[:notes]
		live = params[:live]

		@image = Image.new(title: title, url: url, user_id: @current_user.id, attribution: attribution, notes: notes, live: live)

		@image.user = @current_user
		@image.save
		render json: @image

	end

	def update
		@image.update(image_params)
		render json: @image


	end



	private

	def find_image
		@image = Image.find(params[:id])

	end

	def image_params
		params.require(:image).permit(:id, :title, :url, :attribution, :notes, :live, :user_id)
	end



end
