class MobileController < ApplicationController
    def list 
        @spots = Restaurant.all.paginate(page: params[:page], per_page: 5)
        render json: @spots 
    end
end
