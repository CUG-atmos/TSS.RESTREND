

rf.path<- system.file("extdata", "rabbitRF.csv", package = "TSS.RESTREND", mustWork = TRUE)
in.RF <- read.csv(rf.path)

#temp <- read.csv('D:\\temp.csv',head = F)
#CTSR.TM <- ts(temp, end=c(2013,12), frequency = 12)
#Find the path of the rabbitVI.csv dataset and read it in
vi.path <- system.file("extdata", "rabbitVI.csv", package = "TSS.RESTREND", mustWork = TRUE)
in.VI <- read.csv(vi.path)
CTSR.VI <- ts(in.VI, start=c(1982, 1), end=c(2013,12), frequency = 12)

set.seed(1)
n = length(CTSR.VI) + 12*30
CTSR.RF <- ts(rnorm(n), end=c(2013,12), frequency = 12)
CTSR.TM <- ts(rnorm(n), end=c(2013,12), frequency = 12)

max.acp <- 12
max.osp <- 4
#ACP.table <- climate.accumulator(CTSR.VI, CTSR.RF, max.acp, max.osp)
#ACT.table <- climate.accumulator(CTSR.VI, CTSR.TM, max.acp, max.osp, temperature = TRUE)
TSSRattribution (CTSR.VI, CTSR.RF, CTSR.TM, max.acp, max.osp)
