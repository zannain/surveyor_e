class Dependency < ActiveRecord::Base
    include Surveyor::Models::DependencyMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end