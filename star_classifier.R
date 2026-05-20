# Module 4 Conditional Statements
#if (condition) {
# code that runs if TRUE
#} else {
  # code that runs if FALSE
#}

# A star's surface temperature
star_temp <- 3500

# Classify based on temperature
if (star_temp > 10000) {
  print("Hot star - Class 0 or B")
} else {
  print("Cooler star - CLass M, K, or G")
}

# else-if 
star_temp <- 33000
if (star_temp > 30000){
  print("Class 0 - Blue, extremely hot")
} else if (star_temp > 10000){
  print("Class B - Blue-white, very hot")
} else if(star_temp > 7500) {
  print("Class A - White, hot")
} else if(star_temp > 6000) {
  print("Class F - Yellow-white")
}else if (star_temp > 5200) {
  print("Class G - Yellow, like our Sun")
} else if (star_temp > 3700) {
  print("Class K - Orange, cooler")
} else {
  print("Class M -Red, coolest stars")
}

# Star catalog vectors from Module 3
star_names <- c("Betelgeuse", "Sirius", "The SUn", "Rigel", "Vega")
star_temps <- c(3500, 9940, 5778, 12100, 9600)

# Classify every star automatically
for (i in 1:length(star_names)) {
  temp <- star_temps[i]
  name <- star_names[i]
  
  if (temp > 30000){
    class <- "Class 0 - Blue, extremely hot"
  } else if (temp > 10000) {
    class <- "Class B - Blue-white, very hot"
  } else if (temp > 7500) {
    class <- "Class A - White, hot"
  } else if (temp > 6000) {
    class <- "Class F - Yellow-white"
  } else if (temp > 5200){
    class <- "Class G - Yellow, like our Sun"
  } else if (temp > 3700) {
    class <- "Class K - Orange, cooler"
  } else {
    class <- "Class M - Red, coolest stars"
  }
    print(paste(name, ">", class))
}