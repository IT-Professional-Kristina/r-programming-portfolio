star_name <- "Betelgeuse"           # character
star_temp <- 3500                   # numeric(Kelvin)
star_distance <- 700                # numeric (light years)
is_supergiant <- TRUE               # logical
star_class    <- "M"                # character
num_planets    <- 0L                # integer

class(star_name)
class(star_temp)
class(is_supergiant)
class(num_planets)

# Try to do math with a character
fake_number <- "700"
result <- fake_number + 100

# Check what type fake_number is
class(fake_number)

# Convert character to numeric
real_number <- as.numeric(fake_number)
result <- real_number + 100
result

# check the type now
class(real_number)

# as.numeric()Converts to number
# as.character()Converts to text
# as.logical()Converts to TRUE/FALSE
# as.integer()Converts to whole number
