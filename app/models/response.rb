class Response < ActiveRecord::Base
    include Surveyor::Models::ResponseMethods

    def self.included(base)
        base.send :user_id
    end
    def initialize(*args)
        super(*args)
        default_args
    end
  end