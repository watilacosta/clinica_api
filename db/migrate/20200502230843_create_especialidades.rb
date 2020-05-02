class CreateEspecialidades < ActiveRecord::Migration[6.0]
  def change
    create_table :especialidades do |t|
      t.string :descricao

      t.timestamps
    end

    especialidades = [
      'Acupuntura',
      'Alergia e Imunologia',
      'Anestesiologia',
      'Angiologia',
      'Cancerologia',
      'Cardiologia',
      'Cirurgia Cardiovascular',
      'Cirurgia da Mão',
      'Cirurgia de Cabeça e Pescoço',
      'Cirurgia do Aparelho Digestivo',
      'Cirurgia Geral',
      'Cirurgia Pediátrica',
      'Cirurgia Plástica',
      'Cirurgia Torácica',
      'Cirurgia Vascular',
      'Clínica Médica',
      'Coloproctologia',
      'Dermatologia',
      'Endocrinologia e Metabologia',
      'Endoscopia',
      'Gastroenterologia',
      'Genética Médica',
      'Geriatria',
      'Ginecologia e Obstetrícia',
      'Hematologia e Hemoterapia',
      'Homeopatia',
      'Infectologia',
      'Mastologia',
      'Medicina de Família e Comunidade',
      'Medicina do Trabalho',
      'Medicina de Tráfego',
      'Medicina Esportiva',
      'Medicina Física e Reabilitação',
      'Medicina Intensiva',
      'Medicina Legal e Perícia Médica',
      'Medicina Nuclear',
      'Medicina Preventiva e Social',
      'Nefrologia',
      'Neurocirurgia',
      'Neurologia',
      'Nutrologia',
      'Oftalmologia',
      'Ortopedia e Traumatologia',
      'Otorrinolaringologia',
      'Patologia',
      'Patologia Clínica/Medicina Laboratorial',
      'Pediatria',
      'Pneumologia',
      'Psiquiatria',
      'Radiologia e Diagnóstico por Imagem',
      'Radioterapia',
      'Reumatologia',
      'Urologia',
    ]

    especialidades.each do |e|
      Especialidade.create!(
        descricao: e
      )
    end

    puts "#{Especialidade.all.count} especialidades médicas cadastradas."
  end
end
