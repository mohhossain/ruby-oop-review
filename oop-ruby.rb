require 'pry'

class Smartphones

    attr_reader :brand, :price, :camera
    attr_accessor :color

    @@count = 0

    def initialize(brandName, color, screenSize, storageSize, price, camera)
        @brand = brandName
        @color = color
        @screenSize = screenSize
        @storageSize = storageSize
        @price = price  
        @camera = camera
        @@count += 1

    end

    def setColor(color)
        self.color = color
    end

    def self.getCount
        @@count
    end

end

class AndroidPhone < Smartphones 
    @@PhotoTaken = 0
    def self.TakeAPhoto
        puts "Photo is taken"
        @@PhotoTaken += 1 
    end

    # def self.GetPhotoCount
    #     @@PhotoTaken
    # end

    def self.getAndroidCount
        @@AndroidCount
    end

end

iphone = Smartphones.new("Apple", "Christmas Red", "6.1", "256 gb", "1099", "45 mp")
puts iphone.color

androidPhone = Smartphones.new("Samsung", "White", "6.1", "256 gb", "1299", "108 mp")
pixel = Smartphones.new("Google", "White", "6.1", "256 gb", "1299", "45 mp")

galaxy = AndroidPhone.new("Samsung", "White", "6.1", "256 gb", "1299", "108 mp")


iphone.color = "Gold"
puts iphone.brand
puts iphone.price
puts iphone.camera
puts iphone.color

pixel.setColor('Black')
puts pixel.color

puts "Number of smartphones created: #{Smartphones.getCount}"

puts AndroidPhone.TakeAPhoto
puts AndroidPhone.TakeAPhoto
puts AndroidPhone.TakeAPhoto
puts AndroidPhone.TakeAPhoto

# puts iphone.class

# puts "Random".class