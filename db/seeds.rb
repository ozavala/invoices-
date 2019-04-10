# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

rolvis = Role.create( role_name: 'visitante')
rolafi = Role.create( role_name: 'afiliado')
rolins = Role.create( role_name: 'instructor')
rolsop = Role.create( role_name: 'soporte')
roladm = Role.create( role_name: 'administrador')
rolpro = Role.create( role_name: 'propietario')

usr1 = User.create(
  first_name: 'Fernando',
  last_name: 'Zavala',
  email: 'ferzagi@roundone.com',
  password: 'password'
  )

  usr2 = User.create(
    first_name: 'Jefferson',
    last_name: 'Rodriguez',
    email: 'jeff@roundone.com',
    password: 'password'
    )



usr1.roles << rolpro << roladm << rolins
usr2.roles << rolins


@gym1 = Gymsite.create surname: "Round One, La Torre", legal_code: "0765423498-001",
 description: "Area 80 m2, capacidad 15 alumnos simultáneos, cuenta con vestidores, SSHH, aire acondicionado", email: "info@roundone.com"

@gym2 = Gymsite.create surname: "Round One, Ciudad Celeste", legal_code: "098623498-001",
 description: "Area 160 m2, capacidad 25 alumnos simultáneos, cuenta con vestidores, SSHH, aire acondicionado", email: "info@roundone.com"

usr1.gymsites << @gym1 << @gym2
usr2.gymsites << @gym1
30.times do
  u = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password'
  )

u.roles << [rolafi, rolvis].sample
u.gymsites << [@gym1, @gym2].sample

end
