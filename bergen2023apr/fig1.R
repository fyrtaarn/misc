library(data.table)

dt <- data.table(v1 = c("Sykkel",
                        "Personbil/Varebil",
                        "Til fots",
                        "El. sparkesykkel",
                        "Motorsykkel",
                        "El. sykkel",
                        "Moped",
                        "Buss",
                        "Trikk/tog/bane",
                        "Lastebil",
                        "ATV/Firhjuling",
                        "Snøskuter",
                        "Annet spesifisert",
                        "Ukjent"),
                 v2 = c(1684, 945, 482, 433, 220, 129, 121, 109, 20, 12, 18, 1, 166, 253))

DT <- rbindlist(list(dt, list("Totalt", sum(dt$v2))))

DT[, v3 := round(100*v2/4593, digits = 1)]
DT

## install.packages("rreg")
