class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :contect
      t.integer :origin_tweet
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
