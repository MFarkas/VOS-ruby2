#encoding: utf-8
namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Arthur Dent",
                 email: "AD@megadodo.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "user-#{n+1}@somepage.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
  task disc: :environment do
    Discipline.create!(name: ' Other')
    Discipline.create!(name: 'Hokej')
    Discipline.create!(name: 'Futbal')
    Discipline.create!(name: 'Basketbal')
    Discipline.create!(name: 'Volejbal')
    Discipline.create!(name: 'Tenis')
    Discipline.create!(name: 'Golf')
    Discipline.create!(name: 'Bowling')
    Discipline.create!(name: 'Petang')
    Discipline.create!(name: 'Curling')
    Discipline.create!(name: 'Counter Strike')
    Discipline.create!(name: 'Poker')
    Discipline.create!(name: 'Magic&Gathering')
    Discipline.create!(name: 'Wanted')
  end
  task loc: :environment do
    Location.create!(name: ' Other')
    Location.create!(name: 'Banská Štiavnica')
    Location.create!(name: 'Bánovce nad Bebravou')
    Location.create!(name: 'Banská Bystrica')
    Location.create!(name: 'Bardejov')
    Location.create!(name: 'Bratislava')
    Location.create!(name: 'Brezno')
    Location.create!(name: 'Bytča')
    Location.create!(name: 'Čadca')
    Location.create!(name: 'Detva')
    Location.create!(name: 'Dolný Kubín')
    Location.create!(name: 'Dunajská Streda')
    Location.create!(name: 'Galanta')
    Location.create!(name: 'Gelnica')
    Location.create!(name: 'Hlohovec')
    Location.create!(name: 'Humenné')
    Location.create!(name: 'Ilava')
    Location.create!(name: 'Kežmarok')
    Location.create!(name: 'Komárno')
    Location.create!(name: 'Košice')
    Location.create!(name: 'Krupina')
    Location.create!(name: 'Kysucké Nové Mesto')
    Location.create!(name: 'Levice')
    Location.create!(name: 'Levoča')
    Location.create!(name: 'Liptovský Mikuláš')
    Location.create!(name: 'Lučenec')
    Location.create!(name: 'Malacky')
    Location.create!(name: 'Martin')
    Location.create!(name: 'Medzilaborce')
    Location.create!(name: 'Michalovce')
    Location.create!(name: 'Myjava')
    Location.create!(name: 'Námestovo')
    Location.create!(name: 'Nitra')
    Location.create!(name: 'Nové Mesto nad Váhom')
    Location.create!(name: 'Nové Zámky')
    Location.create!(name: 'Partizánske')
    Location.create!(name: 'Pezinok')
    Location.create!(name: 'Piešťany')
    Location.create!(name: 'Poltár')
    Location.create!(name: 'Poprad')
    Location.create!(name: 'Považská Bystrica')
    Location.create!(name: 'Prešov')
    Location.create!(name: 'Prievidza')
    Location.create!(name: 'Púchov')
    Location.create!(name: 'Revúca')
    Location.create!(name: 'Rimavská Sobota')
    Location.create!(name: 'Rožňava')
    Location.create!(name: 'Ružomberok')
    Location.create!(name: 'Sabinov')
    Location.create!(name: 'Šaľa')
    Location.create!(name: 'Senec')
    Location.create!(name: 'Senica')
    Location.create!(name: 'Skalica')
    Location.create!(name: 'Snina')
    Location.create!(name: 'Sobrance')
    Location.create!(name: 'Spišská Nová Ves')
    Location.create!(name: 'Stará Ľubovňa')
    Location.create!(name: 'Stropkov')
    Location.create!(name: 'Svidník')
    Location.create!(name: 'Topoľčany')
    Location.create!(name: 'Trebišov')
    Location.create!(name: 'Trenčín')
    Location.create!(name: 'Trnava')
    Location.create!(name: 'Turčianske Teplice')
    Location.create!(name: 'Tvrdošín')
    Location.create!(name: 'Veľký Krtíš')
    Location.create!(name: 'Vranov nad Topľou')
    Location.create!(name: 'Žarnovica')
    Location.create!(name: 'Žiar nad Hronom')
    Location.create!(name: 'Žilina')
    Location.create!(name: 'Zlaté Moravce')
    Location.create!(name: 'Zvolen')

  end
end