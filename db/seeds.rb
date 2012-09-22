# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Phase.create(
  name:         'Monophasic',
  level:        0,
  core_length:  480, 
  daily_length: 480,
  nap_count:    0,
  nap_interval: 0,
  nap_length:   0
)

Phase.create(
  name:         'Biphasic',
  level:        1,
  core_length:  360, 
  daily_length: 380,
  nap_count:    1,
  nap_interval: 530,
  nap_length:   20
)

Phase.create(
  name:         'Biphasic',
  level:        2,
  core_length:  270, 
  daily_length: 360,
  nap_count:    1,
  nap_interval: 575,
  nap_length:   90
)

Phase.create(
  name:         'Everyman',
  level:        3,
  core_length:  270, 
  daily_length: 310,
  nap_count:    2,
  nap_interval: 377,
  nap_length:   20
)

Phase.create(
  name:         'Everyman',
  level:        3,
  core_length:  180, 
  daily_length: 240,
  nap_count:    3,
  nap_interval: 300,
  nap_length:   20
)

Phase.create(
  name:         'Everyman',
  level:        4,
  core_length:  90, 
  daily_length: 170,
  nap_count:    4,
  nap_interval: 254,
  nap_length:   20
)

Phase.create(
  name:         'Everyman',
  level:        4,
  core_length:  90, 
  daily_length: 190,
  nap_count:    5,
  nap_interval: 208,
  nap_length:   20
)

Phase.create(
  name:         'Dymaxion',
  level:        5,
  core_length:  0, 
  daily_length: 120,
  nap_count:    4,
  nap_interval: 360,
  nap_length:   30
)

Phase.create(
  name:         'Uberman',
  level:        5,
  core_length:  0, 
  daily_length: 120,
  nap_count:    6,
  nap_interval: 240,
  nap_length:   20
)