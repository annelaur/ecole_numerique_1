# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Création des parents
ParentUser.destroy_all

parent_users = ParentUser.new(
  first_name: "Mathilde",
  last_name: "Martin",
  email: "mathilde.martin@gmail.com",
  password: "test123")
  parent_users.save!

parent_users = ParentUser.new(
  first_name: "Marc",
  last_name: "Martin",
  email: "marc.martin@gmail.com",
  password: "test1234")
  parent_users.save!

# Création des classes
classrooms = Classroom.new(
  class_name: "CP"
)
classrooms.save!

classrooms = Classroom.new(
  class_name: "CM1"
)
classrooms.save!

# Création des coffres
saves = Safe.new(
  file_name: "assurance_scolaire.pdf"
)
saves.save!

saves = Safe.new(
  file_name: "PAI.pdf"
)
saves.save!

saves = Safe.new(
  file_name: "tarifs_caf.pdf"
)
saves.save!

# Création des enfants
children = Child.new(
  first_name: "Léa",
  last_name: "Martin",
  classroom_id: 1,
  safe_id: 1
)
children.save!
children = Child.new(
  first_name: "Georges",
  last_name: "Martin",
  classroom_id: 2,
  safe_id: 2
)
children.save!


# Création des teachers
teachers = Teacher.new(
  first_name: "Annie",
  last_name: "Cordy",
  classroom: classrooms
)
teachers.save!

teachers = Teacher.new(
  first_name: "Paul",
  last_name: "Mirabel",
  classroom: classrooms
)
teachers.save!

signs = Sign.new(
  document_name: "Sortie au Louvre",
  signed: true,
  classroom: classrooms
)
signs.save!

signs = Sign.new(
  document_name: "Class découverte",
  signed: false,
  classroom: classrooms
)
signs.save!
