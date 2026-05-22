# Universal Gravitational Constant
G <- 6.674e-11

# Planet masses in kilograms
mass_mercury <- 3.285e23
mass_venus <- 4.867e24
mass_earth <- 5.972e24
mass_mars <- 6.390e23

# Planet radii in meters
radius_mercury <- 2.439e6
radius_venus <- 6.051e6
radius_earth <- 6.371e6
radius_mars <- 3.389e6

# Calculate surface gravity for each planet
g_mercury <- (G * mass_mercury) / radius_mercury^2
g_venus <- (G * mass_venus) / radius_venus^2
g_earth <- (G * mass_earth) / radius_earth^2
g_mars <- (G * mass_mars) / radius_mars^2

# print results
g_mercury
g_venus
g_earth
g_mars

# Weight on earth in kg
weight_on_earth <- 52.62 # change this to your actual weight

# weight on other planets
weight_mercury <- weight_on_earth * (g_mercury / g_earth)
weight_venus <- weight_on_earth * (g_venus / g_earth)
weight_mars <- weight_on_earth * (g_mars / g_earth)

weight_mercury
weight_venus
weight_mars


# Escape Velocity
# formula v_escape = sqrt(2 * G * M /r)

# escape velocity in meters per second
v_escape_mercury <- sqrt(2 * G * mass_mercury / radius_mercury)
v_escape_venus <- sqrt(2 * G * mass_venus / radius_venus)
v_escape_earth <- sqrt(2 * G * mass_earth / radius_earth)
v_escape_mars <- sqrt(2 * G * mass_mars / radius_mars)

# convert to km/s for readability
v_escape_mercury / 1000
v_escape_venus /1000
v_escape_earth / 1000
v_escape_mars / 1000

# Speed of light
speed_of_light <- 299792458   # meters per second

# Schwarzschild Radius — the radius at which Earth would
# become a black hole
# Formula: r_s = (2 * G * M) / c^2

r_schwarzschild_earth <- (2 * G * mass_earth) / speed_of_light^2
r_schwarzschild_earth * 100   # convert to centimeters

#What This Means
#To turn Earth into a black hole you would need to compress the entire mass of our planet — all 5,972,000,000,000,000,000,000,000 kilograms of it — into a sphere less than 1 centimeter across.
#Smaller than a marble. Smaller than your thumbnail.
#Every ocean. Every continent. Every mountain range. Every living thing. Compressed into something you could hold between two fingers.
#That is what a black hole is — not exotic matter, not a special substance. Just ordinary matter compressed to an extraordinary density. The gravity becomes so extreme that escape velocity exceeds the speed of light and the universe simply closes off that region of space.

# mass of the Sun
mass_sun <- 1.989e30
# Schwarzschild radius of the Sun
r_schwarzschild_sun <- (2 * G * mass_sun) / speed_of_light^2
r_schwarzschild_sun / 1000

# Hawking evaporation time
# Formula: t = 5120 * pi * G^2 * M^3 / (hbar * c^4)

hbar <- 1.055e-34    # reduced Planck constant
t_evaporation <- (5120 * pi * G^2 * mass_sun^3) / (hbar * speed_of_light^4)

# Convert to years
t_evaporation / (365.25 * 24 * 3600)