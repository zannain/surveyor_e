survey "Sports survey" do
    section "Sports history " do
        q_1 "Did you play sports in school?", :pick => :one
        a_1 "Yes"
        a_2 "No"

        q_2 "What sport did you play?"
        a_1 :string
        dependency :rule => "A"
        condition_A :q_1, "==", :a_1

        q_3 "If you could have tried a sport, what sport would you have tried?", :display_type => :dropdown, :pick => :one
        a "Basketball"
        a "Baseball"
        a "Tennis"
        a "Track"
        a "Wrestling"
        a "Snowboarding"
        a "Skiing"
        dependency :rule => "B"
        condition_B :q_1, "==", :a_2 

        q_4 "What do you enjoy most about this sport you selected?"
        a_1 :text

        q_5 "What sort of sports do you enjoy most?", :pick => :one, :display_type => :inline
        a_1 "Land"
        a_2 "Water"
        a_3 "Air"

        q_6a "What if you were offered the opportunity to play a land sport professionally, what sport would it be?", :display_type => :dropdown
        dependency :rule => "A"
        condition_A :q_5, "==", {:dropdown_value => ["Football", "Basketball", "Baseball", "Track and Field", "Mixed Martial Arts", "Tennis", "Badminton", "Volleyball", "Wrestling", "Mountain biking", "Snowboarding", "Fishing"].each{ |sport| a sport }, :answer_reference => "1"}

        q_6b "What if you were offered the opportunity to play a water sport professionally, what sport would it be?", :display_type => :dropdown
        dependency :rule => "B"
        condition_B :q_5, "==", {:dropdown_value => ["Swimming", "Diving", "Canoeing", "Kayaking"].each{ |sport| a sport }, :answer_reference => "2"}
        
        q_6c "What if you were offered the opportunity to play a air sport professionally, what sport would it be?", :display_type => :dropdown
        dependency :rule => "C"
        condition_C :q_5, "==", {:dropdown_value => ["Banzai Skydiving", "Paragliding", "Hot Air Balooning", "Bungee Jumping"].each{ |sport| a sport }, :answer_reference => "3"}

    end

end
