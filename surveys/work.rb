survey "Background Check" do
    section "Basic Information" do
        q_1 "What is your first name?", :display_type => :inline
        a :string

        q_2 "What is your last name?", :display_type => :inline
        a :string 
    
        q_3 "What is your ideal birth date?", :display_type => :inline
        a :datetime

        q_4 "DC or Marvel?", :display_type => :inline, :pick => :one 
        a_1 "Marvel"
        a_2 "DC"

        q_5 "Select your favorite Marvel Superhero", :pick => :one
        a_1 "Captain Marvel"
        a_2 "Black Panther"
        a_3 "Spider Man" 
        a_4 "Ironman" 
        a_5 "Captain America"
        a_6 "Black Widow"
        a_7 "Hulk" 
        a_8 "Thor" 
        a_9 "Hawkeye"
        dependency :rule => "A"
        condition_A :q_4, "==", :a_1

        q_6 "Select your favorite DC Superhero", :pick => :one
        a_1 "Batman"
        a_2 "Superman"
        a_3 "Wonder Woman"
        a_4 "Cyborg"
        a_5 "Aquaman"
        a_6 "Green Arrow"
        a_7 "Flash"
        dependency :rule => "A"
        condition_A :q_4, "==", :a_2
        
    end

end
