# d for pdf
# p for cdf
# q for quantiles
# r for random variable generation

set.seed(100)

# Density and CDF of x = 4, N(0, 3) ---------------------------------------

# Density
dnorm(4, mean=0, sd=3)

# CDF
pnorm(4, mean=0, sd=3)

# Quantile
qnorm(seq(0.1, 0.9, by=0.1), mean=0, sd=3)

# Randmly generate 10 values
rnorm(10, mean=0, sd=3)

# Plots
xdens <- seq(0,5, 0.02)
plot(xdens, dexp(xdens, rate = 0.5), type='l', ylim=c(0,1.5), xlab='x', ylab='Exponential P.D.F.',lty=1)
lines(xdens,dexp(xdens,rate=1),type='l',lty=2,col=2)
lines(xdens,dexp(xdens,rate=1.5),type='l',lty=3,col=3)
legend(2,1.45,lty=1,substitute(lambda==0.5),box.lty=0)
legend(2,1.30,lty=2,substitute(lambda==1.0),box.lty=0,col=2)
legend(2,1.15,lty=3,substitute(lambda==1.5),box.lty=0,col=3)


# Plots
xdens <- seq(-5,5, 0.02)
plot(xdens, dnorm(xdens, mean=0, sd=1), type='l', ylim=c(0,0.7), xlab='x', ylab='Normal P.D.F.',lty=1)
lines(xdens,dnorm(xdens,mean=0, sd=1.5),type='l',lty=2,col=2)
lines(xdens,dnorm(xdens,mean=0, sd=2),type='l',lty=3,col=3)
legend(2,0.6,lty=1,substitute(s==1.0),box.lty=0)
legend(2,0.5,lty=2,substitute(s==1.5),box.lty=0,col=2)
legend(2,0.4,lty=3,substitute(s==2.0),box.lty=0,col=3)
