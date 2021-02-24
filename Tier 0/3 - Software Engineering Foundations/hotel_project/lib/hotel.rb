require_relative "room"

class Hotel
  def initialize(name, rooms)
    @name = name
    @rooms = {}
    rooms.keys.each do |key|
      @rooms[key] = Room.new(rooms[key])
    end
  end

  def name
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(name)
    @rooms.key?(name)
  end

  def check_in(person, room_name)
    if !self.room_exists?(room_name)
      puts "sorry, room does not exist"
    else
      if rooms[room_name].add_occupant(name)
        puts "check in successful"
      else
        puts "sorry, room is full"
      end
    end
  end

  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0 }
  end

  def list_rooms
    @rooms.keys.each do |key|
      puts "#{key} #{@rooms[key].available_space}"
    end
  end
end
