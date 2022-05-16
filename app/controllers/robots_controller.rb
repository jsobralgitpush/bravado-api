class RobotsController < ApplicationController
    def index
        @robots = Robot.all
        filter_by_query if params[:query].present?
    end

    private
    def filter_by_query
        @robots = @robots.ransack(
            name_or_title_or_address_or_email_cont: params[:query]
        ).result
    end
end
