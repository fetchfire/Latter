class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.belongs_to :player, index: true
      t.belongs_to :badge, index: true

      t.timestamps
    end
  end
end
