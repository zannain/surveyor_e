class ValidationCondition < ActiveRecord::Base
    include Surveyor::Models::ValidationConditionMethods

    def self.included(base)
    end
    def initialize(*args)
        super(*args)
        default_args
    end
end