class DependencyCondition < ActiveRecord::Base
    include Surveyor::Models::DependencyConditionMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end
