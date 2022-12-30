data reaction;
input amount time;
datalines;
2 1
1 1
4 2
3 2
5 4
2 5 

;
proc print data=reaction;
run;
proc gplot data=reaction; /*scatter plot*/
plot time*amount;
run;

proc reg data=reaction plot=none;
model time=amount/ clb clm cli;/*CLB: Computes 100(1-alpha)% confidence limits for the parameter estimates
CLI: Computes 100(1-alpha)% confidence limits for an individual predicted value
CLM: Computes 100(1-alpha)% confidence limits for the expected value of the dependent variable*/
run;





data diamonds; input weight price @@;
cards;
.17 355 .16 328 .17 350 .18 325 .25 642 .16 342 .15 322 .19 485
.21 483 .15 323 .18 462 .28 823 .16 336 .20 498 .23 595 .29 860
.12 223 .26 663 .25 750 .27 720 .18 468 .16 345 .17 352 .16 332
.17 353 .18 438 .17 318 .18 419 .17 346 .15 315 .17 350 .32 918
.32 919 .15 298 .16 339 .16 338 .23 595 .23 553 .17 345 .33 945
.25 655 .35 1086 .18 443 .25 678 .25 675 .15 287 .26 693 .15 316

;
proc print data=diamonds;
run;
proc gplot data= diamonds; /*scatter plot*/
plot weight*price;
run;


proc reg data=diamonds;/*regression*/
model price=weight/ clb clm cli;/*CLB: Computes 100(1-alpha)% confidence limits for the parameter estimates
CLI: Computes 100(1-alpha)% confidence limits for an individual predicted value
CLM: Computes 100(1-alpha)% confidence limits for the expected value of the dependent variable*/
run;
