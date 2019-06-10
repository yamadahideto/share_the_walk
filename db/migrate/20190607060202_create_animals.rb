class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string      :image    #画像
      t.string      :name,      null: false    #名前
      t.string      :kind,      null: false    #種類
      t.string      :sex,       null: false    #性別
      t.string      :age,       null: false    #犬の年齢
      t.string      :time,      null: false    #散歩時間
      t.text        :course                    #散歩コース
      t.text        :notes                     #注意事項
      t.references  :user,     foreign_key: true
      # t.references  :message,  foreign_key: true
      t.timestamps
    end
  end
end
