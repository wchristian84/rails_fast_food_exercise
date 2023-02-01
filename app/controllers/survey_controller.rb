class SurveyController < ApplicationController
    def end
        session[:open_ended] = params[:open_ended]
        
        case session[:quality]
            when "5"
                @quality = "Very Good"
            when "4"
                @quality = "Mostly Good"
            when "3"
                @quality = "Okay"
            when "2"
                @quality = "Not Very Good"
            when "1"
                @quality = "Very Bad"
        end

        case session[:recommendation]
            when "5"
                @recommendation = "Very Likely"
            when "4"
                @recommendation = "Likely"
            when "3"
                @recommendation = "Undecided"
            when "2"
                @recommendation = "Not Very Likely"
            when "1"
                @recommendation = "Very Unlikely"
        end

    end

    def home
        redirect_to "/survey/rating"
    end

    def multiple_choice
        session[:rating] = params[:rating]
    end

    def open_ended
        session[:quality] = params[:quality]
        session[:recommendation] = params[:recommendation]
    end

    def rating
    end
end