class ProfilesController < ApplicationController

    def index
        # render json: "Index method"
    end

    def new
        # render json: "New method"
        @profile = Profile.new
    end

    def create
        render json: params
    end

end