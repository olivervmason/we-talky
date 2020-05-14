class ProfilesController < ApplicationController

    before_action :authenticate_user!

    def index
        @profiles = Profile.all
        @myprofile = current_user.profile
    end

    def new
        @profile = Profile.new
        @myprofile = current_user.profile
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
            redirect_to profile_path(@profile.id)
        end
    end

    def show
        @profile = Profile.find(params["id"])
        @myprofile = current_user.profile
    end

    def edit
        # @profile = Profile.find(params["id"])
        @profile = current_user.profile
        @myprofile = current_user.profile
        puts @profile.id
        puts params["id"]
        if params["id"] == @profile.id.to_s
            puts "here"
            render "edit"
        else
            redirect_to profile_path(@profile.id)
        end
    end

    def update
        # render json: "Update method"
        @profile = current_user.profile
        if @profile
        #    render json: "@profile is true"
            @profile.update(profile_parameters)
            puts @profile.errors.full_messages
            rerender_if_error("edit")
        else 
        #     redirect_to profiles_path
            render json: "@profile is false"
            puts @profile
            puts "Look here ^^"
        end
    end

    def destroy
        # render json: "Destroy method"
        if @profile = current_user.profile
            @profile.destroy
        end
        redirect_to profiles_path
    end

    private

    def profile_parameters
        params.require(:profile).permit(:name, :native_language, :target_language, :nationality, :nearest_city, :preferred_platform, :interests, :profile_description, :picture)
    end

    def rerender_if_error(template_name)
        if @profile.errors.any?
            render template_name
        else
            redirect_to profile_path(@profile.id)
        end
    end

end