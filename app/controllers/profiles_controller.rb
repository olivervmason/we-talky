class ProfilesController < ApplicationController

    before_action :authenticate_user!

    def index
        # render json: "Index method"
        @profiles = Profile.all
    end

    def new
        # render json: "New method"
        @profile = Profile.new
    end

    def create
        # render json: params
        @profile = Profile.create(profile_parameters)
        puts @profile.errors.full_messages
        # if (@profile.errors.any?)
        #    # populate later         
        # end
        # return redirect_to "/profiles"
    end

    def show
        render json: "Show method"
    end

    def update
        render json: "Update method"
    end

    def destroy
        render json: "Destroy method"
    end

    private

    def profile_parameters
        params.require(:user)
        params.require(:name)
        params.require(:native_language)
        params.require(:target_language)
        params.require(:nationality)
        params.permit(:nearest_city, :preferred_platform, :interests, :profile_description, :picture)
    end

end