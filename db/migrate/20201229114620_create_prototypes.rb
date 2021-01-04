class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string        :title
      t.text          :catch_copy
      t.text          :concept
      t.text          :image
      t.references    :user, foreign_key: true
    end

    add_column :prototypes, :image, :string
  end
end
