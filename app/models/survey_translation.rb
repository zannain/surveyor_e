class SurveyTranslation < ActiveRecord::Base
    include Surveyor::Models::SurveyTranslationMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end