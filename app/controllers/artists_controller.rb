class ArtistsController < ApplicationController

	before_action :set_artist, only: [:show, :edit, :update, :destroy]
	
	def index
		@artists = Artist.all
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.create(artist_params)
		redirect_to artist_path(@artist)
	end

	def edit
		
	end

	def update
		@artist.update(artist_params)
		redirect_to artist_path(@artist)
	end

	def show
		
	end

	def destroy
		@artist.destroy
		redirect_to artists_path
	end

	private

	def artist_params
		params.require(:artist).permit(:name, :bio)
	end

	def set_artist
		@artist = Artist.find_by_id(params[:id])
	end


end
