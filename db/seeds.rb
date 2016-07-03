puts 'Delete Lists'
puts 'Create Lists'
List.delete_all
List.create([
    { 
        name: "Good Deals", 
        order: 1
    },
    { 
        name: "Bad Deals", 
        order: 2
    },
    { 
        name: "Neutral Deals", 
        order: 3
    }
])