survey "World Travelling" do
    section "Where to?" do
        q_1 "What continent would you most like too visit?", :pick=>:one, :display_type => :dropdown 
        ["North America", "South America", "Africa", "Europe", "Asia", "Antartica", "Australia"].each{ |country| a country }

        q_2 "What do you like most about traveling to other countries?", :pick => :any 
        a_1 "Trying the different cuisines"
        a_2 "Taking pictures of famous landmarks"
        a_3 "Understanding the countries history"
        a_4 "Taking naps"

        repeater "What countries have you visited?" do 
            q "Country"
            a :string
            q "City"
            a :string 
        end
    end
end

