class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image, null: false
      t.references :post, foreign_key: true, null: false

      t.timestamps
    end
  end
end


# foreign_keyとは?
# まず、データには一つ一つ識別するためのidがあります。これをPrimary Key(主キー)といい、Railsではidというカラム名でテーブル作成時に標準搭載されている.。
# そして、foreign_keyというのはその親のid(Primary Key)を保存するカラムというわけです。
# これにより、どの親に所属しているのか？というのを識別することができます。