class WelcomeController < ApplicationController
    def index
        @current_user = current_user
        if current_user
            @enrollments = Enrollment.where(user_id: @current_user.id) 
        end
    end
end
