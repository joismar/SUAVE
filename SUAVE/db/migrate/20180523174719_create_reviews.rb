class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :idEscola
      t.string :nomeEscola
      t.integer :nota
      t.text :comentario

      t.timestamps
    end
  end
end
