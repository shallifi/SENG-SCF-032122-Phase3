class Dog

    def initialize(name, age, breed, image_url)
        @name = name
        @age = age
        @breed = breed
        @image_url = image_url
    end

    attr_accessor :name, :breed, :age, :image_url, :last_walked_at, :last_fed_at

    def walk
        @last_walked_at = Time.now
    end

    def feed
        @last_fed_at = Time.now
    end

    def needs_a_walk?
        if last_walked_at
            !last_walked_at.between?(4.hours.ago, Time.now)
        else
            true
        end
    end

    def hungry?
        if last_fed_at
            !last_fed_at.between?(4.hours.ago, Time.now)
        else
            true
        end
    end

    def print 
        puts ""
        puts self.name.light_green
        puts "  Age: #{self.age}"
        puts "  Breed: #{self.breed}"
        puts "  Image_Url: #{self.image_url}"
        puts "  Last Feed At: #{self.last_fed_at}"
        puts "  Last Walked At: #{self.last_walked_at}"
        puts ""
      end


    #get our name = attr_reader
    # def name
    #     @name
    # end

    # set our name = attr_writer
    # def name=(name)
    #     @name=name
    # end

end