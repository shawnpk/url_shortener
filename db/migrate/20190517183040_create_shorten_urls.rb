class CreateShortenUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shorten_urls do |t|
      t.string  :body,           null: false

      t.string  :base_url,       null: false
      t.string  :short_link,     null: false
      t.string  :complete_short, null: false

      t.integer :click_count,    default: 0

      t.timestamps
    end

    add_index :shorten_urls, :short_link,     unique: true
    add_index :shorten_urls, :complete_short, unique: true
  end
end
