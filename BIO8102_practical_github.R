#Lecture3
#LMM practical 

unicorns <- read.csv("unicorns_aggression.csv")
summary(unicorns)

install.packages("lme4")
library("Matrix")
library("lme4")

#Fit a first mixed model with lmer that have only individual identity as a random effect and only a population mean.
M1 <- lmer(aggression ~ 1 + (1|ID), data = unicorns)
summary(M1)

# This is a fairly rubbish model so now fit a better model by adding opponent size (opp_size) and block (block) as fixed effects. 
M2 <- lmer(aggression ~ opp_size + block + (1|ID), data = unicorns)
summary(M2)


