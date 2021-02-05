#Lecture3
#LMM practical 

unicorns <- read.csv("unicorns_aggression.csv")
summary(unicorns)

install.packages("lme4")
install.packages("lmerTest")
library("Matrix")
library("lme4")
library("nlme")
library("lmerTest")

#Fit a first mixed model with lmer that have only individual identity as a random effect and only a population mean.
M1 <- lmer(aggression ~ 1 + (1|ID), data = unicorns)
M1
summary(M1)

# This is a fairly rubbish model so now fit a better model by adding opponent size (opp_size) and block (block) as fixed effects. 
M2 <- lmer(aggression ~ opp_size + block + (1|ID), data = unicorns)
summary(M2)

#Load lmerTest and refit the model using the exact same code. Look at the summary again.



