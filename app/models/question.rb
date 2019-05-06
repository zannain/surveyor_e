class Question < ActiveRecord::Base
    include Surveyor::Models::QuestionMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end