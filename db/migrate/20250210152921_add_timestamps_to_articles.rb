# class AddTimestampsToArticles < ActiveRecord::Migration
#   def change
#     add_column :articles, :created_at, :datetime
#     add_column :articles, :updated_at, :datetime
#   end
# end


class AddTimestampsToArticles < ActiveRecord::Migration
  def change
    unless column_exists?(:articles, :created_at) && column_exists?(:articles, :updated_at)
      add_timestamps :articles, null: true
    end
  end
end
