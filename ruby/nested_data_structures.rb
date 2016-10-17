apartment = {
    living_room: {
        proper_name: 'Living Room',
        dimensions: {
          length: '33\'',
          width: '24\''
        },
        furniture: [
          'end table', 
          'couch', 
          'end table',
          'chair',
          'book shelf',
          'television',
          'fish aquarium',
          'dining table',
          'dining chairs',
          'coffee table'
        ]
    },
    bedroom: {
        proper_name: 'Bedroom',
        dimensions: {
          length: '27\'',
          width: '22\''

        },
        furniture: [
          'nightstand',
          'bed',
          'nightstand',
          'dresser',
          'television',
          'dog bed'
        ]
    },
    kitchen: {
        proper_name: 'Kitchen',
        dimensions: {
            length: '8\'',
            width: '10\''
        },
        appliances: [
          'dishwasher',
          'stove-top oven',
          'refrigerator',
          'sink',
          'cabinets'
        ]
    }
}

p apartment[:living_room][:furniture]
p apartment[:living_room][:furniture].push('ottoman')
p apartment[:living_room]
p apartment[:bedroom][:furniture]
p apartment[:bedroom][:furniture].shuffle
p apartment[:bedroom]
