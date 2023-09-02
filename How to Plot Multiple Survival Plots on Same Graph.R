# Load the required packages
library(survival)
library(survminer)

# Create four survival curves using survfit() and ggsurvplot() function
fit1 <- survfit(Surv(time, status) ~ sex, data = lung)
p1=ggsurvplot(fit1)

fit2 <- survfit(Surv(time, status) ~ ph.ecog, data = lung)
p2=ggsurvplot(fit2)

fit3 <- survfit(Surv(time, status) ~ sex, data = lung)
p3=ggsurvplot(fit3)

fit4 <- survfit(Surv(time, status) ~ ph.ecog, data = lung)
p4=ggsurvplot(fit4)


## Storing the all plots in one single objects
splots <- list(p1,p2,p3,p4)

# Arrange multiple ggsurvplots and print the output
arrange_ggsurvplots(splots, print = TRUE,
                    ncol = 2, nrow = 2)


