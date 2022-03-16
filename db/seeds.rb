# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
State.create(name: 'Tennessee')

City.create(name: 'Nashville', state_id: 1)

Weather.create(date: '1985-01-01', lat: 36.1189, lon: -86.6892, city_id: 1)

Temperature.create([
                     { temp: 17.3, weather_id: 1 },
                     { temp: 16.8, weather_id: 1 },
                     { temp: 16.4, weather_id: 1 },
                     { temp:  16.0, weather_id: 1 },
                     { temp:  15.6, weather_id: 1 },
                     { temp:  15.3, weather_id: 1 },
                     { temp:  15.0, weather_id: 1 },
                     { temp:  14.9, weather_id: 1 },
                     { temp:  15.8, weather_id: 1 },
                     { temp:  18.0, weather_id: 1 },
                     { temp:  20.2, weather_id: 1 },
                     { temp:  22.3, weather_id: 1 },
                     { temp:  23.8, weather_id: 1 },
                     { temp:  24.9, weather_id: 1 },
                     { temp:  25.5, weather_id: 1 },
                     { temp:  25.7, weather_id: 1 },
                     { temp:  24.9, weather_id: 1 },
                     { temp:  23.0, weather_id: 1 },
                     { temp:  21.7, weather_id: 1 },
                     { temp:  20.8, weather_id: 1 },
                     { temp:  29.9, weather_id: 1 },
                     { temp:  29.2, weather_id: 1 },
                     { temp:  28.6, weather_id: 1 },
                     { temp:  28.1, weather_id: 1 }

                   ])
