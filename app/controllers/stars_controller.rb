class StarsController < ApplicationController
    def show
        @statuses=Status.where(star_id:params[:id])
    end
end
