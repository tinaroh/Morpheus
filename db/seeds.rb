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
  nap_length:   0,
  desc: 'If you\'d like to sleep 8 or more hours for your core sleep or have no naps during the day,
    it is recommended that you sleep the traditional monophasic way. The quality of your sleep depends
    on the number of complete sleep cycles you receive, which is about 90 minutes in the average person.
    Try to wake up at the end of a cycle to feel more rested.
    <small>(Reference: <%= link_to "Lifehack", "//lifehack.org/articles/lifehack/90-minutes-sleep-cycle.html", :target => "blank_" %>)</small>'
)

Phase.create(
  name:         'Biphasic (20-min nap)',
  level:        2,
  core_length:  360, 
  daily_length: 380,
  nap_count:    1,
  nap_interval: 530,
  nap_length:   20,
  desc: 'Also known as siesta sleep, it involves sleeping twice within a 24-hour period. 
    Biphasic sleep has been argued to be the most natural way to sleep and is the easiest of
    the polyphasic sleep schedules to adjust to. This is the "power nap" variation that many
    people naturally adapt.'
)

Phase.create(
  name:         'Biphasic (90-min nap)',
  level:        1,
  core_length:  270, 
  daily_length: 360,
  nap_count:    1,
  nap_interval: 575,
  nap_length:   90,
  desc: 'Also known as siesta sleep, it involves sleeping twice within a 24-hour period. 
    Biphasic sleep has been argued to be the most natural way to sleep and is the easiest of
    the polyphasic sleep schedules to adjust to. This variation includes a 90-minute nap midday.'
)

Phase.create(
  name:         'Everyman (2 naps)',
  level:        3,
  core_length:  270, 
  daily_length: 310,
  nap_count:    2,
  nap_interval: 377,
  nap_length:   20,
  desc: '2 nap Everyman sleep'
)

Phase.create(
  name:         'Everyman (3 naps)',
  level:        3,
  core_length:  180, 
  daily_length: 240,
  nap_count:    3,
  nap_interval: 300,
  nap_length:   20,
  desc: '3 nap Everyman sleep'
)

Phase.create(
  name:         'Everyman (4 naps)',
  level:        4,
  core_length:  90, 
  daily_length: 170,
  nap_count:    4,
  nap_interval: 254,
  nap_length:   20,
  desc: '4 nap Everyman sleep'
)

Phase.create(
  name:         'Everyman (5 naps)',
  level:        4,
  core_length:  90, 
  daily_length: 190,
  nap_count:    5,
  nap_interval: 208,
  nap_length:   20,
  desc: '5 nap Everyman sleep'
)

Phase.create(
  name:         'Dymaxion',
  level:        5,
  core_length:  0, 
  daily_length: 120,
  nap_count:    4,
  nap_interval: 360,
  nap_length:   30,
  desc: 'This sleep schedule is created by Richard Buckminster Fuller, who practiced it for two years
    before stopping because of conflict with his colleagues\' monophasic schedules.'
)

Phase.create(
  name:         'Uberman',
  level:        5,
  core_length:  0, 
  daily_length: 120,
  nap_count:    6,
  nap_interval: 240,
  nap_length:   20,
  desc: 'The Uberman sleep schedule is considered the most strict and rigorous of the polyphasic schedules.
    Any deviation from the nap schedule in the beginning of adjusting can hinder your success. Your lifestyle
    (work, children) must also allow for the strict schedule. Benefits reported by users are an extreme mental
    clearness and overall healthier feeling. One can have as much as 21 hours of time awake.'
)