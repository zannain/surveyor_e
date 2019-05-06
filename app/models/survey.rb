class Survey < ActiveRecord::Base
    include Surveyor::Models::SurveyMethods

    def self.included(base)
    end

    def initialize(*args)
        super(*args)
        default_args
      end
  end