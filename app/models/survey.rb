class Survey < ActiveRecord::Base
    include Surveyor::Models::SurveyMethods

    def self.included(base)
    end

    def initialize(*args)
        super(*args)
        default_args
      end

    def title
      "Custom #{super}"
    end
  end