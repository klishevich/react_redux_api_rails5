puts 'Delete Lists'
puts 'Create Lists'
List.delete_all
List.create([
  {
    name: 'Good Songs',
    order: 1,
    first_name: 'Michael',
    last_name: 'Jackson',
    birth_date: '1958-08-29',
    is_alive: false
  },
  {
    name: 'Bad Songs',
    order: 2,
    first_name: 'Mikhail',
    last_name: 'Shufutinski',
    birth_date: '1948-04-13',
    is_alive: true
  },
  {
    name: 'Pop Songs',
    order: 3,
    first_name: 'Taylor',
    last_name: 'Swift',
    birth_date: '1989-12-13',
    is_alive: true
  }
])

puts 'Delete Singers'
puts 'Create Singers'
Singer.delete_all
Singer.create([
  {
    order: 1,
    first_name: 'Michael',
    last_name: 'Jackson',
    birth_date: '1958-08-29',
    is_alive: false
  },
  {
    order: 2,
    first_name: 'Mikhail',
    last_name: 'Shufutinski',
    birth_date: '1948-04-13',
    is_alive: true
  },
  {
    order: 3,
    first_name: 'Taylor',
    last_name: 'Swift',
    birth_date: '1989-12-13',
    is_alive: true
  }
])
