class AddTopicIdToSponsoredPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :sponsored_posts, :topic, foreign_key: true
  end
end
