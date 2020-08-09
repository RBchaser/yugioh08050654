class StatusesController < ApplicationController
    def index
        if params[:ttl_max] && params[:ttl_max]
            @statuses= Status.where(" ? <= (attack + defence) AND (attack + defence) <= ?", params[:ttl_min].to_i, params[:ttl_max].to_i).all
        else
            @statuses=Status.all
        end
        @stars=Star.all
    end

    def create
        Status.create(name:params["monster"]["name"],attack:params["monster"]["attack"],defence:params["monster"]["defence"],star_id:params["monster"]["star_id"])
        redirect_to"/"
    end

    def destroy
        status=Status.find(params[:id])
        status.destroy
        redirect_to"/"
    end

    def edit
        @status=Status.find(params[:id])
    end

    def update
        status=Status.find(params[:id])
        status.name=params["monster"]["name"]
        status.attack=params["monster"]["attack"]
        status.defence=params["monster"]["defence"]
        status.star_id=params["monster"]["star_id"]
        status.save
        redirect_to"/"
    end
end
