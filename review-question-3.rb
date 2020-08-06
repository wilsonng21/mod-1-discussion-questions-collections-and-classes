# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class User
    attr_accessor :name

    def initialize(name_param)
        @name = name_param
    end

    def photos 
        Photo.new
    end

end

class Photo
    attr_accessor :user 

    def comments 
        Comment.all ##how to make comments just return instance and no .comment string?
    end

    def make_comment(comment_param)
        Comment.new(comment_param) 
    end               

end


class Comment 

    attr_accessor :comment

    @@comment = []
    def initialize(comment_param)
        @comment = comment_param
        @@comment << self
    end

    def self.all
        @@comment 
    end


    
end


p sandwich_photo = Photo.new
p sophie = User.new("Sophie")

p sandwich_photo.user = sophie
p sandwich_photo.user.name
# # => "Sophie"
p sophie.photos
# => [#<Photo:0x00007fae2880b370>]


# sandwich_photo.comments
# # => []

p sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
# p sandwich_photo.comments
# # => [#<Comment:0x00007fae28043700>]

# p Comment.all
# #=> [#<Comment:0x00007fae28043700>]
