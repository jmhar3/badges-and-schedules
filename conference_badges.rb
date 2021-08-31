# Write your code here.

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator names
    greetings = []
    names.each { |name| greetings << badge_maker(name) }
    greetings
end

def assign_rooms speakers
    room_assignments = []
    speakers.each.with_index(1) do |speaker, room|
        room_assignments << "Hello, #{speaker}! You'll be assigned to room #{room}!"
    end
    room_assignments
end

def printer attendees
    batch_badge_creator(attendees).each { |creator| puts creator }
    assign_rooms(attendees).each { |assignments| puts assignments }
end