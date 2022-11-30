# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Création des parents
ParentUser.destroy_all
Child.destroy_all
Classroom.destroy_all

mathilde = ParentUser.new(
  first_name: "Mathilde",
  last_name: "Martin",
  email: "mathilde.martin@gmail.com",
  password: "test123")
mathilde.save!

marc = ParentUser.new(
  first_name: "Marc",
  last_name: "Martin",
  email: "marc.martin@gmail.com",
  password: "test1234")
marc.save!

# Création des classes
cp = Classroom.new(
  class_name: "CP"
)
cp.save!

cm1 = Classroom.new(
  class_name: "CM1"
)
cm1.save!

# Création des coffres
 assur= Safe.new(
  file_name: "assurance_scolaire.pdf"
)
assur.save!

pai = Safe.new(
  file_name: "PAI.pdf"
)
pai.save!

tarifs = Safe.new(
  file_name: "tarifs_caf.pdf"
)
tarifs.save!

# Création des enfants
lea = Child.new(
  first_name: "Léa",
  last_name: "Martin",
  classroom: cp,
  safe_id: 1
)
lea.save!
georges = Child.new(
  first_name: "Georges",
  last_name: "Martin",
  classroom: cm1,
  safe_id: 2
)
georges.save!


Birth.create!(
  parent_user: marc,
  child:lea
)
Birth.create!(
  parent_user: marc,
  child:georges
)
Birth.create!(
  parent_user: mathilde,
  child:lea
)
Birth.create!(
  parent_user: mathilde,
  child:georges
)


# Création des teachers
teachers = Teacher.new(
  first_name: "Annie",
  last_name: "Cordy",
  classroom: cp
)
teachers.save!

teachers = Teacher.new(
  first_name: "Paul",
  last_name: "Mirabel",
  classroom: cm1
)
teachers.save!

# signs = Sign.new(
#   document_name: "Sortie au Louvre",
#   signed: true,
#   classroom: cm1
# )
# signs.save!

# signs = Sign.new(
#   document_name: "Class découverte",
#   signed: false,
#   classroom: classrooms
# )
# signs.save!

homeworks = Homework.new(
  category: "Français",
  content: "Lire les mots de la liste le plus rapidement possible en 1 min",
  classroom: cp

)
homeworks.save!

homeworks = Homework.new(
  category: "Mathématiques",
  content: "Faire les calculs suivants",
  classroom: cm1

)
homeworks.save!

homeworks = Homework.new(
  category: "Histoire",
  content: "Réviser la leçon sur les hommes préhistoriques ",
  classroom: cm1

)
homeworks.save!


homeworks = Homework.new(
  category: "Mathématiques",
  content: "Indiquer quel est le nombre le plus grand",
  classroom: cp

)
homeworks.save!
