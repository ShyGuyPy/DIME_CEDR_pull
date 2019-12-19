#------number for picoplankton in CEDR api--------------------
pico_num = "18"
#-------------------------------------------------------------

#------number for phytoplankton in CEDR api-------------------
phyto_num = "17"
#-------------------------------------------------------------

#------these are the parameter codes for the CEDR api---------
CHLA=21
#DOC=34 
PHEO=74 
#SALINITY=83
#-------------------------------------------------------------

#------water quality program ids-------------------------------
NTWQM = 2 #Nontidal Water Quality Monitoring Program
SWM = 4 #Shallow Water Monitoring Programs
TWQM = 6 #Tidal Water Quality Monitoring Program
#--------------------------------------------------------------

#------water quality project ids-------------------------------
NTID = 12 #"Nontidal Out Of Network Water Quality Monitoring Project
NTN = 13 #Nontidal Network Water Quality Monitoring Project
NTPART = 14 #Nontidal Non-Traditional Partners
NTSPECIAL = 15 #Nontidal Special Water Quality Monitoring Project
CMON = 2 #Tidal Continuous Water Quality Monitoring Project
DFLO = 3 #Tidal Dataflow Water Quality Monitoring Project
NTCMON = 11 #Nontidal Continuous Water Quality Monitoring Project
MAIN = 7 #Tidal Mainstem Water Quality Monitoring Project
TRIB = 23 #Tidal Tributary Water Quality Monitoring Project
TSPECIAL = 24 #Special Tidal Water Quality Monitoring Project
PART = 16 #Tidal Non-Traditional Partners
#--------------------------------------------------------------

#----------------water quality parameters-----------------------
# CLW =23
# DIN = 30
# DO = 31
# DOC = 34
# DON = 35
# DOP = 36
# NH4F = 60
# NO23F = 63
# NO2F = 65
# PC =  71
# PH = 73
# PN =  77
# PO4F = 78
# PP =82
# SALINITY = 83
# SIGMA_T = 88
# SO4W = 93
# SPCOND = 94
# TALK = 100
# TDN = 104
# TDP = 105
# TN = 109
# TON = 111
# TP = 114
# TSS = 116
# TURB_NTU = 119
# WTEMP = 123
# #----------------------------------------------------------------
# 
# #---------------------------------
# SECCHI = 85

ACIDITY	=	1
AG	=	2
AL	=	3
ANC	=	4
AS	=	5
ATEMP	=	129
BATT	=	6
BIOSI	=	7
BOAT_SPEED	=	8
BOD20F	=	9
BOD20W	=	10
BOD5F	=	11
BOD5W	=	12
CA	=	13
CAF	=	14
CD	=	15
CDOM_440	=	16
CDOM_SLOPE	=	17
CHL_A	=	18
CHL_B	=	19
CHL_C	=	20
CHLA	=	21
CLAY	=	145
CLF	=	22
CLW	=	23
COD	=	24
COLOR	=	25
CR	=	26
CU	=	27
CUF	=	28
DIC	=	29
DIN	=	30
DO	=	31
DO_SAT_M	=	32
DO_SAT_P	=	33
DOC	=	34
DON	=	35
DOP	=	36
ECOLI_M	=	165
EPAR_S	=	37
EPARD_Z	=	38
EPARU_Z	=	39
EXTRACT_VOLUME	=	131
FCOLI_C	=	40
FCOLI_M	=	41
FDS	=	42
FE_M	=	43
FE_U	=	44
FLOW_AVG	=	45
FLOW_INS	=	46
FLUOR	=	126
FLUORESCENCE	=	47
FS	=	48
FSS	=	49
GAGE_HEIGHT	=	50
HARDNESS	=	51
HG	=	52
IBOD5F	=	53
IBOD5W	=	54
INTSAL	=	146
K	=	127
KD	=	55
KF	=	56
KURTOSIS	=	147
LIGHT_PATH	=	132
MEANDIAM	=	148
MEASURED_DEPTH	=	128
MEDDIAM	=	149
MGF	=	57
MN	=	58
MOIST	=	150
NAF	=	59
NH4F	=	60
NH4W	=	61
NI	=	62
NO23F	=	63
NO23W	=	64
NO2F	=	65
NO2W	=	66
NO3F	=	67
NO3W	=	68
OD480B	=	133
OD510B	=	134
OD630B	=	135
OD645B	=	136
OD647B	=	137
OD663A	=	138
OD663B	=	139
OD664B	=	140
OD665A	=	141
OD750A	=	142
OD750B	=	143
ORP	=	69
PB	=	70
PC	=	71
PERIPHY	=	72
PH	=	73
PHEO	=	74
PHI25	=	151
PHI50	=	152
PHI75	=	153
PIC	=	75
PIP	=	76
PN	=	77
PO4F	=	78
PO4W	=	79
POC	=	80
PON	=	81
PP	=	82
PRESSURE	=	130
QUARTDEV	=	154
SALINITY	=	83
SAMPLE_VOLUME	=	144
SAND	=	155
SE	=	84
SECCHI	=	85
SI	=	86
SIF	=	87
SIGMA_T	=	88
SILT	=	156
SILTCLAY	=	157
SIW	=	89
SKEWNESS	=	158
SN	=	90
SO3	=	91
SO4F	=	92
SO4W	=	93
SORT	=	159
SPCOND	=	94
# SSC_%FINE	=	95
# SSC_%SAND	=	96
SSC_FINE	=	97
SSC_SAND	=	98
SSC_TOTAL	=	99
TALK	=	100
TC	=	160
TCHL_PRE_CAL	=	101
TCOLI_C	=	102
TCOLI_M	=	103
TDN	=	104
TDP	=	105
TDS	=	106
TIC	=	161
TKNF	=	107
TKNW	=	108
TN	=	109
TOC	=	110
TON	=	111
TOP	=	112
TOTAL_DEPTH	=	113
TP	=	114
TS	=	115
TSS	=	116
TURB_FNU	=	163
TURB_FTU	=	117
TURB_JTU	=	118
TURB_NTRU	=	164
TURB_NTU	=	119
VELOCITY	=	120
VOLORG	=	162
VSS	=	121
WIDTH	=	122
WTEMP	=	123
ZN	=	124
ZNF	=	125

#-------------------------------------------------------------------

#---------------------problem codes---------------------------------
A = "LABORATORY ACCIDENT" 
B = "CHEMICAL MATRIX  INTERFERENCE" 
BB  = "TORN FILTER PAD" 
C = "INSTRUMENT FAILURE" 
D = "INSUFFICIENT SAMPLE" 
DD = "SAMPLE SIZE NOT REPORTED (ASSUMED)" 
E = "SAMPLE RECEIVED AFTER HOLDING TIME" 
FF =  "POOR REPLICATION BETWEEN PADS, MEAN REPORTED" 
GG =  "SAMPLE ANALYZED AFTER HOLDING TIME" 
I = "SUSPECT VALUE HAS BEEN VERIFIED CORRECT" 
J =  "INCORRECT SAMPLE FRACTION FOR ANALYSIS" 
JJ = "VOLUME FILTERED NOT RECORDED (ASSUMED)" 
L = "LICOR CALIBRATION OFF BY >= 10% PER YEAR.  USE WITH CALC KD WHERE PROB OF LU,   LS, LB EXIST IN RAW" 
LB = "LICOR CALIBRATION OFF BY >= 10% PER YEAR FOR BOTH AIR AND UPWARD  FACING SENSORS" 
LS =  "LICOR CALIBRATION OFF BY >= 10% PER YEAR FOR AIR SENSOR" 
LU = "LICOR CALIBRATION OFF BY >= 10% PER YEAR FOR UPWARD FACING SENSOR" 
MM = "OVER 20% OF SAMPLE ADHERED TO POUCH AND OUTSIDE OF PAD" 
NN = "PARTICULATES FOUND IN FILTERED SAMPLE"   
P = "PROVISIONAL DATA" 
QQ = "PART EXCEEDS WHOLE VALUE YET DIFFERENCE IS WITHIN ANALYTICAL PRECISION" 
R = "SAMPLE CONTAMINATED" 
RR = "NO SAMPLE RECEIVED"                                                                                   
SS = "SAMPLE REJECTED, HIGH SUSPENDED SEDIMENT CONCENTRATION" 
U = " MATRIX PROBLEM RESULTING FROM THE INTERRELATIONSHIP BETWEEN VARIABLES SUCH AS PH AND AMMONIA"         
V = "SAMPLE RESULTS REJECTED DUE TO QC CRITERIA" 
VV = "STATION WAS NOT SAMPLED DUE TO BAD FIELD CONDITIONS" 
WW = "HIGH OPTICAL DENSITY (750 NM); ACTUAL VALUE RECORDED" 
X = "SAMPLE NOT PRESERVED PROPERLY"
#----------------------------------------------------------------------

#-----------------------qualifier codes--------------------------------
Less_Than = "LESS THAN THE LOWER METHOD DETECTION LIMIT (MDL)" 
Greater_Than = "GREATER THAN THE UPPER METHOD DETECTION LIMIT (MDL)"
E_q = "ESTIMATED VALUE"
A_q ="Actual Value"
G_q	= "Reported Value Is Between MDL and the Practical Quantitation Level (Or Reporting Limit)"
U_q	= "Unknown whether value is actual or estimated"
J_q =	"Estimated value"
N_q	= "Not detected"
#----------------------------------------------------------------------



#----------------------------------huc8--------------------------------
LOWER_SUSQUEHANNA_02050306  = 20L
SEVERN_02060004 = 24L
LOWER_POTOMAC_02070011 = 37L
LOWER_CHESAPEAKE_BAY_02080101 = 38L
GREAT_WICOMICO_PIANKATANK_02080102 = 39L
LOWER_RAPPAHANNOCK_02080104 = 41L
YORK_02080107 = 44L
PAMUNKEY_02080106 = 43L
MATTAPONI_02080105 = 42L
#-----------------------------------------------------------------------

#---------------------------------huc12---------------------------------
CHESAPEAKE_BAY_LOWER_020801010000 = 1316L
