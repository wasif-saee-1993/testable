require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Should not save post without title" do
    post = Post.new
    assert_not post.save, "Saved post without title"
  end

  test "Should save post with title" do
    post = Post.new(title: "Test")

    assert post.save, "Saved with ID title"
  end

  test "Post should have views" do
    post = Post.new(title: "Test2", views: 10)
    assert post.save, "Saved with ID title"
  end
end
