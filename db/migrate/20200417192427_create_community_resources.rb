class CreateCommunityResources < ActiveRecord::Migration[5.1]
  def change
    create_table :community_resources do |t|
      t.string :category
      t.string :name
      t.string :link
      t.string :email
      t.string :phone
      t.string :address
      t.string :contact
      t.string :description

      t.timestamps
    end
  end
end
