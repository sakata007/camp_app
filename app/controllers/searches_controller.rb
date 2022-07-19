class SearchesController < ApplicationController
    def search 
        @range = params[:range]

        if @range == "post"
            @posts = Post.looks(params[:search], params[:word])
        else
            @campsites = Campsite.looks(params[:search], params[:word])
        end
    end
end
