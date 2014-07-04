class Club < ActiveRecord::Base
 # validates_length_of :name,
 #  { minimum: 5, message: "" }
 #  validates :name, presence: true, length: {maximum:10, message:""}

 def animSpeed(people, capacity)

  if people.nil?
    people = 0
  end
  if capacity.nil? || capacity < 1
    capacity = 100
  end

 hb = (people.to_f/capacity)

 if hb < 0.1
	hb = 0.1
elsif hb > 0.8
	hb = 0.80
end

return 1.0-hb

 end


def heartbeat(people,capacity)
  if people == nil
    people = 0
  end
  if capacity == nil || capacity < 1
    capacity = 100
  end
 hb = ((people.to_f/capacity)*100)
if hb > 80
  return "Insane!"
elsif hb > 60
  return "Party Rock!"
elsif hb > 40
  return "Chilling"
elsif hb > 20
  return "Almost empty come with friends!"
elsif hb >  10
  return "Definitely come with friends or else you are on your own"
elsif hb == 5
  return "TONIGHT IS GONNA BE A GOOD NIGHT"
elsif hb == 6
  return "WILD ON"
elsif hb == 7
  return "OF THE HOOK"
else
  "The place is close as of now"
end
end


end
