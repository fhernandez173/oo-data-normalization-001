class Song

  attr_accessor :artist, :title

  def initialize
    @title
    @artist
  end

  def slugify
    filename = @title.downcase.gsub!(' ','_')
    File.open("tmp/#{filename}.txt", "w+") do |f|
      f.write("#{@artist.name} - #{@title}")
      f.close
    end
  end

end

# http://stackoverflow.com/questions/7911669/create-file-in-ruby
# File.open("out.txt", [your-option-string]) {|f| f.write("write your stuff here") }
# where your options are:
#
# r - Read only. The file must exist.
# w - Create an empty file for writing.
# a - Append to a file.The file is created if it does not exist.
# r+ - Open a file for update both reading and writing. The file must exist.
# w+ - Create an empty file for both reading and writing.
# a+ - Open a file for reading and appending. The file is created if it does not exist.
#
# In your case, w is preferable.
#
# OR you could have:
#
# out_file = File.new("out.txt", "w")
# #...
# out_file.puts("write your stuff here")
# #...
# out_file.close
