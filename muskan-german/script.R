library("haven")
### LOCAL VARIABLES ###
path_in <- "/Users/muskanjha/Desktop/Stata/raw"
path_out <- "/Users/muskanjha/Desktop/Stata/raw"


#* * * NOT PROCESSED * * *.
# From datasets 'wpkal': ['pid'].
# From datasets 'gpkal': ['pid'].
# From datasets 'einkalen': ['pid'].
# From datasets 'bapkal': ['pid'].
# From datasets 'ev': ['pid'].
# From datasets 'npkal': ['pid'].
# From datasets 'gripstr': ['pid'].
# From datasets 'hpkal': ['pid'].
# From datasets 'biopupil': ['pid'].
# From datasets 'bpkal': ['pid'].
# From datasets 'zpkal': ['pid'].
# From datasets 'biojob': ['pid', 'isco88'].
# From datasets 'bioagel': ['pid'].
# From datasets 'hpost': ['pid'].
# From datasets 'pgen': ['pglabgro', 'pglfs', 'pgtrainc', 'pgpbbil02', 'pgpbbila', 'pgisced97', 'pgtraina', 'pgpsbil', 'pgerljob', 'pgfamstd', 'pgjobend', 'pid', 'pgpbbilo', 'pgfield', 'pgbilztev', 'pgimpgro', 'pgtrainb', 'pgerwzeit', 'pgemplst', 'pgexpft', 'pgnace', 'pgdegree', 'pgbilzeit', 'pgbilztch', 'pgstib', 'pgpsbilo', 'pgpsbila', 'pgausb', 'pgjobch', 'pgpbbil03', 'pgpbbil01', 'pgisco88'].
# From datasets 'fpkal': ['pid'].
# From datasets 'pkal': ['pid'].
# From datasets 'hpkalost': ['pid'].
# From datasets 'pbr_exit': ['pid'].
# From datasets 'pbrutto': ['pherkft', 'umzug', 'pid'].
# From datasets 'bhvp': ['pid'].
# From datasets 'bioregion': ['pid'].
# From datasets 'ppathl': ['pid'].
# From datasets 'plueckel': ['pid'].
# From datasets 'bavp': ['pid'].
# From datasets 'health': ['pid'].
# From datasets 'dpkal': ['pid'].
# From datasets 'bepkal': ['pid'].
# From datasets 'biobirth': ['pid', 'sumkids'].
# From datasets 'bkpkal': ['pid'].
# From datasets 'bgvp': ['pid'].
# From datasets 'bklela': ['pid'].
# From datasets 'jugendl': ['pid'].
# From datasets 'cpkal': ['pid'].
# From datasets 'migspell': ['pid'].
# From datasets 'more_local': ['pid'].
# From datasets 'qpkal': ['pid'].
# From datasets 'ddr18': ['pid'].
# From datasets 'rpkal': ['pid'].
# From datasets 'exit': ['pid', 'gebjahr'].
# From datasets 'biosib': ['gebjahr', 'pid'].
# From datasets 'bioparen': ['pid', 'fisco88', 'misco88'].
# From datasets 'bjvp': ['pid'].
# From datasets 'kidlong': ['pid'].
# From datasets 'bcpkal': ['pid'].
# From datasets 'apkal': ['pid'].
# From datasets 'ev20': ['pid'].
# From datasets 'bfpkal': ['pid'].
# From datasets 'bgpkal': ['pid'].
# From datasets 'bjpkal': ['pid'].
# From datasets 'more_docu': ['pid'].
# From datasets 'zvp': ['pid'].
# From datasets 'pbr_hhch': ['pid'].
# From datasets 'camces': ['pid'].
# From datasets 'refugspell': ['pid'].
# From datasets 'tpkal': ['pid'].
# From datasets 'timepref': ['pid'].
# From datasets 'lifespell': ['pid'].
# From datasets 'ppkal': ['pid'].
# From datasets 'bcvp': ['pid'].
# From datasets 'biocouply': ['pid'].
# From datasets 'bfvp': ['pid'].
# From datasets 'opkal': ['pid'].
# From datasets 'trust': ['pid'].
# From datasets 'gpost': ['pid'].
# From datasets 'biomarsm': ['pid'].
# From datasets 'pbiospe': ['pid'].
# From datasets 'bdvp': ['pid'].
# From datasets 'biotwin': ['pid'].
# From datasets 'bdpkal': ['pid'].
# From datasets 'biol': ['pid'].
# From datasets 'vpkal': ['pid'].
# From datasets 'lpkal': ['pid'].
# From datasets 'ppath': ['pid'].
# From datasets 'xpkal': ['pid'].
# From datasets 'bbpkal': ['pid'].
# From datasets 'pflege': ['pid'].
# From datasets 'gpkalost': ['pid'].
# From datasets 'biocouplm': ['pid'].
# From datasets 'pl': ['pid', 'p_isco88'].
# From datasets 'abroad': ['pid'].
# From datasets 'pequiv': ['pid'].
# From datasets 'bivp': ['pid'].
# From datasets 'epkal': ['pid'].
# From datasets 'bioimmig': ['pid'].
# From datasets 'treatment20': ['pid'].
# From datasets 'mpkal': ['pid'].
# From datasets 'kpkal': ['pid'].
# From datasets 'bkvp': ['pid'].
# From datasets 'bioedu': ['pid'].
# From datasets 'bevp': ['pid'].
# From datasets 'movedist': ['pid'].
# From datasets 'bbvp': ['pid'].
# From datasets 'ypkal': ['pid'].
# From datasets 'bhpkal': ['pid'].
# From datasets 'upkal': ['pid'].
# From datasets 'artkalen': ['pid'].
# From datasets 'cognit': ['pid'].
# From datasets 'spkal': ['pid'].
# From datasets 'bipkal': ['pid'].
# From datasets 'biomarsy': ['pid'].
# From datasets 'cog_refu': ['pid'].
# From datasets 'vpl': ['pid'].
# From datasets 'jpkal': ['pid'].
# From datasets 'ipkal': ['pid'].
# From datasets 'pwealth': ['pid'].
# From datasets 'cogdj': ['pid'].


### LOAD [H|P]PFAD ###

pfad <- read_dta(file.path(path_in, "ppfad.dta"))
pfad <- pfad[ , c("qpop", "mnetto", "mpop", "hid_1986", "epop", "ppop", "bjpop", "hid_2016", "hid_2000", "hid_2001", "vnetto", "snetto", "xnetto", "gnetto", "hid_2012", "bgnetto", "hid_1988", "hid_1999", "anetto", "cpop", "knetto", "spop", "bipop", "bapop", "hid_2011", "bepop", "hid_1990", "hpop", "lnetto", "hid_1984", "hid_2014", "hid_1992", "znetto", "bhnetto", "bfnetto", "pnetto", "bcpop", "gpop", "jnetto", "fpop", "hid_2015", "kpop", "bbnetto", "onetto", "hid_1991", "inetto", "benetto", "zpop", "bfpop", "hid_2002", "hid_2003", "hid_1985", "bhpop", "wnetto", "nnetto", "tpop", "ipop", "bjnetto", "ynetto", "hid_2020", "hid_2017", "opop", "vpop", "hid_1987", "xpop", "bkpop", "hid_2009", "hid_1994", "bdpop", "bgpop", "ypop", "hid_2005", "bnetto", "hid_1993", "bpop", "hid_2004", "dpop", "bknetto", "hid_1989", "upop", "sex", "npop", "hid_2008", "fnetto", "bcnetto", "hid_1997", "qnetto", "gebjahr", "hid_2019", "lpop", "cid", "bdnetto", "cnetto", "binetto", "banetto", "bbpop", "dnetto", "wpop", "rnetto", "unetto", "jpop", "apop", "rpop", "enetto", "tnetto", "hid_1996", "hid_1998", "pid", "hid_2010", "hid_2013", "hnetto", "hid_2007", "hid_2006", "hid_2018", "psample", "hid_1995")]

### [UN]BALANCED ###

pfad <- with(pfad, pfad[ (bfnetto >= 10 & bfnetto < 20) & (bnetto >= 10 & bnetto < 20) & (bhnetto >= 10 & bhnetto < 20) & (pnetto >= 10 & pnetto < 20) & (bbnetto >= 10 & bbnetto < 20) & (binetto >= 10 & binetto < 20) & (bknetto >= 10 & bknetto < 20) & (qnetto >= 10 & qnetto < 20) & (rnetto >= 10 & rnetto < 20) & (vnetto >= 10 & vnetto < 20) & (ynetto >= 10 & ynetto < 20) & (mnetto >= 10 & mnetto < 20) & (bgnetto >= 10 & bgnetto < 20) & (bcnetto >= 10 & bcnetto < 20) & (znetto >= 10 & znetto < 20) & (fnetto >= 10 & fnetto < 20) & (xnetto >= 10 & xnetto < 20) & (banetto >= 10 & banetto < 20) & (lnetto >= 10 & lnetto < 20) & (anetto >= 10 & anetto < 20) & (cnetto >= 10 & cnetto < 20) & (nnetto >= 10 & nnetto < 20) & (dnetto >= 10 & dnetto < 20) & (hnetto >= 10 & hnetto < 20) & (enetto >= 10 & enetto < 20) & (snetto >= 10 & snetto < 20) & (unetto >= 10 & unetto < 20) & (inetto >= 10 & inetto < 20) & (benetto >= 10 & benetto < 20) & (bdnetto >= 10 & bdnetto < 20) & (jnetto >= 10 & jnetto < 20) & (onetto >= 10 & onetto < 20) & (wnetto >= 10 & wnetto < 20) & (tnetto >= 10 & tnetto < 20) & (bjnetto >= 10 & bjnetto < 20) & (knetto >= 10 & knetto < 20) & (gnetto >= 10 & gnetto < 20) , ])

### PRIVATE HOUSEHOLDS ###

pfad <- with(pfad, pfad[ (bfpop == 1 | bfpop == 2)| (bpop == 1 | bpop == 2)| (bhpop == 1 | bhpop == 2)| (ppop == 1 | ppop == 2)| (bbpop == 1 | bbpop == 2)| (bipop == 1 | bipop == 2)| (bkpop == 1 | bkpop == 2)| (qpop == 1 | qpop == 2)| (rpop == 1 | rpop == 2)| (vpop == 1 | vpop == 2)| (ypop == 1 | ypop == 2)| (mpop == 1 | mpop == 2)| (bgpop == 1 | bgpop == 2)| (bcpop == 1 | bcpop == 2)| (zpop == 1 | zpop == 2)| (fpop == 1 | fpop == 2)| (xpop == 1 | xpop == 2)| (bapop == 1 | bapop == 2)| (lpop == 1 | lpop == 2)| (apop == 1 | apop == 2)| (cpop == 1 | cpop == 2)| (npop == 1 | npop == 2)| (dpop == 1 | dpop == 2)| (hpop == 1 | hpop == 2)| (epop == 1 | epop == 2)| (spop == 1 | spop == 2)| (upop == 1 | upop == 2)| (ipop == 1 | ipop == 2)| (bepop == 1 | bepop == 2)| (bdpop == 1 | bdpop == 2)| (jpop == 1 | jpop == 2)| (opop == 1 | opop == 2)| (wpop == 1 | wpop == 2)| (tpop == 1 | tpop == 2)| (bjpop == 1 | bjpop == 2)| (kpop == 1 | kpop == 2)| (gpop == 1 | gpop == 2), ])

### GENDER ( male = 1 / female = 2) ###

# all genders

### SORT [H|P]PFAD ###

# This is R -- no sorting neccessary :-)


### LOAD [H|P]HRF ###

hrf <- read_dta(file.path(path_in, "phrf.dta"))
hrf <- hrf[,c("cid", "bbphrf", "ophrf", "lphrf", "wphrf", "bgphrf", "prgroup", "cphrf", "bphrf", "dphrf", "baphrf", "aphrf", "mphrf", "pphrf", "gphrf", "ephrf", "tphrf", "nphrf", "bhphrf", "sphrf", "zphrf", "kphrf", "uphrf", "bkphrf", "rphrf", "fphrf", "pid", "bjphrf", "bephrf", "bcphrf", "iphrf", "bfphrf", "qphrf", "biphrf", "bdphrf", "yphrf", "hphrf", "jphrf", "vphrf", "xphrf")]

### CREATE MAIN ###

main <- merge( pfad, hrf, by = c("pid", "cid"))

### READ DATA ###

data <- list()


tmp_variables <- c("erljob85", "bpbbila", "expft85", "bpbbil01", "labgro85", "impgro85", "bpsbil", "jobend85", "emplst85", "berwzeit", "bilztch85", "trainb85", "degree85", "bpbbil03", "field85", "jobch85", "bpbbil02", "traina85", "bpsbila", "lfs85", "stib85", "pid", "isced97_85", "bfamstd", "bilztev85", "trainc85", "ausb85", "bbilzeit")
tmp_dataset <- read_dta(file.path(path_in, "bpgen.dta"))
data[["bpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jpbbil01", "bilztev93", "erljob93", "field93", "jpbbil02", "impgro93", "jbilzeit", "jerwzeit", "jobch93", "emplst93", "trainc93", "jpsbil", "jpbbil03", "labgro93", "bilztch93", "traina93", "pid", "lfs93", "ausb93", "expft93", "degree93", "jpbbila", "stib93", "jfamstd", "isced97_93", "trainb93", "jobend93", "jpsbila")
tmp_dataset <- read_dta(file.path(path_in, "jpgen.dta"))
data[["jpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("isced97_89", "jobch89", "degree89", "fpbbila", "jobend89", "emplst89", "expft89", "ffamstd", "fpbbil02", "ausb89", "bilztev89", "fpsbila", "traina89", "fpbbil01", "erljob89", "pid", "trainc89", "lfs89", "fpbbil03", "bilztch89", "field89", "fbilzeit", "labgro89", "fpsbil", "ferwzeit", "impgro89", "trainb89", "stib89")
tmp_dataset <- read_dta(file.path(path_in, "fpgen.dta"))
data[["fpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bipequiv.dta"))
data[["bipequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("eerwzeit", "traina88", "epbbil01", "ausb88", "epbbil02", "jobend88", "field88", "labgro88", "bilztch88", "expft88", "emplst88", "epbbil03", "jobch88", "trainb88", "efamstd", "epsbil", "stib88", "trainc88", "pid", "impgro88", "lfs88", "ebilzeit", "epsbila", "degree88", "erljob88", "epbbila", "bilztev88", "isced97_88")
tmp_dataset <- read_dta(file.path(path_in, "epgen.dta"))
data[["epgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bdbilzeit", "erljob13", "jobend13", "field13", "bdpbbil01", "bderwzeit", "jobch13", "bdfamstd", "trainc13", "lfs13", "impgro13", "isced97_13", "ausb13", "bdpsbila", "stib13", "trainb13", "bdpsbil", "labgro13", "emplst13", "pid", "bilztev13", "bdpbbil02", "bdpbbil03", "bdpbbila", "expft13", "traina13", "bilztch13", "degree13")
tmp_dataset <- read_dta(file.path(path_in, "bdpgen.dta"))
data[["bdpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("emplst09", "trainc09", "field09", "zpsbil", "zpsbila", "zpbbil01", "trainb09", "zbilzeit", "lfs09", "impgro09", "expft09", "zpbbil03", "labgro09", "zpbbil02", "erljob09", "jobend09", "traina09", "bilztch09", "pid", "degree09", "isced97_09", "zfamstd", "bilztev09", "zpbbila", "jobch09", "zerwzeit", "stib09", "ausb09")
tmp_dataset <- read_dta(file.path(path_in, "zpgen.dta"))
data[["zpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("labgro01", "jobend01", "rpbbil02", "trainc01", "isced97_01", "rerwzeit", "field01", "rfamstd", "rpbbila", "rbilzeit", "expft01", "impgro01", "bilztev01", "rpsbil", "rpsbila", "erljob01", "pid", "degree01", "jobch01", "lfs01", "bilztch01", "ausb01", "rpbbil01", "trainb01", "rpbbil03", "traina01", "stib01", "emplst01")
tmp_dataset <- read_dta(file.path(path_in, "rpgen.dta"))
data[["rpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ifamstd", "ibilzeit", "ipbbil03", "isced97_92", "emplst92", "field92", "ipbbila", "labgro92", "jobch92", "trainc92", "ipbbil01", "impgro92", "bilztev92", "ausb92", "ierwzeit", "ipsbil", "stib92", "ipsbila", "trainb92", "traina92", "expft92", "pid", "erljob92", "degree92", "bilztch92", "ipbbil02", "lfs92", "jobend92")
tmp_dataset <- read_dta(file.path(path_in, "ipgen.dta"))
data[["ipgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jobend84", "traina84", "trainb84", "apbbila", "apsbila", "bilztev84", "apbbil03", "impgro84", "afamstd", "jobch84", "apbbil02", "bilztch84", "labgro84", "lfs84", "degree84", "apsbil", "erljob84", "emplst84", "stib84", "pid", "ausb84", "abilzeit", "isced97_84", "aerwzeit", "trainc84", "apbbil01", "field84", "expft84")
tmp_dataset <- read_dta(file.path(path_in, "apgen.dta"))
data[["apgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("impgro02", "isced97_02", "sfamstd", "spsbila", "traina02", "lfs02", "bilztev02", "spbbil01", "serwzeit", "ausb02", "stib02", "expft02", "spbbil03", "sbilzeit", "trainb02", "labgro02", "erljob02", "degree02", "pid", "bilztch02", "field02", "spbbila", "jobch02", "trainc02", "spsbil", "jobend02", "spbbil02", "emplst02")
tmp_dataset <- read_dta(file.path(path_in, "spgen.dta"))
data[["spgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("dpsbil", "stib87", "lfs87", "isced97_87", "field87", "emplst87", "trainb87", "traina87", "dbilzeit", "dpbbil02", "jobch87", "ausb87", "dpbbila", "expft87", "trainc87", "derwzeit", "degree87", "impgro87", "dpbbil03", "pid", "erljob87", "dfamstd", "labgro87", "bilztev87", "bilztch87", "jobend87", "dpsbila", "dpbbil01")
tmp_dataset <- read_dta(file.path(path_in, "dpgen.dta"))
data[["dpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("isced97_86", "impgro86", "erljob86", "cpbbil02", "lfs86", "traina86", "cpbbila", "cfamstd", "cpbbil01", "cpsbil", "field86", "bilztev86", "cerwzeit", "expft86", "pid", "cpsbila", "jobch86", "cbilzeit", "cpbbil03", "degree86", "trainc86", "jobend86", "stib86", "labgro86", "emplst86", "ausb86", "bilztch86", "trainb86")
tmp_dataset <- read_dta(file.path(path_in, "cpgen.dta"))
data[["cpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("field97", "traina97", "stib97", "npbbil03", "trainb97", "isced97_97", "ausb97", "bilztch97", "nerwzeit", "nbilzeit", "npsbila", "bilztev97", "degree97", "impgro97", "emplst97", "pid", "expft97", "npbbila", "npbbil01", "erljob97", "jobend97", "labgro97", "trainc97", "nfamstd", "npbbil02", "lfs97", "jobch97", "npsbil")
tmp_dataset <- read_dta(file.path(path_in, "npgen.dta"))
data[["npgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "lpequiv.dta"))
data[["lpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bkfamstd", "bkpsbila", "field20", "jobch20", "stib20", "bkpbbil02", "labgro20", "bkpbbil03", "ausb20", "isced97_20", "bkpbbil01", "bkerwzeit", "trainb20", "lfs20", "expft20", "trainc20", "erljob20", "pid", "bilztch20", "jobend20", "traina20", "bkpbbila", "degree20", "impgro20", "bkpsbil", "bilztev20", "bkbilzeit", "emplst20")
tmp_dataset <- read_dta(file.path(path_in, "bkpgen.dta"))
data[["bkpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid", "qgeburt")
tmp_dataset <- read_dta(file.path(path_in, "qpbrutto.dta"))
data[["qpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ipequiv.dta"))
data[["ipequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("tpbbil02", "jobch03", "labgro03", "bilztev03", "ausb03", "field03", "tfamstd", "tbilzeit", "terwzeit", "bilztch03", "stib03", "traina03", "expft03", "tpbbil01", "isced97_03", "jobend03", "degree03", "lfs03", "emplst03", "pid", "tpsbila", "trainb03", "impgro03", "trainc03", "tpbbila", "tpbbil03", "erljob03", "tpsbil")
tmp_dataset <- read_dta(file.path(path_in, "tpgen.dta"))
data[["tpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bhpsbila", "degree17", "bilztev17", "bhpbbila", "bhfamstd", "expft17", "bhbilzeit", "lfs17", "ausb17", "traina17", "bhpbbil01", "jobend17", "field17", "labgro17", "pid", "bherwzeit", "isced97_17", "erljob17", "bilztch17", "stib17", "jobch17", "trainc17", "bhpsbil", "bhpbbil03", "emplst17", "trainb17", "impgro17", "bhpbbil02")
tmp_dataset <- read_dta(file.path(path_in, "bhpgen.dta"))
data[["bhpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("trainb90", "erljob90", "ausb90", "emplst90", "field90", "gbilzeit", "gerwzeit", "trainc90", "bilztch90", "traina90", "gfamstd", "expft90", "degree90", "bilztev90", "gpsbila", "pid", "gpbbil01", "gpsbil", "gpbbila", "impgro90", "isced97_90", "labgro90", "gpbbil03", "gpbbil02", "jobend90", "jobch90", "lfs90", "stib90")
tmp_dataset <- read_dta(file.path(path_in, "gpgen.dta"))
data[["gpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("xpsbil", "xerwzeit", "xpbbil03", "degree07", "bilztch07", "bilztev07", "expft07", "xfamstd", "xpsbila", "erljob07", "stib07", "labgro07", "trainb07", "xpbbila", "xpbbil01", "ausb07", "pid", "trainc07", "lfs07", "jobend07", "xpbbil02", "traina07", "impgro07", "isced97_07", "emplst07", "jobch07", "field07", "xbilzeit")
tmp_dataset <- read_dta(file.path(path_in, "xpgen.dta"))
data[["xpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "kkind.dta"))
data[["kkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bageburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bapbrutto.dta"))
data[["bapbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bepsbila", "trainc14", "bebilzeit", "labgro14", "trainb14", "bepbbil03", "bepsbil", "bepbbila", "bilztev14", "befamstd", "jobch14", "ausb14", "field14", "isced97_14", "emplst14", "bepbbil02", "bepbbil01", "jobend14", "expft14", "traina14", "beerwzeit", "erljob14", "pid", "impgro14", "stib14", "bilztch14", "degree14", "lfs14")
tmp_dataset <- read_dta(file.path(path_in, "bepgen.dta"))
data[["bepgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bbpluecke.dta"))
data[["bbpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "ppbrutto.dta"))
data[["ppbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("emplst99", "impgro99", "erljob99", "ausb99", "ppsbila", "pfamstd", "labgro99", "traina99", "ppbbil03", "ppbbila", "jobend99", "trainb99", "lfs99", "bilztev99", "expft99", "pbilzeit", "bilztch99", "ppbbil02", "pid", "isced97_99", "trainc99", "ppbbil01", "jobch99", "stib99", "ppsbil", "perwzeit", "degree99", "field99")
tmp_dataset <- read_dta(file.path(path_in, "ppgen.dta"))
data[["ppgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jobend11", "bbfamstd", "bilztev11", "stib11", "isced97_11", "traina11", "trainb11", "field11", "trainc11", "bbbilzeit", "expft11", "erljob11", "degree11", "bbpbbil02", "bbpbbil03", "impgro11", "bilztch11", "emplst11", "pid", "ausb11", "bberwzeit", "bbpsbila", "bbpbbil01", "jobch11", "labgro11", "lfs11", "bbpbbila", "bbpsbil")
tmp_dataset <- read_dta(file.path(path_in, "bbpgen.dta"))
data[["bbpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jobend05", "lfs05", "vpsbila", "field05", "bilztch05", "trainb05", "emplst05", "vpbbil02", "isced97_05", "erljob05", "vbilzeit", "vpbbila", "labgro05", "vpsbil", "verwzeit", "vfamstd", "pid", "vpbbil01", "ausb05", "bilztev05", "jobch05", "traina05", "impgro05", "stib05", "degree05", "trainc05", "vpbbil03", "expft05")
tmp_dataset <- read_dta(file.path(path_in, "vpgen.dta"))
data[["vpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bfpbbil03", "traina15", "jobch15", "bferwzeit", "bfpsbil", "isced97_15", "bfbilzeit", "trainc15", "labgro15", "bffamstd", "lfs15", "bfpbbil01", "bfpsbila", "ausb15", "erljob15", "pid", "bilztch15", "emplst15", "bilztev15", "jobend15", "degree15", "stib15", "field15", "bfpbbil02", "trainb15", "impgro15", "bfpbbila", "expft15")
tmp_dataset <- read_dta(file.path(path_in, "bfpgen.dta"))
data[["bfpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("labgro96", "bilztev96", "mpbbil01", "trainb96", "lfs96", "mfamstd", "mpbbila", "bilztch96", "merwzeit", "trainc96", "mpsbila", "erljob96", "field96", "jobch96", "mpbbil02", "stib96", "jobend96", "emplst96", "impgro96", "mbilzeit", "degree96", "mpsbil", "pid", "ausb96", "isced97_96", "mpbbil03", "traina96", "expft96")
tmp_dataset <- read_dta(file.path(path_in, "mpgen.dta"))
data[["mpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jobend95", "traina95", "lpsbila", "stib95", "ausb95", "labgro95", "lfs95", "lpbbil02", "erljob95", "expft95", "lpbbil03", "emplst95", "lerwzeit", "trainc95", "lfamstd", "isced97_95", "degree95", "trainb95", "impgro95", "lpbbila", "pid", "field95", "bilztch95", "jobch95", "lpsbil", "bilztev95", "lpbbil01", "lbilzeit")
tmp_dataset <- read_dta(file.path(path_in, "lpgen.dta"))
data[["lpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "qkind.dta"))
data[["qkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("dgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "dpbrutto.dta"))
data[["dpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bcpbbil03", "traina12", "bcpbbil01", "jobch12", "bcfamstd", "emplst12", "stib12", "trainb12", "bcerwzeit", "bilztev12", "erljob12", "bcpsbila", "isced97_12", "degree12", "lfs12", "labgro12", "trainc12", "bilztch12", "bcpbbila", "pid", "bcpbbil02", "expft12", "bcbilzeit", "field12", "impgro12", "ausb12", "bcpsbil", "jobend12")
tmp_dataset <- read_dta(file.path(path_in, "bcpgen.dta"))
data[["bcpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("sp60_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "sp.dta"))
data[["sp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "qpluecke.dta"))
data[["qpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjpluecke.dta"))
data[["bjpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("upbbila", "stib04", "field04", "emplst04", "isced97_04", "ubilzeit", "traina04", "bilztch04", "degree04", "upbbil02", "upsbil", "erljob04", "upbbil03", "pid", "bilztev04", "upsbila", "uerwzeit", "trainc04", "expft04", "ufamstd", "lfs04", "labgro04", "jobend04", "impgro04", "jobch04", "trainb04", "upbbil01", "ausb04")
tmp_dataset <- read_dta(file.path(path_in, "upgen.dta"))
data[["upgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ofamstd", "jobend98", "oerwzeit", "lfs98", "isced97_98", "traina98", "opsbila", "ausb98", "opsbil", "trainb98", "opbbil02", "obilzeit", "field98", "pid", "stib98", "emplst98", "erljob98", "impgro98", "opbbil01", "expft98", "degree98", "trainc98", "bilztch98", "opbbil03", "opbbila", "labgro98", "jobch98", "bilztev98")
tmp_dataset <- read_dta(file.path(path_in, "opgen.dta"))
data[["opgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "npequiv.dta"))
data[["npequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bilztev16", "bgbilzeit", "bilztch16", "lfs16", "bgpbbil02", "bgerwzeit", "bgpbbil03", "ausb16", "jobch16", "erljob16", "field16", "trainb16", "impgro16", "isced97_16", "emplst16", "pid", "stib16", "bgpbbil01", "expft16", "trainc16", "jobend16", "bgpsbila", "degree16", "traina16", "bgpbbila", "bgpsbil", "labgro16", "bgfamstd")
tmp_dataset <- read_dta(file.path(path_in, "bgpgen.dta"))
data[["bgpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bcpluecke.dta"))
data[["bcpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("vgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "vpbrutto.dta"))
data[["vpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bilztch08", "degree08", "jobend08", "stib08", "ypsbila", "yfamstd", "expft08", "ypbbila", "yerwzeit", "ausb08", "trainc08", "isced97_08", "labgro08", "ybilzeit", "ypsbil", "field08", "emplst08", "jobch08", "ypbbil02", "pid", "trainb08", "ypbbil03", "impgro08", "ypbbil01", "lfs08", "traina08", "erljob08", "bilztev08")
tmp_dataset <- read_dta(file.path(path_in, "ypgen.dta"))
data[["ypgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("rgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "rpbrutto.dta"))
data[["rpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ngeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "npbrutto.dta"))
data[["npbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "zpequiv.dta"))
data[["zpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bdp81_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bdp.dta"))
data[["bdp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "xpluecke.dta"))
data[["xpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ipluecke.dta"))
data[["ipluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("lp04_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "lp.dta"))
data[["lp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bilztch94", "trainb94", "kpbbil03", "erljob94", "kfamstd", "jobch94", "kbilzeit", "trainc94", "kpsbila", "kpbbil02", "kpsbil", "stib94", "expft94", "kpbbil01", "ausb94", "lfs94", "pid", "field94", "traina94", "jobend94", "impgro94", "labgro94", "bilztev94", "kpbbila", "degree94", "emplst94", "isced97_94", "kerwzeit")
tmp_dataset <- read_dta(file.path(path_in, "kpgen.dta"))
data[["kpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jobch91", "impgro91", "hpbbil02", "field91", "herwzeit", "lfs91", "hpbbil01", "bilztch91", "hfamstd", "bilztev91", "labgro91", "isced97_91", "jobend91", "hpbbila", "emplst91", "degree91", "hpsbila", "trainb91", "pid", "hpbbil03", "expft91", "traina91", "erljob91", "hbilzeit", "trainc91", "hpsbil", "stib91", "ausb91")
tmp_dataset <- read_dta(file.path(path_in, "hpgen.dta"))
data[["hpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid", "ugeburt")
tmp_dataset <- read_dta(file.path(path_in, "upbrutto.dta"))
data[["upbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhschool.dta"))
data[["bhschool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("rp60_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "rp.dta"))
data[["rp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "tjugend.dta"))
data[["tjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("traina00", "trainc00", "qpsbila", "qpbbil03", "stib00", "trainb00", "expft00", "jobch00", "qpbbil02", "field00", "qbilzeit", "qfamstd", "qpsbil", "degree00", "emplst00", "qpbbila", "bilztev00", "bilztch00", "qpbbil01", "erljob00", "pid", "jobend00", "qerwzeit", "ausb00", "impgro00", "labgro00", "isced97_00", "lfs00")
tmp_dataset <- read_dta(file.path(path_in, "qpgen.dta"))
data[["qpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pp62_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "pp.dta"))
data[["pp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("fgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "fpbrutto.dta"))
data[["fpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "wkind.dta"))
data[["wkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bischool2.dta"))
data[["bischool2"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bjpbbila", "bjerwzeit", "bilztch19", "expft19", "jobend19", "bilztev19", "degree19", "stib19", "lfs19", "trainc19", "bjpbbil02", "bjpsbila", "isced97_19", "bjpbbil01", "pid", "bjfamstd", "traina19", "impgro19", "labgro19", "ausb19", "emplst19", "trainb19", "erljob19", "bjpbbil03", "field19", "bjbilzeit", "bjpsbil", "jobch19")
tmp_dataset <- read_dta(file.path(path_in, "bjpgen.dta"))
data[["bjpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("np56_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "np.dta"))
data[["np"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("degree10", "emplst10", "erljob10", "bafamstd", "jobend10", "labgro10", "lfs10", "field10", "bapbbil03", "traina10", "jobch10", "isced97_10", "expft10", "bapbbil01", "bilztev10", "babilzeit", "baerwzeit", "bapbbil02", "ausb10", "stib10", "pid", "trainb10", "impgro10", "bapsbila", "trainc10", "bilztch10", "bapbbila", "bapsbil")
tmp_dataset <- read_dta(file.path(path_in, "bapgen.dta"))
data[["bapgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "apausl.dta"))
data[["apausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("wpbbil03", "bilztch06", "erljob06", "wfamstd", "wpsbila", "wbilzeit", "field06", "traina06", "degree06", "bilztev06", "werwzeit", "jobend06", "isced97_06", "impgro06", "wpbbila", "wpsbil", "lfs06", "expft06", "emplst06", "jobch06", "stib06", "pid", "trainb06", "wpbbil01", "trainc06", "labgro06", "ausb06", "wpbbil02")
tmp_dataset <- read_dta(file.path(path_in, "wpgen.dta"))
data[["wpgen"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "qpequiv.dta"))
data[["qpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgpbrutto.dta"))
data[["bgpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ukind.dta"))
data[["ukind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bakind.dta"))
data[["bakind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bfpluecke.dta"))
data[["bfpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("xp75_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "xp.dta"))
data[["xp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ygeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "ypbrutto.dta"))
data[["ypbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid", "begeburt")
tmp_dataset <- read_dta(file.path(path_in, "bepbrutto.dta"))
data[["bepbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "okind.dta"))
data[["okind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("cgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "cpbrutto.dta"))
data[["cpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("tp78_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "tp.dta"))
data[["tp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bepequiv.dta"))
data[["bepequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjpbrutto.dta"))
data[["bjpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("zgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "zpbrutto.dta"))
data[["zpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "hkind.dta"))
data[["hkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "fp.dta"))
data[["fp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ggeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "gpbrutto.dta"))
data[["gpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "vkind.dta"))
data[["vkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("igeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "ipbrutto.dta"))
data[["ipbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ipausl.dta"))
data[["ipausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "apequiv.dta"))
data[["apequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bdgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bdpbrutto.dta"))
data[["bdpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("xgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "xpbrutto.dta"))
data[["xpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "upluecke.dta"))
data[["upluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("mp56_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "mp.dta"))
data[["mp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bbgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bbpbrutto.dta"))
data[["bbpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "wpluecke.dta"))
data[["wpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "cpluecke.dta"))
data[["cpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjjugend.dta"))
data[["bjjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bap65_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bap.dta"))
data[["bap"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ikind.dta"))
data[["ikind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ppluecke.dta"))
data[["ppluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "fpluecke.dta"))
data[["fpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjschool2.dta"))
data[["bjschool2"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ckind.dta"))
data[["ckind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bcgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bcpbrutto.dta"))
data[["bcpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkschool.dta"))
data[["bkschool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bfjugend.dta"))
data[["bfjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("vp73_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "vp.dta"))
data[["vp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bfkind.dta"))
data[["bfkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "sjugend.dta"))
data[["sjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bdjugend.dta"))
data[["bdjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bgp94_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bgp.dta"))
data[["bgp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("op47a_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "op.dta"))
data[["op"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhschool2.dta"))
data[["bhschool2"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhjugend.dta"))
data[["bhjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bpluecke.dta"))
data[["bpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "lkind.dta"))
data[["lkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bcp63_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bcp.dta"))
data[["bcp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgkind.dta"))
data[["bgkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjschool.dta"))
data[["bjschool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bikind.dta"))
data[["bikind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bpbrutto.dta"))
data[["bpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ip03_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "ip.dta"))
data[["ip"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("mgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "mpbrutto.dta"))
data[["mpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkkind.dta"))
data[["bkkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("yp72_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "yp.dta"))
data[["yp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ap.dta"))
data[["ap"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("hp03_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "hp.dta"))
data[["hp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "opluecke.dta"))
data[["opluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "dpluecke.dta"))
data[["dpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "rpequiv.dta"))
data[["rpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "tpluecke.dta"))
data[["tpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("qp58_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "qp.dta"))
data[["qp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bajugend.dta"))
data[["bajugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "mpequiv.dta"))
data[["mpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "pkind.dta"))
data[["pkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bbkind.dta"))
data[["bbkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "xpequiv.dta"))
data[["xpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bekind.dta"))
data[["bekind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "lpausl.dta"))
data[["lpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "epluecke.dta"))
data[["epluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("egeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "epbrutto.dta"))
data[["epbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("hgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "hpbrutto.dta"))
data[["hpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "beschool.dta"))
data[["beschool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bbpequiv.dta"))
data[["bbpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "jkind.dta"))
data[["jkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("kgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "kpbrutto.dta"))
data[["kpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "epequiv.dta"))
data[["epequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhkind.dta"))
data[["bhkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("sgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "spbrutto.dta"))
data[["spbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjkind.dta"))
data[["bjkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "hpluecke.dta"))
data[["hpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkjugend.dta"))
data[["bkjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bip.dta"))
data[["bip"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "qjugend.dta"))
data[["qjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bipbrutto.dta"))
data[["bipbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "spluecke.dta"))
data[["spluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "jpbrutto.dta"))
data[["jpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "rkind.dta"))
data[["rkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ageburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "apbrutto.dta"))
data[["apbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "dpausl.dta"))
data[["dpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bischool.dta"))
data[["bischool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "jpequiv.dta"))
data[["jpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "gpequiv.dta"))
data[["gpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bfpequiv.dta"))
data[["bfpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bfp110_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bfp.dta"))
data[["bfp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "cp.dta"))
data[["cp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhpequiv.dta"))
data[["bhpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("ogeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "opbrutto.dta"))
data[["opbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bbjugend.dta"))
data[["bbjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "epausl.dta"))
data[["epausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "tpequiv.dta"))
data[["tpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("wp64_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "wp.dta"))
data[["wp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "yjugend.dta"))
data[["yjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "fkind.dta"))
data[["fkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "npluecke.dta"))
data[["npluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bep61_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bep.dta"))
data[["bep"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("wgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "wpbrutto.dta"))
data[["wpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgschool.dta"))
data[["bgschool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "jpausl.dta"))
data[["jpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("zp74_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "zp.dta"))
data[["zp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "cpequiv.dta"))
data[["cpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "fpausl.dta"))
data[["fpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "vjugend.dta"))
data[["vjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("up61_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "up.dta"))
data[["up"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ep.dta"))
data[["ep"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhpluecke.dta"))
data[["bhpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bapequiv.dta"))
data[["bapequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkp.dta"))
data[["bkp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgpequiv.dta"))
data[["bgpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bcpequiv.dta"))
data[["bcpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "kpequiv.dta"))
data[["kpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgschool2.dta"))
data[["bgschool2"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "dpequiv.dta"))
data[["dpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "xjugend.dta"))
data[["xjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "dkind.dta"))
data[["dkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bipluecke.dta"))
data[["bipluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "vpluecke.dta"))
data[["vpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "nkind.dta"))
data[["nkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgpluecke.dta"))
data[["bgpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "wjugend.dta"))
data[["wjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjpequiv.dta"))
data[["bjpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bjp.dta"))
data[["bjp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bapluecke.dta"))
data[["bapluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ekind.dta"))
data[["ekind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "tkind.dta"))
data[["tkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bdpluecke.dta"))
data[["bdpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "zkind.dta"))
data[["zkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("lgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "lpbrutto.dta"))
data[["lpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("tgeburt", "pid")
tmp_dataset <- read_dta(file.path(path_in, "tpbrutto.dta"))
data[["tpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ykind.dta"))
data[["ykind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkschool2.dta"))
data[["bkschool2"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "cpausl.dta"))
data[["cpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "jpluecke.dta"))
data[["jpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "upequiv.dta"))
data[["upequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("jp04_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "jp.dta"))
data[["jp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "kpausl.dta"))
data[["kpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ypequiv.dta"))
data[["ypequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "mkind.dta"))
data[["mkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhpbrutto.dta"))
data[["bhpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "gpausl.dta"))
data[["gpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bpausl.dta"))
data[["bpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkpbrutto.dta"))
data[["bkpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "hpequiv.dta"))
data[["hpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "rpluecke.dta"))
data[["rpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "kpluecke.dta"))
data[["kpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "gp.dta"))
data[["gp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "zpluecke.dta"))
data[["zpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "spequiv.dta"))
data[["spequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "dp.dta"))
data[["dp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bp.dta"))
data[["bp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bejugend.dta"))
data[["bejugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "gkind.dta"))
data[["gkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bdkind.dta"))
data[["bdkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "lpluecke.dta"))
data[["lpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "hpausl.dta"))
data[["hpausl"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkpequiv.dta"))
data[["bkpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "mpluecke.dta"))
data[["mpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bfpbrutto.dta"))
data[["bfpbrutto"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "vpequiv.dta"))
data[["vpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "xkind.dta"))
data[["xkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("bbp75_isco88", "pid")
tmp_dataset <- read_dta(file.path(path_in, "bbp.dta"))
data[["bbp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bpequiv.dta"))
data[["bpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "wpequiv.dta"))
data[["wpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "skind.dta"))
data[["skind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bckind.dta"))
data[["bckind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "zjugend.dta"))
data[["zjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ppequiv.dta"))
data[["ppequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bdpequiv.dta"))
data[["bdpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bepluecke.dta"))
data[["bepluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ypluecke.dta"))
data[["ypluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "rjugend.dta"))
data[["rjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "fpequiv.dta"))
data[["fpequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "opequiv.dta"))
data[["opequiv"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "akind.dta"))
data[["akind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "ujugend.dta"))
data[["ujugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bijugend.dta"))
data[["bijugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bgjugend.dta"))
data[["bgjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bkind.dta"))
data[["bkind"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid", "kp10_isco88")
tmp_dataset <- read_dta(file.path(path_in, "kp.dta"))
data[["kp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bhp.dta"))
data[["bhp"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "gpluecke.dta"))
data[["gpluecke"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bfschool.dta"))
data[["bfschool"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bcjugend.dta"))
data[["bcjugend"]] <- tmp_dataset[ , tmp_variables]


tmp_variables <- c("pid")
tmp_dataset <- read_dta(file.path(path_in, "bipgen.dta"))
data[["bipgen"]] <- tmp_dataset[ , tmp_variables]

### MERGE ###

main <- merge(main, data[["bpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bipequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["epgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ipgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["apgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["spgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["cpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["npgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ipequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bapbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bepgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ppbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ppgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["mpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bcpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["sp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["upgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["opgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["npequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bcpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ypgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["npbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ipluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["upbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhschool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["pp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bischool2"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["np"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bapgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["apausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wpgen"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ukind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bakind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ypbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bepbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["okind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["cpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bepequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ipbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ipausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["apequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["upluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["mp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["cpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bap"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ikind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ppluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjschool2"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ckind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bcpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkschool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["sjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["op"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhschool2"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bcp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjschool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bikind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ip"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["mpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["yp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ap"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["opluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bajugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["mpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["pkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bekind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["epluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["epbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["beschool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["epequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["spbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bip"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["qjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bipbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["spluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["apbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bischool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["cp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["opbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["epausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["yjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["npluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bep"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgschool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["cpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["up"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ep"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bapequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bcpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgschool2"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bipluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["nkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bjp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bapluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ekind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["tpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ykind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkschool2"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["cpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["upequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["jp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ypequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["mkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["spequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["dp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bejugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["lpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["hpausl"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["mpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfpbrutto"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["vpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["xkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bbp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["wpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["skind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bckind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["zjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ppequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bdpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bepluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ypluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["rjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["fpequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["opequiv"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["akind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["ujugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bijugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bgjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bkind"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["kp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bhp"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["gpluecke"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bfschool"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bcjugend"]], by = "pid", all.x=T, all.y=F)
main <- merge(main, data[["bipgen"]], by = "pid", all.x=T, all.y=F)

### DONE ###

attr(main, "label") <- "paneldata.org"
str(main)
save(main, file=file.path(path_out, "main.RData"))


load("main.RData")
ls() 
write.csv(main, file="soep.csv")
