class User

  attr_reader :jokes, :name, :user, :joke, :learn
  def initialize(name)
    @name = name
    @jokes = []
    @learn = jokes
  end

  def learn
    @jokes << user.jokes(jokes)
  end

  def tell(user, @jokes)
    user.learn << user.jokes(jokes)
  end

  def joke_by_id
    user.jokes(id)
  end
end
