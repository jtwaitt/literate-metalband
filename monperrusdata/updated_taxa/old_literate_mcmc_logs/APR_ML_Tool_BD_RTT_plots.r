

pdf(file='./monperrusdata/updated_taxa/literate_mcmc_logs/APR_ML_Tool_BD_RTT_plots.pdf',width=12, height=8)
par(mfrow=c(2,4))
usePackage <- function(p){if (!is.element(p, installed.packages()[,1])) install.packages(p, dep = TRUE, repos='https://cloud.r-project.org'); library(p, character.only = TRUE)}
usePackage('scales')

###APR_ML_Tool_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(1, 618,149,31,1)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.2412137959900669, 0.23955569363952253,0.23158721911745697,0.22267641560964724,0.22064211109835383,0.21996627465509802,0.22003305500574413,0.22240626974100355,0.2230845487831247,0.2232897708651365,0.22305941112754193,0.22321005818862905,0.22315723785432337,0.22328552658341483,0.21737679356165124,0.028439019237606705)
birth_minHPD=c(0.12009839251037849, 0.14507674567704618,0.12863198715469507,0.14036350565131916,0.14507674567704618,0.1466191742790503,0.16244116235185635,0.1706085884778499,0.1737725617674763,0.17499688782922243,0.17642113512808064,0.17642113512808064,0.17579562475875926,0.17499688782922243,0.15940829579037474,0.0007426404312275482)
birth_maxHPD=c(0.4266604818505362, 0.40878172057907214,0.3236836200110243,0.28670660697344125,0.2847715044696927,0.28185999250721505,0.280365438351595,0.27625373507122425,0.27625373507122425,0.27625373507122425,0.27625373507122425,0.27625373507122425,0.27625373507122425,0.27625373507122425,0.280365438351595,0.0730993771383852)
plot(time,time,type = 'n', ylim = c(0, 0.46932653003558983), xlim = c(2009.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='APR_ML_Tool_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.035,0.0325,0.04375,0.0225,0.02,0.02,0.03125,0.0125,0.01125,0.01,0.00875,0.0075,0.0075,0.0425,0.96125)
plot(time,birth_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.96125), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.10388752490913934
bf6 = 0.4613877539344312
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
birth_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.028439019237606705)
#Net Rate
net_rate=c(0.22114435643699135, 0.2227975114147728,0.21764608265720756,0.20928616956757107,0.20752542674498678,0.2069884652543386,0.20720504779226168,0.20973541575677423,0.21043617706889176,0.21060870510649796,0.21031122445337402,0.21032738456160202,0.2102033518089334,0.2096208280807326,0.1631166155225864,-0.16553989772900748)
net_minHPD=c(0.09534925163384526, 0.09534925163384526,0.11512847551795843,0.12520025556885378,0.12844229865309428,0.1368599466146512,0.14687189195118416,0.15365934241699242,0.15467647031847212,0.15467647031847212,0.1547053641665343,0.15467647031847212,0.15467647031847212,0.15365934241699242,0.04129011699253998,-0.29634226265948627)
net_maxHPD=c(0.4544238309681951, 0.3981948253106409,0.3173601838855195,0.2760211364970702,0.2760211364970702,0.2760211364970702,0.27068672925766857,0.26884196197487664,0.26672168529354096,0.26580282662736276,0.2649464500517919,0.2649464500517919,0.26580282662736276,0.26672168529354096,0.26672168529354096,-0.0522062788895334)
plot(time,time,type = 'n', ylim = c(-0.3259764889254349, 0.49986621406501464), xlim = c(2009.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(2.0, 3.0,4.0)
counts=c(635, 146,19)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.02006943955307559, 0.016758182224749726,0.013941136460249486,0.013390246042076226,0.013116684353366983,0.01297780940075944,0.012828007213482453,0.012670853984229341,0.012648371714233012,0.012681065758638643,0.012748186674167985,0.012882673627027018,0.012953886045390025,0.013664698502682393,0.05426017803906492,0.1939789169666142)
death_minHPD=c(0.0003049120800833482, 0.00043395920839219297,0.0003049120800833482,0.0008518688095122867,0.0006553520554917076,0.0008041936281431324,0.0008700080385869817,0.0008041936281431324,0.0006553520554917076,0.000926199231207311,0.000926199231207311,0.0008041936281431324,0.000703855712901946,0.0006553520554917076,0.005440464031845634,0.09173470774459354)
death_maxHPD=c(0.06911434923022912, 0.04118639537589739,0.02864217085353571,0.02800722456187504,0.027460565443609117,0.027460565443609117,0.027460565443609117,0.027314545460935244,0.027015068615525703,0.027460565443609117,0.027460565443609117,0.027460565443609117,0.027460565443609117,0.0290452894278699,0.15863054737722992,0.31514743778475124)
plot(time,time,type = 'n', ylim = c(0, 0.34666218156322637), xlim = c(2009.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.02875,0.0325,0.015,0.01,0.0075,0.00875,0.00625,0.00375,0.005,0.00375,0.0075,0.0075,0.025,0.365,0.70375)
plot(time,death_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.70375), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.05426017803906492,NA)
death_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.1939789169666142)
#Net Diversity
net_diversity=c(2.0, 4.0,6.0,7.0,8.0,8.0,8.0,11.0,15.0,24.0,30.0,36.0,44.0,66.0,76.0,66.0)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.5,0.3333333333333333,0.14285714285714285,0.125,0.0,0.0,0.2727272727272727,0.26666666666666666,0.375,0.2,0.16666666666666666,0.18181818181818182,0.3333333333333333,0.15789473684210525,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.05263157894736842,0.24242424242424243)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.5,.1),limits = c(0.0,0.5)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Developer_Efficiency_Aid_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(14, 559,199,24,4)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.22530135201276713, 0.2235761695459602,0.22338438293082796,0.22342695972997095,0.22253089845134513,0.22032929998036507,0.21426926564445872,0.20566242709359567,0.20366493653619588,0.20259803380588245,0.20122340997654867,0.18510980180302453,0.17766830627473854,0.09041024119923648,0.04883720203516402,0.04851889540256739)
birth_minHPD=c(0.09560062429717102, 0.10137949939849787,0.09781737583547405,0.10947587081264756,0.11008960220432319,0.1079114430001816,0.11008960220432319,0.10999806434996752,0.11148186924957182,0.11148186924957182,0.11089532840212629,0.0845155445520496,0.04920300377356353,0.009956155395623348,0.0015815801337583828,0.0015815801337583828)
birth_maxHPD=c(0.3999726557610061, 0.3999726557610061,0.3677431983863851,0.36028745795764217,0.34800168625637257,0.33601125433911316,0.31190069555974365,0.2937721951565485,0.2937721951565485,0.2937721951565485,0.29415731297222764,0.28856669179744543,0.2665588037613687,0.2077803977115108,0.12187476404148816,0.12070850250250163)
plot(time,time,type = 'n', ylim = c(0, 0.4399699213371068), xlim = c(2009.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Developer_Efficiency_Aid_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.01375,0.03,0.02875,0.0275,0.02125,0.0475,0.0575,0.02,0.02625,0.02125,0.10875,0.06125,0.54125,0.295,0.00625)
plot(time,birth_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.54125), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.10489800965354655
bf6 = 0.4640747320919053
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.18510980180302453,NA,NA,0.04883720203516402,NA)
birth_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.09041024119923648,NA,NA)
#Net Rate
net_rate=c(0.18990610211686942, 0.19119917384746032,0.19303232104738666,0.1963996226021199,0.1961671739338565,0.1945266215467617,0.18884927601039123,0.18080427526820922,0.17876312296179606,0.17743841959665846,0.17564392216614466,0.15684861783442494,0.13455656646732542,0.012023116603427395,-0.05443589417964456,-0.08349675099076562)
net_minHPD=c(0.054786924899308115, 0.051528422593416286,0.051528422593416286,0.07640430530128138,0.08267090572649738,0.08440681322585661,0.08267090572649738,0.08267090572649738,0.08123977537846112,0.0815397563950927,0.08030669539638852,0.04902068622475292,0.014483644201362916,-0.12689973395626203,-0.18086602517420458,-0.2448034103302138)
net_maxHPD=c(0.42867226410872417, 0.4104863737179818,0.36477348848215785,0.342201119730945,0.320832967385426,0.320832967385426,0.2922410125189437,0.2736959180003766,0.2698753794225205,0.2698753794225205,0.2710617263544172,0.2698753794225205,0.2671139712910162,0.1756670398187666,0.05533863583340183,0.055014211889762105)
plot(time,time,type = 'n', ylim = c(-0.2692837513632352, 0.4715394905195966), xlim = c(2009.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(38, 556,189,16,1)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.035395249895897526, 0.0323769956984998,0.030352061883441063,0.02702733712785057,0.026363724517488127,0.025802678433602996,0.025419989634067143,0.02485815182538601,0.024901813574399426,0.025159614209223687,0.025579487810403735,0.028261183968599824,0.04311173980741335,0.07838712459580913,0.10327309621480849,0.13201564639333288)
death_minHPD=c(0.0009912952872265218, 0.0003044788038355312,0.0009912952872265218,0.0028266013428980196,0.003137092134743825,0.003137092134743825,0.0009912952872265218,0.0023430974404925657,0.0015838579201623013,0.0004276080898038016,0.0003044788038355312,0.0003044788038355312,0.0023430974404925657,0.008840560815913825,0.01674213002391941,0.03962145141081078)
death_maxHPD=c(0.08882891902190966, 0.07523339736975151,0.07258801824157127,0.06154238397309091,0.060699998046680116,0.06045301180737872,0.05675167099569305,0.05675167099569305,0.05675167099569305,0.05675167099569305,0.05751324235420824,0.06649585884548329,0.1213725408975939,0.16288775426979207,0.1943836520212011,0.2635428921706056)
plot(time,time,type = 'n', ylim = c(0, 0.2898971813876662), xlim = c(2009.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.0425,0.025,0.0425,0.0175,0.01875,0.015,0.02625,0.015,0.01625,0.015,0.04875,0.18875,0.36125,0.22625,0.17375)
plot(time,death_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.36125), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.04311173980741335,0.07838712459580913,0.10327309621480849,0.13201564639333288)
death_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
#Net Diversity
net_diversity=c(1.0, 1.0,1.0,2.0,4.0,6.0,9.0,10.0,11.0,15.0,21.0,24.0,28.5,29.0,27.0,23.0)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.0,0.0,0.5,0.5,0.3333333333333333,0.3333333333333333,0.1,0.09090909090909091,0.26666666666666666,0.2857142857142857,0.125,0.17543859649122806,0.06896551724137931,0.0,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.03508771929824561,0.06896551724137931,0.07407407407407407,0.2608695652173913)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.5,.1),limits = c(0.0,0.5)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Fault_Localization_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0)
counts=c(456, 281,60,3)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2011.5, 2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.24754365445358967, 0.2374762928124346,0.23609300195364913,0.23590087360575945,0.23599672455740045,0.23853673962655436,0.23424157162459813,0.2333999708818513,0.23478698705886877,0.2319947127945526,0.2294671923957779,0.2257762121321218,0.21672454455776372,0.21071804375690345)
birth_minHPD=c(0.0305831076986381, 0.043044187954970115,0.06074897210593594,0.06924621929251458,0.07750183421786855,0.09432951041982555,0.09432951041982555,0.09432951041982555,0.09432951041982555,0.09432951041982555,0.0906106307504257,0.09432951041982555,0.06422547529078455,0.06331305075304995)
birth_maxHPD=c(0.45752803429281824, 0.43808476491405696,0.44141625285892094,0.43808476491405696,0.43808476491405696,0.4328416608099164,0.40946326812195066,0.4044717325767251,0.3936185374851747,0.3847348802075941,0.37737263161418316,0.37737263161418316,0.36416190792418307,0.37266429613954305)
plot(time,time,type = 'n', ylim = c(0, 0.5032808377221001), xlim = c(2011.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Fault_Localization_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.04,0.045,0.035,0.03375,0.035,0.0425,0.04125,0.03125,0.03875,0.035,0.03125,0.06375,0.04)
plot(time,birth_counts,type = 'h', xlim = c(2011.0,2025.5), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.1114969784266915
bf6 = 0.48112383607198034
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
birth_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
#Net Rate
net_rate=c(0.14845932484439733, 0.13983356813664927,0.13911962687815435,0.13999533407108367,0.140546437888767,0.1434887054450284,0.14189932522914003,0.14159697623740045,0.14463389013444014,0.14413736678261688,0.1412580524458874,0.1360588847390677,0.12356010951939721,0.11626045496447414)
net_minHPD=c(-0.15968710487567725, -0.1321782062850502,-0.08865241192312495,-0.060806250142232704,-0.060806250142232704,-0.04380296962789115,-0.060806250142232704,-0.04380296962789115,-0.03796379275966558,-0.019343159316593667,-0.013008331766849762,-0.039886679801652114,-0.062082738230266415,-0.0690880254537324)
net_maxHPD=c(0.4112634435465759, 0.3780882824617662,0.3780882824617662,0.3876496104766924,0.3602179135332645,0.37169620714927043,0.3363129029190956,0.3363129029190956,0.33545382318738715,0.33545382318738715,0.3363129029190956,0.3048078616737604,0.3048078616737604,0.3048078616737604)
plot(time,time,type = 'n', ylim = c(-0.17565581536324498, 0.4523897879012335), xlim = c(2011.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(478, 264,50,6,2)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2011.5, 2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.09908432960919242, 0.09764272467578529,0.0969733750754949,0.09590553953467591,0.09545028666863348,0.09504803418152592,0.09234224639545822,0.0918029946444508,0.09015309692442862,0.08785734601193557,0.08820913994989034,0.08971732739305402,0.09316443503836654,0.09445758879242931)
death_minHPD=c(0.009518786977365036, 0.020108177632190614,0.00779270829080214,0.017484697519348037,0.01130272465418253,0.017484697519348037,0.020108177632190614,0.020108177632190614,0.015753466415397765,0.020572352321299198,0.020572352321299198,0.020108177632190614,0.023020942901416548,0.020572352321299198)
death_maxHPD=c(0.2295215126063346, 0.2295215126063346,0.2151978677905047,0.21430563299886068,0.1975141487717635,0.1931947611745084,0.18614844235385547,0.18614844235385547,0.17294676886477617,0.17224109766826673,0.17224109766826673,0.17294676886477617,0.18503547172966356,0.18347805851821425)
plot(time,time,type = 'n', ylim = c(0, 0.25247366386696807), xlim = c(2011.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.03875,0.03625,0.0475,0.0275,0.03375,0.04625,0.03625,0.0475,0.04625,0.02375,0.03625,0.04625,0.02125)
plot(time,death_counts,type = 'h', xlim = c(2011.0,2025.5), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
death_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
#Net Diversity
net_diversity=c(1.0, 1.0,1.0,1.0,1.0,1.5,1.0,1.0,2.0,3.0,5.0,7.0,7.5,6.5)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.0,0.0,0.0,0.0,0.6666666666666666,0.0,0.0,0.5,0.3333333333333333,0.4,0.2857142857142857,0.13333333333333333,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.6666666666666666,0.0,0.0,0.0,0.0,0.0,0.0,0.13333333333333333,0.15384615384615385)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.7000000000000001,.1),limits = c(0.0,0.7000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###ML_Preprocessing_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0)
counts=c(487, 255,53,5)
plot(unique,counts,type = 'h', xlim = c(0,5.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2017.5, 2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.33053148662898885, 0.3161237108628887,0.3075642414737171,0.30232250960784124,0.3011409108961395,0.30643828519463945,0.2985468052552328,0.281096580076528)
birth_minHPD=c(0.06507724360812617, 0.06845886533867299,0.11454695022204821,0.11454695022204821,0.11703910887057203,0.1431377097273991,0.14000150480556825,0.061714571094280905)
birth_maxHPD=c(0.6271162679820165, 0.5378639389412458,0.5093884826334734,0.48136438782536506,0.48136438782536506,0.48136438782536506,0.4885535527027637,0.4885535527027637)
plot(time,time,type = 'n', ylim = c(0, 0.6898278947802182), xlim = c(2017.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='ML_Preprocessing_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.07875,0.07625,0.0625,0.0575,0.05375,0.06625,0.075)
plot(time,birth_counts,type = 'h', xlim = c(2017.0,2025.5), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.1318722858331437
bf6 = 0.5288417175496629
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA))
birth_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA))
#Net Rate
net_rate=c(0.20726014557966824, 0.1965745479175558,0.18915067085484702,0.18234549222359142,0.17438268102023177,0.168679520198112,0.06091086899753455,0.04197966689128843)
net_minHPD=c(-0.15605505203102676, -0.12005660312572225,-0.12005660312572225,-0.08001125310026724,-0.0619610484188049,-0.09738418208220365,-0.21247000017150716,-0.27811868448738974)
net_maxHPD=c(0.5565608726599782, 0.4870688381258298,0.4306108768528154,0.41459618276245763,0.4306108768528154,0.4053268940495452,0.3557991869327845,0.32336849813818275)
plot(time,time,type = 'n', ylim = c(-0.30593055293612875, 0.6122169599259761), xlim = c(2017.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0)
counts=c(272, 439,81,8)
plot(unique,counts,type = 'h', xlim = c(0,5.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2017.5, 2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.12327134104932004, 0.11954916294533223,0.11841357061886958,0.11997701738424953,0.1267582298759076,0.13775876499652745,0.23763593625769835,0.23911691318523975)
death_minHPD=c(0.0026819949831813016, 0.0026819949831813016,0.0026819949831813016,0.0026819949831813016,0.0030047440081052523,0.0026819949831813016,0.05757493638442499,0.05885831150898802)
death_maxHPD=c(0.29111478048656475, 0.2730280196256466,0.26926872363927423,0.26813513781324105,0.28210503500379386,0.29111478048656475,0.466460313696824,0.466460313696824)
plot(time,time,type = 'n', ylim = c(0, 0.5131063450665064), xlim = c(2017.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.065,0.06,0.06625,0.075,0.08625,0.4075,0.02125)
plot(time,death_counts,type = 'h', xlim = c(2017.0,2025.5), ylim=c(0,0.4075), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=c(NA, NA,NA,NA,NA,NA,0.23763593625769835,NA)
death_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA))
#Net Diversity
net_diversity=c(1.0, 2.0,3.0,3.0,3.0,8.0,9.0,6.0)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.5,0.3333333333333333,0.0,0.0,0.625,0.3333333333333333,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.4444444444444444,0.3333333333333333)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.6000000000000001,.1),limits = c(0.0,0.6000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Meta-evaluation_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(2, 313,425,55,5)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2012.5, 2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.32020404661615265, 0.31893262852509247,0.3159089433897304,0.3072770002431764,0.30145032426795526,0.29984644396465787,0.2837067239949574,0.22790322317081077,0.1858827642486942,0.17138453990763713,0.16942854400208823,0.1462115237194975,0.07003984801351147)
birth_minHPD=c(0.14975435029739204, 0.16959675135381982,0.17780480763662815,0.17685968860072684,0.17780480763662815,0.17450604060491573,0.16186264098633749,0.11882531676299947,0.10634100985489237,0.09863307876810047,0.09863307876810047,0.0416891302858287,0.0031562745812848112)
birth_maxHPD=c(0.5257974006702761, 0.49342270313958747,0.47155241475992277,0.4479167399621751,0.44309361243516177,0.437998364047952,0.43376822367409096,0.3614000429197803,0.3011407653252504,0.25493397445780347,0.2555407138681393,0.23090263024858382,0.1583229947230356)
plot(time,time,type = 'n', ylim = c(0, 0.5783771407373038), xlim = c(2012.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Meta-evaluation_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.0425,0.03625,0.04,0.0375,0.02125,0.0975,0.29625,0.27375,0.1025,0.03375,0.18375,0.52)
plot(time,birth_counts,type = 'h', xlim = c(2012.0,2025.5), ylim=c(0,0.52), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.11388459453430615
bf6 = 0.48708747434659017
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=c(NA, NA,NA,NA,NA,NA,NA,0.22790322317081077,0.1858827642486942,NA,NA,0.1462115237194975,NA)
birth_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.07003984801351147)
#Net Rate
net_rate=c(0.29765403178028715, 0.299483755085705,0.29849190058558417,0.29086629082527315,0.28532455859956474,0.28388237138787636,0.26765825168285245,0.2118421891583695,0.16901430439981344,0.13899074753634727,0.020785985471749924,-0.010016744009463287,-0.09929946148823415)
net_minHPD=c(0.08890818698393788, 0.12872481957376652,0.1505964231378948,0.156550765206509,0.15374269947627772,0.15374269947627772,0.1472375957961217,0.10093658525979117,0.08310556231442937,0.024550760072601777,-0.08680833595414283,-0.1193356503015976,-0.21913783045939705)
net_maxHPD=c(0.5019601517041801, 0.4790486785083187,0.45594562605252126,0.43248898996894014,0.4247992393731731,0.4199109880194083,0.4184705406675977,0.3424234631205275,0.2816873780272658,0.25400211861357974,0.13098896354046727,0.09971947961513111,0.02753317985063325)
plot(time,time,type = 'n', ylim = c(-0.24105161350533677, 0.5521561668745981), xlim = c(2012.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(2.0, 3.0,4.0,5.0)
counts=c(569, 208,22,1)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2012.5, 2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.02255001483586542, 0.019448873439387282,0.01741704280414621,0.016410709417903086,0.016125765668390267,0.01596407257678125,0.01604847231210483,0.016061034012441525,0.016868459848880902,0.03239379237129038,0.14864255853033856,0.15622826772896095,0.16933930950174558)
death_minHPD=c(0.00031613499140851857, 0.0005302775858686661,0.00031613499140851857,0.000821172451321803,0.0005302775858686661,0.0005524813941466891,0.0005302775858686661,0.0005524813941466891,0.000821172451321803,0.0023804825458640347,0.06792031702540245,0.0943017409777912,0.09648969949164184)
death_maxHPD=c(0.06516255300752814, 0.042933369977259765,0.03575834562337477,0.0346977913859898,0.03315497053114391,0.032391411193142414,0.032391411193142414,0.032391411193142414,0.03506077708723748,0.1342215162040892,0.2232583296159491,0.22553882520518584,0.25757858741062156)
plot(time,time,type = 'n', ylim = c(0, 0.28333644615168374), xlim = c(2012.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.0425,0.03375,0.0175,0.01625,0.00875,0.0075,0.0075,0.02375,0.1525,0.84375,0.0725,0.0925)
plot(time,death_counts,type = 'h', xlim = c(2012.0,2025.5), ylim=c(0,0.84375), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,0.03239379237129038,NA,NA,NA)
death_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,0.14864255853033856,NA,NA)
#Net Diversity
net_diversity=c(1.0, 2.0,6.0,10.0,12.0,21.0,31.0,40.0,49.0,56.0,63.5,64.0,52.5)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.5,0.6666666666666666,0.4,0.16666666666666666,0.42857142857142855,0.3225806451612903,0.225,0.1836734693877551,0.14285714285714285,0.1889763779527559,0.125,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.03571428571428571,0.11023622047244094,0.125,0.2857142857142857)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.7000000000000001,.1),limits = c(0.0,0.7000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Nonfunctional_Improvement_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0)
counts=c(315, 359,107,19)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2007.5, 2008.5,2009.5,2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.21287069118129862, 0.206687865462359,0.20361815879851128,0.20264737828148216,0.20176141315438392,0.2022442738001685,0.2024019247300924,0.20406842805517558,0.204458933631218,0.2039715844909379,0.20396882734783972,0.20154991963198274,0.20064993810507556,0.20041760959919636,0.1967499563810958,0.17612676844493322,0.14687261823613448,0.1429909376948439)
birth_minHPD=c(0.0276718858879354, 0.028532936774856993,0.0420009225924964,0.05253254093378376,0.04823909606478622,0.06915129369884317,0.06915129369884317,0.086944296084083,0.10029275378165099,0.10029275378165099,0.10109860298907507,0.09739926817232716,0.10203756837518645,0.09739581107371581,0.08823411784183537,0.06305507115668617,0.028289412724018467,0.027218783358697082)
birth_maxHPD=c(0.40550284682390525, 0.3660990405012987,0.365588132261965,0.3660990405012987,0.3443858821825979,0.3516827683201537,0.3331672844297791,0.3218275222553025,0.32763440244396325,0.31496667406087014,0.31836572738800584,0.306436308304075,0.306436308304075,0.30388081334846256,0.29217091886355034,0.2771853613741997,0.24870738469996528,0.24992177812998886)
plot(time,time,type = 'n', ylim = c(0, 0.44605313150629583), xlim = c(2007.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Nonfunctional_Improvement_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.04,0.0375,0.0275,0.035,0.0375,0.035,0.04375,0.025,0.0325,0.01875,0.025,0.02125,0.02625,0.03125,0.13625,0.1825,0.0325)
plot(time,birth_counts,type = 'h', xlim = c(2007.0,2025.5), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.09903445738795981
bf6 = 0.4481868751915307
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.17612676844493322,0.14687261823613448,NA)
birth_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
#Net Rate
net_rate=c(0.16374598043185207, 0.1591160674462158,0.15720367193693835,0.15848577849772993,0.15862178137979013,0.1619348526327072,0.16317814875833186,0.16658516670324228,0.16725640545580564,0.16764258039488414,0.16851456978822327,0.1660776515622152,0.1649408304139809,0.1639447507297944,0.15952294416425883,0.13559436746337186,-0.10690852950187286,-0.11905905244457818)
net_minHPD=c(-0.03951345043336754, -0.03951345043336754,-0.03951345043336754,-0.02848128394974936,-0.0038682016951057663,-0.008609121090332822,-0.0032646317857031038,0.02194448183977621,0.02518897768075637,0.05293349845515474,0.05415374497939524,0.06117704490610295,0.06372217699039864,0.05643611358919334,0.05412783442322541,0.0012457135451097653,-0.3070537329379276,-0.3306463863328113)
net_maxHPD=c(0.43894437263677344, 0.3790449301841322,0.343657828334121,0.3292218347761454,0.3206350158866208,0.303892576004337,0.28648338610945007,0.28648338610945007,0.28648338610945007,0.2929739492656027,0.28880201169934144,0.28811121894989167,0.28648338610945007,0.28648338610945007,0.28648338610945007,0.2566197370834925,0.1327297158372588,0.08671228566149203)
plot(time,time,type = 'n', ylim = c(-0.3637110249660925, 0.4828388099004508), xlim = c(2007.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(16, 614,149,20,1)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2007.5, 2008.5,2009.5,2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.049124710749446236, 0.04757179801614306,0.04641448686157287,0.044161599783752094,0.0431396317745936,0.04030942116746111,0.03922377597176026,0.03748326135193301,0.03720252817541204,0.03632900409605355,0.03545425755961626,0.035472268069767304,0.03570910769109448,0.03647285886940178,0.03722701221683682,0.040532400981561266,0.2537811477380071,0.2620499901394218)
death_minHPD=c(0.002212919659946495, 0.0026541849470337266,0.002212919659946495,0.002212919659946495,0.002212919659946495,0.002212919659946495,0.0010944107170713102,0.002212919659946495,0.002212919659946495,0.002212919659946495,0.0010944107170713102,0.002212919659946495,0.0010944107170713102,0.0023808730154434897,0.0010944107170713102,0.0010944107170713102,0.03917625069213541,0.08232350942535052)
death_maxHPD=c(0.14023405112500895, 0.1395322419639041,0.13786668840295077,0.12220955619403374,0.11937582536178014,0.10754771074445295,0.09564663607921443,0.09157938170176846,0.09221607882107209,0.08971945751626903,0.08394181040946254,0.08394181040946254,0.08394181040946254,0.08971945751626903,0.09322172457304989,0.11413333599717077,0.41744744330562994,0.4418623479557617)
plot(time,time,type = 'n', ylim = c(0, 0.4860485827513379), xlim = c(2007.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.02125,0.01625,0.02875,0.0225,0.025,0.015,0.01875,0.01625,0.015,0.02,0.01,0.01375,0.01875,0.01625,0.02625,0.90375,0.0325)
plot(time,death_counts,type = 'h', xlim = c(2007.0,2025.5), ylim=c(0,0.90375), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
death_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.2537811477380071,NA)
#Net Diversity
net_diversity=c(1.0, 1.0,1.0,1.0,1.0,1.0,1.0,2.0,3.0,4.0,6.0,7.0,9.0,11.5,16.0,19.0,18.0,13.0)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.5,0.3333333333333333,0.25,0.3333333333333333,0.14285714285714285,0.2222222222222222,0.2608695652173913,0.3125,0.15789473684210525,0.05555555555555555,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.08695652173913043,0.0,0.0,0.2222222222222222,0.46153846153846156)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.5,.1),limits = c(0.0,0.5)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Search-Based_APR_Tool_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(34, 550,191,22,3)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2010.5, 2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.25241630493346856, 0.24760469269681418,0.24788161923865257,0.24339889773284404,0.239206992817476,0.2370066636814852,0.2371773217002947,0.23630562760703688,0.23730287995969016,0.23441111468592304,0.10730042415708263,0.1051608867402753,0.08562511720145753,0.068795256365667,0.06842391009358631)
birth_minHPD=c(0.10394151294237562, 0.1001072872801505,0.1001072872801505,0.11167616283416075,0.11643870908373397,0.11864937800053302,0.11244962012652623,0.11537845620709845,0.11978506059033792,0.10081910633455324,0.025388475657341543,0.027790660550101133,0.015474850737367799,0.007662270384421825,0.002095921536784094)
birth_maxHPD=c(0.45787800426664477, 0.39326010334947276,0.3790695944091928,0.3790695944091928,0.3726431286405802,0.3726431286405802,0.36735327126276746,0.36562526295539927,0.37093998310225557,0.3651805089876136,0.22580832675598117,0.2247090673924174,0.18034873318878447,0.146332016368441,0.13843900017395483)
plot(time,time,type = 'n', ylim = c(0, 0.5036658046933092), xlim = c(2010.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Search-Based_APR_Tool_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.035,0.0325,0.02625,0.03375,0.02375,0.02625,0.025,0.02625,0.0275,0.66125,0.03375,0.15375,0.145,0.0125)
plot(time,birth_counts,type = 'h', xlim = c(2010.0,2025.5), ylim=c(0,0.66125), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.10824800823974852
bf6 = 0.4728359998887685
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.08562511720145753,0.068795256365667,NA)
birth_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,0.10730042415708263,NA,NA,NA,NA)
#Net Rate
net_rate=c(0.22410935559218312, 0.22245082744144348,0.22683246756623343,0.22413609255112021,0.22094359849198258,0.2186779788063019,0.21923644828098293,0.21858699579504803,0.2195652980968456,0.2163869342412469,0.08841507076049644,0.08071131758857143,-0.05765829611556034,-0.07612730167367963,-0.0772397113475072)
net_minHPD=c(0.053516610605258655, 0.05890079680975885,0.08862372689268337,0.08862372689268337,0.09799585028507235,0.0967543353423144,0.09467718356281798,0.09777715694730517,0.09777715694730517,0.09112663042844141,-0.01547841661193021,-0.02355018736642707,-0.19119437546562965,-0.18587457202148133,-0.1985193287951456)
net_maxHPD=c(0.46824851342389506, 0.39503791368353763,0.39426806516189405,0.3603590588795159,0.36028407386202776,0.35630080865796415,0.35151523689529324,0.34927653050954277,0.35151523689529324,0.36028407386202776,0.21095883978644453,0.24134820472400834,0.0747761031369051,0.044099088260923736,0.027981485688790067)
plot(time,time,type = 'n', ylim = c(-0.2183712616746602, 0.5150733647662846), xlim = c(2010.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0)
counts=c(13, 648,127,12)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2010.5, 2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.0283069493412854, 0.025153865255370583,0.02104915167241901,0.019262805181723755,0.018263394325493284,0.01832868487518316,0.01794087341931161,0.017718631811988714,0.017737581862844336,0.01802418044467603,0.018885353396586157,0.0244495691517038,0.1432834133170178,0.14492255803934648,0.14566362144109338)
death_minHPD=c(0.00033706386873518207, 0.00033706386873518207,0.00033706386873518207,0.00046732560919159814,0.00046732560919159814,0.0006299894444552946,0.00033706386873518207,0.00033706386873518207,0.00046732560919159814,0.00033706386873518207,0.00033706386873518207,0.00033706386873518207,0.047304708475347,0.06754619289082839,0.06754619289082839)
death_maxHPD=c(0.08518146209327335, 0.07739260356481277,0.06163654140111502,0.053875045430259866,0.051066307976419374,0.05132946709449203,0.04975513872336149,0.04753608648445859,0.049355471939070736,0.04975513872336149,0.05348606182899798,0.09205103698811022,0.23229743126643573,0.24227389758677245,0.24227389758677245)
plot(time,time,type = 'n', ylim = c(0, 0.2665012873454497), xlim = c(2010.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.03375,0.02875,0.02375,0.02125,0.01375,0.01375,0.01125,0.01375,0.01125,0.0175,0.065,0.88125,0.0225,0.015)
plot(time,death_counts,type = 'h', xlim = c(2010.0,2025.5), ylim=c(0,0.88125), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
death_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.1432834133170178,NA,NA)
#Net Diversity
net_diversity=c(1.0, 1.0,3.0,4.0,5.0,6.0,7.0,8.0,13.0,19.0,19.0,23.0,23.0,20.0,17.0)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.0,0.6666666666666666,0.25,0.2,0.16666666666666666,0.14285714285714285,0.125,0.38461538461538464,0.3157894736842105,0.0,0.17391304347826086,0.08695652173913043,0.0,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.17391304347826086,0.1,0.23529411764705882)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.7000000000000001,.1),limits = c(0.0,0.7000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Symbolic_APR_Tool_BD_mcmc###

#Number Shifts
unique=c(2.0, 3.0,4.0,5.0)
counts=c(361, 375,61,3)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2005.5, 2006.5,2007.5,2008.5,2009.5,2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.20856938353493143, 0.20918925780756234,0.2054912324165932,0.20508577947888548,0.2043453134483856,0.2021520334887328,0.19809279538882574,0.17608878447838358,0.16356585962937334,0.16097521680681776,0.15770877821448828,0.15084542562416786,0.14861750148811223,0.14730830673472176,0.1462525917557069,0.1441837526256227,0.1439299375419617,0.13964196793871841,0.01475534152894129,0.014620090425254641)
birth_minHPD=c(0.10237606344854154, 0.11554503456399688,0.11554503456399688,0.11924689605406111,0.11924689605406111,0.11554503456399688,0.11694984640401591,0.11859164266364343,0.10912374650053634,0.107285626417212,0.10614212799876722,0.10452790448171166,0.10847581476852697,0.10496762298131185,0.10614212799876722,0.10446215302860329,0.10446215302860329,0.0947034124417273,3.346745037580761e-05,0.00038344011244670145)
birth_maxHPD=c(0.39849769970426235, 0.39184509873503587,0.3793927541520095,0.38117890399392373,0.38117890399392373,0.3687246557658154,0.3616130209338976,0.2957575265231176,0.24604600888442912,0.23607650440887248,0.22745983910148485,0.1959871571586339,0.19254025901522995,0.1863431782203443,0.1863431782203443,0.18514070516284273,0.18529553078192373,0.19334828482912256,0.03638896181953657,0.03638896181953657)
plot(time,time,type = 'n', ylim = c(0, 0.43834746967468863), xlim = c(2005.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Symbolic_APR_Tool_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.025,0.02125,0.01375,0.0175,0.025,0.02875,0.13125,0.09375,0.0325,0.035,0.07375,0.03125,0.02375,0.02125,0.03375,0.0125,0.045,0.96625,0.00125)
plot(time,birth_counts,type = 'h', xlim = c(2005.0,2025.5), ylim=c(0,0.96625), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.09467842864846658
bf6 = 0.4359036051412592
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=c(NA, NA,NA,NA,NA,NA,NA,0.17608878447838358,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)
birth_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.01475534152894129,NA)
#Net Rate
net_rate=c(0.1828790414242865, 0.18771119378098497,0.18528926042990476,0.18652270975057925,0.18628998515293765,0.1841951562065999,0.18033206276803748,0.15838992615342243,0.14597416905738286,0.14339357675841735,0.14012030441665682,0.13325387354158005,0.13097579337578963,0.12941367986858995,0.12831605543900107,0.12611888903920565,0.12498620065149472,0.11745230056390069,-0.008777968001696692,-0.25724851080051975)
net_minHPD=c(0.05972569829015892, 0.08891627464817602,0.08891627464817602,0.08985624159805197,0.08891627464817602,0.08891627464817602,0.09266701286083702,0.09310888548272021,0.08817988180086742,0.0849788563729295,0.09310888548272021,0.09018066522248679,0.08397810508868289,0.08397810508868289,0.08515867487326699,0.08449382806986042,0.08326487270599904,0.05899525539398159,-0.04870706977761485,-0.39215915853339284)
net_maxHPD=c(0.4261463325006256, 0.4084296313275459,0.3732731000303935,0.3662902938627145,0.36013745769718947,0.3517438406556219,0.3415151300315036,0.27260081594457414,0.22968529966449072,0.21496481596470357,0.2155253709581274,0.18506581857829857,0.17216350090992094,0.169504443877757,0.169504443877757,0.169504443877757,0.169504443877757,0.1793240584735252,0.02508924344276715,-0.13223497177879648)
plot(time,time,type = 'n', ylim = c(-0.43137507438673217, 0.4687609657506882), xlim = c(2005.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(2.0, 3.0,4.0)
counts=c(602, 180,18)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2005.5, 2006.5,2007.5,2008.5,2009.5,2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.02569034211064537, 0.021478064026577693,0.020201971986688848,0.018563069728306625,0.018055328295448335,0.01795687728213316,0.017760732620788543,0.017698858324961254,0.017591690571990462,0.017581640048400488,0.01758847379783155,0.017591552082587943,0.01764170811232275,0.01789462686613198,0.01793653631670592,0.018064863586417148,0.018943736890467057,0.022189667374817867,0.023533309530637973,0.2718686012257743)
death_minHPD=c(0.001640661935121239, 0.0028617713827878773,0.0028617713827878773,0.005297628035301308,0.0058671501116638585,0.0058671501116638585,0.005297628035301308,0.0058671501116638585,0.00629628637724011,0.00629628637724011,0.00629628637724011,0.00629628637724011,0.00629628637724011,0.00661904601610507,0.00629628637724011,0.00629628637724011,0.005297628035301308,0.008547483978375377,0.008547483978375377,0.15524752759618432)
death_maxHPD=c(0.06367313407575978, 0.035559302389464864,0.03188619385238346,0.03188619385238346,0.03145012428885833,0.03109169143531934,0.030376434835031794,0.030701809452640966,0.030701809452640966,0.030642766936518434,0.030642766936518434,0.030642766936518434,0.030376434835031794,0.03081268910204487,0.030642766936518434,0.030983096781156114,0.032547866510507846,0.049728301228114474,0.05059163251488667,0.41116722910095344)
plot(time,time,type = 'n', ylim = c(0, 0.4522839520110488), xlim = c(2005.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.0325,0.01875,0.015,0.0125,0.0075,0.00625,0.005,0.00625,0.00875,0.0025,0.00125,0.005,0.0175,0.00375,0.005,0.03375,0.085,0.01375,0.99)
plot(time,death_counts,type = 'h', xlim = c(2005.0,2025.5), ylim=c(0,0.99), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
death_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.2718686012257743)
#Net Diversity
net_diversity=c(1.0, 3.0,3.0,4.0,6.0,9.0,14.0,17.0,19.0,24.0,30.0,34.0,40.0,45.0,53.0,58.0,68.5,73.5,70.5,60.0)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.6666666666666666,0.0,0.25,0.3333333333333333,0.3333333333333333,0.35714285714285715,0.17647058823529413,0.10526315789473684,0.20833333333333334,0.2,0.11764705882352941,0.15,0.13333333333333333,0.16981132075471697,0.08620689655172414,0.16058394160583941,0.09523809523809523,0.0,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.044444444444444446,0.0,0.0,0.014598540145985401,0.04081632653061224,0.0425531914893617,0.3)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.7000000000000001,.1),limits = c(0.0,0.7000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Template-Based_APR_Tool_BD_mcmc###

#Number Shifts
unique=c(2.0, 3.0,4.0)
counts=c(577, 206,17)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.30369930668177836, 0.29937858416678814,0.3004285921576584,0.2996614780356633,0.30053978899569567,0.29918813553673784,0.2976869444758528,0.29690331182625745,0.29733026137997703,0.2981224535745932,0.29597549285295655,0.08499724429153291,0.07756599331119228,0.07708391305739766,0.07071987915472808,0.06975588201406409)
birth_minHPD=c(0.13152672838650536, 0.16670160339811582,0.18512790821395586,0.1885615006026902,0.18833585547568296,0.19477074131305408,0.2072051864305872,0.20806044518479186,0.20986431732783284,0.21101897561679916,0.20986431732783284,0.040015075671933374,0.042015371544981917,0.042015371544981917,0.027269887956043074,0.01813535605904039)
birth_maxHPD=c(0.4335242032956057, 0.413711043218205,0.413711043218205,0.40959887772423276,0.39741354918144833,0.3978268186752327,0.3978268186752327,0.39741354918144833,0.3978268186752327,0.3978268186752327,0.40959887772423276,0.15383639205197924,0.12062321156727215,0.12001787220387715,0.11360118392206639,0.10873757026778658)
plot(time,time,type = 'n', ylim = c(0, 0.4768766236251663), xlim = c(2009.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Template-Based_APR_Tool_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.03625,0.0175,0.01625,0.02125,0.0175,0.02,0.01375,0.01625,0.0075,0.015,0.95125,0.04625,0.01375,0.08875,0.01875)
plot(time,birth_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.95125), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.10513983546376103
bf6 = 0.4647146930402428
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
birth_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.08499724429153291,NA,NA,NA,NA)
#Net Rate
net_rate=c(0.27588962654446825, 0.27346934373886234,0.27706989243258134,0.27752163973108374,0.2801817626413158,0.27937146083402914,0.2780367474091283,0.27759547375051086,0.2780871166838622,0.27895029722868697,0.276765889266857,0.06543288788637486,0.05530008227340593,0.053333598524692445,-0.09044029867348918,-0.16562437103486347)
net_minHPD=c(0.047307125534754996, 0.10349934917039791,0.14569832618018397,0.15894506342044987,0.18067546493261982,0.1677463031092534,0.18067546493261982,0.187249848137596,0.187249848137596,0.18966905858677677,0.1706809982239536,0.0016535720167365278,0.003347666686612509,0.003347666686612509,-0.2192745047570642,-0.32518112367649415)
net_maxHPD=c(0.3991540181499863, 0.3991540181499863,0.3980226491975645,0.3991540181499863,0.3971978078218444,0.37743102421167357,0.37743102421167357,0.38076862755683116,0.37864686538520936,0.37864686538520936,0.3755798776770292,0.13049322634874713,0.10034375575024276,0.10829515305258097,0.07679457998098911,-0.030569304793674812)
plot(time,time,type = 'n', ylim = c(-0.3576992360441436, 0.43906941996498494), xlim = c(2009.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(2.0, 3.0,4.0,5.0)
counts=c(607, 171,21,1)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.027809680137309948, 0.02590924042792554,0.02335869972507678,0.022139838304579253,0.020358026354379614,0.019816674702708367,0.019650197066724127,0.01930783807574634,0.01924314469611447,0.019172156345905952,0.01920960358609917,0.019564356405158034,0.022265911037786384,0.023750314532705263,0.1611601778282173,0.2353802530489276)
death_minHPD=c(0.0009980212561596811, 0.0026624156510002277,0.0029544725662037853,0.0029950000305864447,0.004113523704133078,0.003969157810150835,0.003969157810150835,0.003969157810150835,0.003969157810150835,0.0026624156510002277,0.0026624156510002277,0.003969157810150835,0.0029950000305864447,0.003969157810150835,0.015586617312811931,0.12321790950583504)
death_maxHPD=c(0.07583271793976855, 0.06327906687086934,0.04811802985068985,0.04493848428551825,0.04127596644886454,0.040296230516284094,0.039168470994226316,0.038584648071662446,0.03830573422076865,0.03679404399835744,0.03679404399835744,0.039047931851814086,0.0464553157543094,0.05627966823742823,0.2717766249067077,0.3954828683686122)
plot(time,time,type = 'n', ylim = c(0, 0.4350311552054734), xlim = c(2009.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.02375,0.025,0.01375,0.02,0.015,0.01125,0.015,0.00625,0.00375,0.0075,0.015,0.06,0.03125,0.745,0.2775)
plot(time,death_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.745), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.2353802530489276)
death_BF6=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.1611601778282173,NA)
#Net Diversity
net_diversity=c(1.0, 1.0,2.0,2.0,5.0,7.0,10.0,13.0,18.0,29.0,40.0,44.0,47.0,51.5,50.5,40.5)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.0,0.5,0.0,0.6,0.2857142857142857,0.3,0.23076923076923078,0.2777777777777778,0.3793103448275862,0.275,0.09090909090909091,0.0851063829787234,0.11650485436893204,0.039603960396039604,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0425531914893617,0.019417475728155338,0.09900990099009901,0.37037037037037035)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.6000000000000001,.1),limits = c(0.0,0.6000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')



###Test_Suite_Improvement_or_Extension_BD_mcmc###

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0,5.0)
counts=c(225, 446,115,13,1)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#4c4cec')
#Birth rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
birth_rate=c(0.19481255174516107, 0.19319998186539486,0.18829868004932743,0.1867285293528075,0.18761627480204665,0.18011663263611524,0.17870114499438272,0.17522311777574429,0.16615273155047863,0.16046948192392396,0.15095094744204599,0.1360611999578321,0.11221772829646971,0.09798276511425791,0.08849820558838975,0.08778213733857142)
birth_minHPD=c(0.058156711988043654, 0.058156711988043654,0.058156711988043654,0.058156711988043654,0.058156711988043654,0.06378691114543872,0.06830593091753508,0.07244427133842667,0.07300892209136363,0.06252324489411071,0.04435617957211366,0.04089141226507837,0.01643574045906527,0.01672318909861203,0.004799878979384683,0.0062350653123443575)
birth_maxHPD=c(0.3896994055905087, 0.37541324615731825,0.34764341973635626,0.33944449643979097,0.33944449643979097,0.3198582260820638,0.3142952426443368,0.31100442068272116,0.2979091182839079,0.28584015371967225,0.2657802341981085,0.24654635505892947,0.20285375364045333,0.1835465680301827,0.16673448933004867,0.16673448933004867)
plot(time,time,type = 'n', ylim = c(0, 0.4286693461495596), xlim = c(2009.0,2025.5), ylab = 'Birth rate', xlab = 'Time (AD)',main='Test_Suite_Improvement_or_Extension_BD_mcmc' )
polygon(c(time, rev(time)), c(birth_maxHPD, rev(birth_minHPD)), col = alpha('#4c4cec',0.3), border = NA)
lines(time,birth_rate, col = '#4c4cec', lwd=2)
#Frequency of shifts
birth_counts=c(0.0, 0.03875,0.0325,0.0275,0.0225,0.0475,0.0275,0.02875,0.06125,0.0425,0.0725,0.105,0.175,0.11125,0.095,0.01125)
plot(time,birth_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#4c4cec')
bf2 = 0.10533075330784895
bf6 = 0.46521909761052394
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
birth_BF2=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.11221772829646971,0.09798276511425791,NA,NA)
birth_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
#Net Rate
net_rate=c(0.15672618729659554, 0.1577361021871181,0.153923407356985,0.1547486141310609,0.15807692811071078,0.15118835065281755,0.15035157964919654,0.14726835808820002,0.13866054663663138,0.13286811156393433,0.1236194055016711,0.10831163831741461,0.08402738493667876,0.06868209116196558,0.053094109669657996,0.05180961185670904)
net_minHPD=c(-0.048449426976422516, 0.009624824078415153,0.009624824078415153,0.009624824078415153,0.009624824078415153,0.02237117762056358,0.026439113411790602,0.0214636461072107,0.03762018709274011,0.02659238631498132,0.02082599061904249,0.005882218420503099,-0.023201045064199535,-0.024989846120445768,-0.04255128117073219,-0.04303773517412604)
net_maxHPD=c(0.37694430569052556, 0.4043157983493458,0.3776362076787394,0.3394148998777839,0.3302674985803544,0.30435764209777216,0.3001219656628938,0.2796097722476757,0.2761783495626452,0.26030943181404664,0.2498508670150538,0.22892809060039399,0.1796983146100452,0.15957803112493268,0.15011680506923974,0.15135810756393703)
plot(time,time,type = 'n', ylim = c(-0.05329436967406477, 0.4447473781842804), xlim = c(2009.0,2025.5), ylab = 'Net Rate', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )
polygon(c(time, rev(time)), c(net_maxHPD, rev(net_minHPD)), col = alpha('#32CD32',0.3), border = NA)
lines(time,net_rate, col = '#32CD32', lwd=2)
abline(h=0,lty=2)

#Number Shifts
unique=c(1.0, 2.0,3.0,4.0)
counts=c(464, 267,66,3)
plot(unique,counts,type = 'h', xlim = c(0,6.0), ylab = 'Frequency', xlab = 'n. shifts',lwd=5,col='#e34a33')
#Death rate Plot
time=c(2009.5, 2010.5,2011.5,2012.5,2013.5,2014.5,2015.5,2016.5,2017.5,2018.5,2019.5,2020.5,2021.5,2022.5,2023.5,2024.5)
death_rate=c(0.0380863644485656, 0.03546387967827693,0.03437527269234247,0.031979915221746605,0.029539346691335885,0.028928281983297766,0.02834956534518624,0.02795475968754432,0.027492184913847365,0.027601370359989722,0.027331541940375067,0.027749561640417655,0.0281903433597912,0.029300673952292314,0.035404095918731844,0.03597252548186243)
death_minHPD=c(0.001447584827648573, 0.001447584827648573,0.0020954505965891214,0.001447584827648573,0.002151783315165258,0.002151783315165258,0.001447584827648573,0.001447584827648573,0.0020954505965891214,0.0020954505965891214,0.0020954505965891214,0.002151783315165258,0.002151783315165258,0.005170883824320002,0.002611955268463409,0.002611955268463409)
death_maxHPD=c(0.1059165037630074, 0.08919310396725671,0.08566460968530014,0.07366232863882449,0.06620949660530172,0.06365840527916314,0.06211951652759905,0.057408939993763175,0.055774108952990994,0.055620839819514,0.05516774609535132,0.055774108952990994,0.056802989952237634,0.06364734422625881,0.08273452328560309,0.08429216929125977)
plot(time,time,type = 'n', ylim = c(0, 0.11650815413930815), xlim = c(2009.0,2025.5), ylab = 'Death rate', xlab = 'Time (AD)',main='' )
polygon(c(time, rev(time)), c(death_maxHPD, rev(death_minHPD)), col = alpha('#e34a33',0.3), border = NA)
lines(time,death_rate, col = '#e34a33', lwd=2)
#Frequency of shifts
death_counts=c(0.0, 0.0425,0.0325,0.0425,0.03,0.03375,0.02625,0.04,0.02,0.01375,0.025,0.025,0.02,0.035,0.0975,0.02625)
plot(time,death_counts,type = 'h', xlim = c(2009.0,2025.5), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time (AD)',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
death_BF2=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
death_BF6=as.numeric(c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA))
#Net Diversity
net_diversity=c(1.0, 1.0,1.0,1.0,3.0,3.0,4.0,6.0,7.0,9.0,11.0,13.0,14.0,15.0,14.5,13.5)
plot(time,net_diversity,type = 'l', ylab = 'Net Diversity', xlab = 'Time (AD)',lwd=2, main='', col= '#32CD32' )


#PRETTY PLOT
usePackage <- function(p){
if (!is.element(p, installed.packages()[,1]))
install.packages(p, dep = TRUE, repos='https://cloud.r-project.org')
require(p, character.only = TRUE)}
usePackage('ggplot2')

emp_birth=c(NA, 0.0,0.0,0.0,0.6666666666666666,0.0,0.25,0.3333333333333333,0.14285714285714285,0.2222222222222222,0.18181818181818182,0.15384615384615385,0.07142857142857142,0.06666666666666667,0.0,0.0)
emp_death=c(NA, 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.06896551724137931,0.07407407407407407)
rates.dat=data.frame(time,emp_birth,emp_death,birth_rate,birth_minHPD,birth_maxHPD,birth_BF2,birth_BF6,death_minHPD,death_maxHPD,death_BF2,death_BF6)
ggplot(rates.dat, aes(time,birth_rate)) +
        geom_line(size=.7,col='blue') +
        geom_line(aes(time,death_rate),col='red',size=.7) +
         scale_color_manual(values = c('blue','red')) +
        scale_x_continuous(breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,5),minor_breaks=seq(time[1]-time[1]%%-5,time[length(time)]-time[length(time)]%%-5,1)) +
        scale_y_continuous(breaks=seq(0.0,0.7000000000000001,.1),limits = c(0.0,0.7000000000000001)) + 
        geom_ribbon(aes_string(ymin=birth_minHPD,ymax=birth_maxHPD,fill=shQuote('red')),alpha=.2,col=NA)+ 
        geom_ribbon(aes_string(ymin=death_minHPD,ymax=death_maxHPD,fill=shQuote('blue')),alpha=.2,col=NA)+
        geom_line(aes(time,emp_birth,col='eb'),size=.5,linetype = 'dashed')+
        geom_line(aes(time,emp_death,col='ed'),size=.5,linetype = 'dashed')+
        geom_point(aes(time,birth_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,birth_BF6), size = 2, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF2), size = 1, alpha=1,col='yellow') +
        geom_point(aes(time,death_BF6), size = 2, alpha=1,col='yellow') +
        theme(legend.position = 'none')+
        labs(x='Time',y='Rates')




n <- dev.off()