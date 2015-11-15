require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "add comment" do
  	user = FactoryGirl.create(:user)
  	 sign_in user
     place = FactoryGirl.create(:place)

    assert_difference 'place.comments.count' do
      post :create, :place_id => place.id, :comment => {
        :message => 'bleh',
        :rating => '1 stars'
        }
    end

  assert_redirected_to place_path(place)
  comment = Comment.last
  assert_equal 1, place.comments.count
  end

end
 

