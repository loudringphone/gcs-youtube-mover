class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.integer :presentation_id
      t.string :cloud_url
      t.integer :mission_id
      t.string :agency_name
      t.string :assignee_name
      t.string :gospel
      t.string :country

      t.boolean :is_downloaded, default: false
      t.string :download_directory
      t.boolean :is_uploaded, default: false

      t.timestamps
    end

    add_index :videos, :presentation_id, unique: true
  end
end