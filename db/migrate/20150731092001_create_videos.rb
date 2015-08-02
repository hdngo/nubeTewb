class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :yt_id
      t.string :link
      # append the video.id
      t.string :thumbnail
      # video.thumbnail_url
      t.string :title
      # video.title
      t.string :channel 
      # video.channel_title
      t.text :description
      # video.description
      t.integer :likes
      # video.like_count
      t.integer :dislikes
      # video.dislike_count

      t.references :category, index: true
      t.timestamps null: false
    end
  end
end
