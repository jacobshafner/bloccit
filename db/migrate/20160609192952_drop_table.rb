class DropTable < ActiveRecord::Migration
  def change
    drop_table :sponsored_posts
  end
end
