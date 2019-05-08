require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/joke'
require './lib/user'

class UserTest <Minitest::Test

  def test_it_exists
    user = User.new(name)
    sal = User.new("Sal")

    assert_instance_of User, user
  end

  def test_user_has_jokes
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    user = User.new(name)
    sal = User.new("Sal")
    sal.jokes
    assert_equal [], sal.jokes
    sal.learn
    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_user_can_tell_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    user = User.new(name)
    sal = User.new("Sal")
    ali = User.new("Ali")
    sal.learn
    sal.jokes
    sal.tell(ali, joke_1)
    assert_equal [joke_1], ali.jokes
    sal.tell(ali, joke_2)
    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_joke_by_id
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    user = User.new(name)
    sal = User.new("Sal")
    ali = User.new("Ali")
    sal.learn
    sal.jokes
    sal.tell(ali, joke_1)
    assert_equal joke_1, ali.joke_by_id(1)
  end
end
