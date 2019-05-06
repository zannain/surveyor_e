class Answer < ActiveRecord::Base
    include Surveyor::Models::AnswerMethods

    def self.included(base)
    end

    def initialize(*args)
        super(*args)
        default_args
      end

  end