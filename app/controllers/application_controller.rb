class ApplicationController < ActionController::Base
  before_action:get_star
    def get_star
        @stars=Star.all
        @totals=Total.all
    end
end
