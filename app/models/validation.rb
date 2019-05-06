class Validation < ActiveRecord::Base
    include Surveyor::Models::ValidationMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end