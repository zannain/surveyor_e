class ResponsesController < ApplicationController

    def index
        @responses = ResponseSet.joins(:responses, :survey)
        @surveys = []
        @responses.each do |s|
            @surveys.push(Survey.find(s.survey_id))
        end
        @response_set =[]
        Response.all.each do |r|
            @response_set.push(ResponseSet.find(r.response_set_id))
        end
    end
end
