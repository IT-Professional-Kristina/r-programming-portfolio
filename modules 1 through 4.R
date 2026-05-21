# Problem 1 Variables (Module)
galaxy_name <- "Andromeda"
distance_from_earth_light_years <- 2537000
number_stars_in_billions <- 1000
is_it_nearest_large_galaxy <- TRUE
age_in_billion_years <- 10.01

Andromeda_meters <- distance_from_earth_light_years * light_year_meters
# Problem 2 Data Types

class(galaxy_name)
class(distance_from_earth_light_years)
class(number_stars_in_billions)
class(is_it_nearest_large_galaxy)
class(age_in_billion_years)

andromeda_age <- "10.01"
total_age <- as.numeric(andromeda_age) + 4.6
total_age

# Problem 3 Vectors
planet_names <- c("Mercury", "Venus", "Earth", "Mars")
planet_temps <- c(167, 464, 15, -65)              # average surface temp in Celsius
planet_gravity <- c(0.38, 0.91, 1.0, 0.38)

mean(planet_temps) # average temperature
min(planet_temps)  # coldest temperature
max(planet_temps)  # hottest temperature
planet_temps[3]    # Earths temperature by index

# Which planet have below zero average temperatures?
planet_temps < 0

# Convert all temperatures to Fahrenheit
(planet_temps * 9/5) + 32

# Problem 4 Planet Habitability Classifier
for (i in 1:length(planet_names)) {
  temp <- planet_temps[i]
  name <- planet_names[i]
  if (temp > 100){
    status <- "Too hot - uninhabitated"
  } else if (temp >=0 & temp <= 100) {
    status <- "Potentially habitable"
  } else {
    status <- "Too cold -unhabitated"
  }
   print(paste(name, "+", status))
}

# Problem 5 Add Gravity
planet_gravity <- c(0.38, 0.91, 1.0, 0.38)

for (i in 1:length(planet_names)) {
  temp <- planet_temps[i]
  name <- planet_names[i]
  gravity <- planet_gravity[i]
  
  if (temp >= 0 & temp <=100 & gravity >= 0.5 & gravity <= 1.5){ 
    status <- "Potentialy habitable"
  } else if (temp <0 & gravity < 0.5) {
    status <- "Unhabitable - too cold and low gravity"
  } else if (temp > 100){
    status <- "Uninhabitable - too hot"
  } else if (temp < 0) {
    status <- "Uninhabitable - too cold"
  } else {
    status <- "Uninhabitable - gravity out of range"
  }
  print(paste(name, ":", status))
}