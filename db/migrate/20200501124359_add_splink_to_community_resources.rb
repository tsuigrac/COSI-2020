class AddSplinkToCommunityResources < ActiveRecord::Migration[5.1]
  def change
    add_column :community_resources, :splink, :string
  end
end
