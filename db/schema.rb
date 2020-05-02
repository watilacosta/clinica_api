# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_02_231543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultas", force: :cascade do |t|
    t.bigint "paciente_id", null: false
    t.bigint "medico_id", null: false
    t.bigint "funcionario_id", null: false
    t.datetime "data"
    t.boolean "retorno"
    t.string "obs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_consultas_on_funcionario_id"
    t.index ["medico_id"], name: "index_consultas_on_medico_id"
    t.index ["paciente_id"], name: "index_consultas_on_paciente_id"
  end

  create_table "convenios", force: :cascade do |t|
    t.string "empresa"
    t.string "cnpj"
    t.string "endereco"
    t.string "cidade"
    t.string "uf"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "especialidades", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "telefone"
    t.string "email"
    t.string "password_digest"
    t.integer "cargo"
    t.string "cpf"
    t.string "ctps"
    t.string "pis"
    t.string "endereco"
    t.string "cidade"
    t.string "uf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.string "pis"
    t.string "crm"
    t.string "ctps"
    t.string "cidade"
    t.string "uf"
    t.bigint "especialidade_id", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["especialidade_id"], name: "index_medicos_on_especialidade_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "endereco"
    t.string "cidade"
    t.string "uf"
    t.string "telefone"
    t.string "cpf"
    t.string "rg"
    t.string "orgao_emissor"
    t.date "dt_nasc"
    t.integer "sexo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prontuarios", force: :cascade do |t|
    t.bigint "consulta_id", null: false
    t.text "historico"
    t.text "receituario"
    t.text "exames"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consulta_id"], name: "index_prontuarios_on_consulta_id"
  end

  add_foreign_key "consultas", "funcionarios"
  add_foreign_key "consultas", "medicos"
  add_foreign_key "consultas", "pacientes"
  add_foreign_key "medicos", "especialidades"
  add_foreign_key "prontuarios", "consultas"
end
