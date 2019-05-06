class ResponseSet < ActiveRecord::Base
    include Surveyor::Models::ResponseSetMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
    end
end