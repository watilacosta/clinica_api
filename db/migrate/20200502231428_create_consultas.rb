class CreateConsultas < ActiveRecord::Migration[6.0]
  def change
    create_table :consultas do |t|
      t.references :paciente, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true
      t.datetime :data
      t.boolean :retorno
      t.string :obs

      t.timestamps
    end
  end
end
