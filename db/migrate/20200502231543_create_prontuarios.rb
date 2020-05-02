class CreateProntuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :prontuarios do |t|
      t.references :consulta, null: false, foreign_key: true
      t.text :historico
      t.text :receituario
      t.text :exames

      t.timestamps
    end
  end
end
