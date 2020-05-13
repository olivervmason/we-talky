class ProfilesController < ApplicationController

    before_action :authenticate_user!

    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
    end

    def create
        if current_user.profile
            render "profile"
        else        
            @profile = current_user.create_profile(profile_parameters)
            puts @profile.errors.full_messages    
        end

        if @profile.errors.any? 
            render "new"
        else
            redirect_to profile_path
        end

    end

    def show
        @profile = Profile.find(params["id"])
    end

    def edit
        @profile = Profile.find(params["id"])
        # @profile = current_user.profiles.find_by_id(params[:id])
        if @profile 
            render "edit"
        else
            redirect_to profiles_path
        end
    end

    def update
        if @profile
            @profile.update(listing_params)
            puts @profile.errors.full_messages
            rerender_if_error("edit")
        else 
            redirect_to profiles_path
        end
    end

    def destroy
        render json: "Destroy method"
    end

    private

    def profile_parameters
        params.require(:profile).permit(:name, :native_language, :target_language, :nationality, :nearest_city, :preferred_platform, :interests, :profile_description, :picture)
    end

end