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

mathilde = ParentUser.create!(
  first_name: "Mathilde",
  last_name: "Martin",
  email: "mathilde.martin@gmail.com",
  password: "test123")

marc = ParentUser.create!(
  first_name: "Marc",
  last_name: "Martin",
  email: "marc.martin@gmail.com",
  password: "test1234")

# Création des classes
cp = Classroom.create!(
  class_name: "CP"
)

cm1 = Classroom.create!(
  class_name: "CM1"
)

# Création des enfants
lea = Child.create!(
  first_name: "Léa",
  last_name: "Martin",
  classroom: cp
)

georges = Child.create!(
  first_name: "Georges",
  last_name: "Martin",
  classroom: cm1
)

# Création des coffres
 assur = Safe.create!(
  file_name: "assurance_scolaire",
  child: lea
)

pai = Safe.create!(
  file_name: "PAI",
  child: lea
)

tarifs = Safe.create!(
  file_name: "tarifs_caf",
  child: georges
)

Birth.create!(
  parent_user: marc,
  child: lea
)

Birth.create!(
  parent_user: marc,
  child: georges
)
Birth.create!(
  parent_user: mathilde,
  child: georges
)
Birth.create!(
  parent_user: mathilde,
  child: lea
)

# Création des teachers
teachers = Teacher.create!(
  first_name: "Annie",
  last_name: "Cordy",
  email:"annie.cordy@gmail.com",
  classroom: cp
)

teachers = Teacher.create!(
  first_name: "Paul",
  last_name: "Mirabel",
  email:"paul.mirabel@hotmail.com",
  classroom: cm1
)

#Création des signs
signs = Sign.create!(
  document_name: "Sortie au Louvre",
  signed: true,
  classroom: cm1
)

signs = Sign.create!(
  document_name: "Class découverte",
  signed: false,
  classroom: cp
)

homeworks = Homework.create!(
  category: "Français",
  content: "Lire les mots de la liste le plus rapidement possible en 1 min",
  classroom: cp
)

homeworks = Homework.create!(
  category: "Mathématiques",
  content: "Faire les calculs suivants",
  classroom: cm1
)

homeworks = Homework.create!(
  category: "Histoire",
  content: "Réviser la leçon sur les hommes préhistoriques ",
  classroom: cm1
)

homeworks = Homework.create!(
  category: "Mathématiques",
  content: "Indiquer quel est le nombre le plus grand",
  classroom: cp
)
