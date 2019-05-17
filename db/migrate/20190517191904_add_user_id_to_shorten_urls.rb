class AddUserIdToShortenUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :shorten_urls, :user_id, :integer
  end
end
