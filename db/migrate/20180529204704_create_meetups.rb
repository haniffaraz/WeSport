class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :category
      t.string :name
      t.string :location
      t.timestamp :time
      t.text :description
      t.integer :host_id

      t.timestamps
    end
  end
end
