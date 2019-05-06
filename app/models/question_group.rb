class QuestionGroup < ActiveRecord::Base
    include Surveyor::Models::QuestionGroupMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end