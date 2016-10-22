class App
  attr_reader :points
  attr_reader :app
  def initialize(app,author,points)
    @app = app
    @author = author
    @points = points
  end

  def description
      if @points <= 4
        score = "Poor"
      elsif  @points > 4 && @points <= 6
        score = "Good"
      elsif @points > 6 && @points <= 9
        score = "Very Cool"
      elsif @points == 10
        score = "Awesome"
      end

      if self.class == AndroidApp
        so = "Android"
      elsif self.class == IOSApp
        so = "iOS"
      else
        so = "web"
      end
    @author + " has developed " + @app + " for " + so + " and he has made a " + score + " application"
  end

  def compare (other_app)
    if self.points > other_app.points
      comparative = " is better than "
    elsif self.points < other_app.points
      comparative = " is worse than "
    elsif self.points == other_app.points
      comparative = " is equal to "
    end
    self.app + comparative + other_app.app
  end
end

class AndroidApp < App
end

class IOSApp < App
end

class WebApp < App
end
