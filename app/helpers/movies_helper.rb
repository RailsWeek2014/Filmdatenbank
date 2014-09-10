module MoviesHelper

  def view_comment(content)
    content.chars.each_with_index do |c,i|
      print c
      print "\n" if i%20 == 0
    end
  end

end
