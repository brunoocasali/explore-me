User.create(email: 'test@test.com', password: '132356723')
Place.create(user: User.first, name: "My Home", address: "301, Rua fernando Ferrari, Francisco Beltrão, Paraná", rate: 4)
Place.create(user: User.first, name: "Another House", address: "Rua Mandaguari, Francisco Beltrão, Paraná", rate: 3)
Place.create(user: User.first, name: "Some House", address: "Av. União da Vitória, Francisco Beltrão, Paraná", rate: 7)

