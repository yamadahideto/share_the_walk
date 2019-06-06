class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string    :image
      t.string    :name
      t.string    :kind
      t.string    :sex
      t.integer   :age
      t.integer   :time
      t.text      :course
      t.text      :notes
      t.timestamps
    end
  end
end
