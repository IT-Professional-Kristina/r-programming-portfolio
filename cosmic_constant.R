speed_of_light <- 299792458      # meters per second
light_year_meters <- 9.461e15    # meters in one light year
earth_to_sun_km <- 149600000     # kilometers
age_of_universe <- 13.8e9        # years (Hawking's estimate)
planck_constant <- 6.6263e-34     # Joule-seconds

# How far does light travel in one hour?
light_per_hour <- speed_of_light * 3600
light_per_hour

# How many light years across is the observable universe?
universe_diameter_ly <- 93000000000   # light years
universe_diameter_m <- universe_diameter_ly * light_year_meters
universe_diameter_m

# How old is the universe in seconds?
universe_age_seconds <- age_of_universe * 365 * 24 * 3600
universe_age_seconds

