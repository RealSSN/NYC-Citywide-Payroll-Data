---
title: "Citywide_Payroll_Data__Fiscal_Year"
author: "Sim Natt"
date: "2022-10-22"
---

# Loading the Data:
library(readr)
library(dplyr)
library(ggplot2)
library(gcookbook)
library(stargazer)

#Loading data from CSV file, "Citywide_Payroll_Data__Fiscal_Year.csv"
Payroll <- read_csv("Citywide_Payroll_Data__Fiscal_Year_.csv")

# Cleaning data - Removing NA/missing values and Deleting unused columns
Payroll <- Payroll[,-2]
Payroll <- Payroll[,-3:-6]
Payroll = na.omit(Payroll)

#Part of cleanup will be to standardize the agency names (e.g. multiple community boards for a single borrough in agency name)

Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #1"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #2"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #3"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #4"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #5"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #6"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #7"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #8"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #9"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #10"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #11"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX COMMUNITY BOARD #12"] <- "COMMUNITY BOARD"

Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #1"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #2"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #3"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #4"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #5"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #6"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #7"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #8"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #9"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #10"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #11"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #12"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #13"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #14"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #15"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #16"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #17"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BROOKLYN COMMUNITY BOARD #18"] <- "COMMUNITY BOARD"

Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #1"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #2"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #3"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #4"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #5"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #6"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #7"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #8"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #9"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #10"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #11"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MANHATTAN COMMUNITY BOARD #12"] <- "COMMUNITY BOARD"

Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #1"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #2"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #3"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #4"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #5"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #6"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #7"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #8"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #9"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #10"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #11"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #12"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #13"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="QUEENS COMMUNITY BOARD #14"] <- "COMMUNITY BOARD"

Payroll$`Agency Name`[Payroll$`Agency Name`=="STATEN ISLAND COMMUNITY BD #1"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="STATEN ISLAND COMMUNITY BD #2"] <- "COMMUNITY BOARD"
Payroll$`Agency Name`[Payroll$`Agency Name`=="STATEN ISLAND COMMUNITY BD #3"] <- "COMMUNITY BOARD"

Payroll$`Agency Name`[Payroll$`Agency Name`=="Bronx DA"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="Manhattan DA"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="Queens DA"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="Richmond DA"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BRONX DISTRICT ATTORNEY"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICT ATTORNEY-MANHATTAN"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICT ATTORNEY-SPECIAL NARC"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICT ATTORNEY KINGS COUNTY"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICT ATTORNEY QNS COUNTY"] <- "DISTRICT ATTORNEY(DA)"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICT ATTORNEY RICHMOND COU"] <- "DISTRICT ATTORNEY(DA)"

Payroll$`Agency Name`[Payroll$`Agency Name`=="BOROUGH PRESIDENT-BRONX"] <- "BOROUGH PRESIDENT"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BOROUGH PRESIDENT-BROOKLYN"] <- "BOROUGH PRESIDENT"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BOROUGH PRESIDENT-QUEENS"] <- "BOROUGH PRESIDENT"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BOROUGH PRESIDENT-STATEN IS"] <- "BOROUGH PRESIDENT"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PRESIDENT BOROUGH OF MANHATTAN"] <- "BOROUGH PRESIDENT"

Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE (BRONX)"] <- "COMMUNITY COLLEGE"
Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE (HOSTOS)"] <- "COMMUNITY COLLEGE"
Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE (KINGSBORO)"] <- "COMMUNITY COLLEGE"
Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE (LAGUARDIA)"] <- "COMMUNITY COLLEGE"
Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE (MANHATTAN)"] <- "COMMUNITY COLLEGE"
Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE (QUEENSBORO)"] <- "COMMUNITY COLLEGE"
Payroll$`Agency Name`[Payroll$`Agency Name`=="GUTTMAN COMMUNITY COLLEGE"] <- "COMMUNITY COLLEGE"

Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF ED HRLY SUPPORT STAFF"] <- "DEPT OF EDUCATION"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF ED PARA PROFESSIONALS"] <- "DEPT OF EDUCATION"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF ED PEDAGOGICAL"] <- "DEPT OF EDUCATION"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF ED PER DIEM TEACHERS"] <- "DEPT OF EDUCATION"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF ED PER SESSION TEACHER"] <- "DEPT OF EDUCATION"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF EDUCATION ADMIN"] <- "DEPT OF EDUCATION"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DOE CUSTODIAL PAYROL"] <- "DEPT OF EDUCATION"

Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADMINISTRATOR-BRONX"] <- "PUBLIC ADMINISTRATOR"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADMINISTRATOR-KINGS"] <- "PUBLIC ADMINISTRATOR"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADMINISTRATOR-NEW YORK"] <- "PUBLIC ADMINISTRATOR"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADMINISTRATOR-QUEENS"] <- "PUBLIC ADMINISTRATOR"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADMINISTRATOR-RICHMOND"] <- "PUBLIC ADMINISTRATOR"

Payroll$`Agency Name`[Payroll$`Agency Name`=="BOARD OF ELECTION POLL WORKERS"] <- "BOARD OF ELECTION"

Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="Bronx"] <- "BRONX"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="Manhattan"] <- "MANHATTAN"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="Queens"] <- "QUEENS"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="Richmond"] <- "STATEN ISLAND"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="RICHMOND"] <- "STATEN ISLAND"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="Kings"] <- "BROOKLYN"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="DELAWARE"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="DUTCHESS"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="GREENE"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="ORANGE"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="PUTNAM"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="SCHOHARIE"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="SULLIVAN"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="ULSTER"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="WASHINGTON DC"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="WESTCHESTER"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="RICHMOND"] <- "STATEN ISLAND"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="NASSAU"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="ALBANY"] <- "OTHER"
Payroll$`Work Location Borough`[Payroll$`Work Location Borough`=="albany"] <- "OTHER"

Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT FOR THE AGING"]=	"Benefit and Support"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF YOUTH"]=	"Benefit and Support"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT. OF HOMELESS SERVICES"]=	"Benefit and Support"
Payroll$`Agency Name`[Payroll$`Agency Name`=="EQUAL EMPLOY PRACTICES COMM"]=	"Benefit and Support"
Payroll$`Agency Name`[Payroll$`Agency Name`=="HRA/DEPT OF SOCIAL SERVICES"]=	"Benefit and Support"	
Payroll$`Agency Name`[Payroll$`Agency Name`=="NYC DEPT OF VETERANS' SERVICES"]=	"Benefit and Support"	
Payroll$`Agency Name`[Payroll$`Agency Name`=="NYC EMPLOYEES RETIREMENT SYS"]=	"Benefit and Support"	
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF MANAGEMENT"]=	"Benefit and Support"
Payroll$`Agency Name`[Payroll$`Agency Name`=="ADMIN FOR CHILDREN'S SVCS"]=	"Benefit and Support"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF YOUTH & COMM DEV SRVS"]=	"Benefit and Support"

Payroll$`Agency Name`[Payroll$`Agency Name`=="ADMIN TRIALS AND HEARINGS"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BOARD OF ELECTION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="BUSINESS INTEGRITY COMMISSION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CITY CLERK"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CITY COUNCIL"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CIVIL SERVICE COMMISSION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CIVILIAN COMPLAINT REVIEW BD"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CONSUMER AFFAIRS"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CONSUMER AND WORKER PROTECTION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF INVESTIGATION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF RECORDS"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICT ATTORNEY(DA)"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DISTRICTING COMMISSION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="HUMAN RIGHTS COMMISSION"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="LAW DEPARTMENT"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF LABOR RELATIONS"]=	"Courst and Law"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF RECORDS & INFO SERVICE"]=	"Courst and Law"

Payroll$`Agency Name`[Payroll$`Agency Name`=="CULTURAL AFFAIRS"]=	"Culture and Recreation"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF PARKS"]=	"Culture and Recreation"

Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY COLLEGE"]=	"Education"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CUNY CENTRAL OFFICE"]=	"Education"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF EDUCATION"]=	"Education"
Payroll$`Agency Name`[Payroll$`Agency Name`=="HUNTER COLLEGE HIGH SCHOOL"]=	"Education"
Payroll$`Agency Name`[Payroll$`Agency Name`=="TEACHERS RETIREMENT SYSTEM"]=	"Education"

Payroll$`Agency Name`[Payroll$`Agency Name`=="MUNICIPAL WATER FIN AUTHORITY"]=	"Environment"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF SANITATION"]=	"Environment"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF ENVIRONMENT PROTECTION"]=	"Environment"

Payroll$`Agency Name`[Payroll$`Agency Name`=="CAMPAIGN FINANCE BOARD"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="CONFLICTS OF INTEREST BOARD"]=	"Finance"	
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF BUSINESS SERV."]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF FINANCE"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="FINANCIAL INFO SVCS AGENCY"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="INDEPENDENT BUDGET OFFICE"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFF OF PAYROLL ADMINISTRATION"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF COLLECTIVE BARGAININ"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF THE ACTUARY"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF THE COMPTROLLER"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="TAX COMMISSION"]=	"Finance"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF MANAGEMENT & BUDGET"]=	"Finance"

Payroll$`Agency Name`[Payroll$`Agency Name`=="BOROUGH PRESIDENT"]=	"Government and Elections"
Payroll$`Agency Name`[Payroll$`Agency Name`=="COMMUNITY BOARD"]=	"Government and Elections"	
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF CITYWIDE ADMIN SVCS"]=	"Government and Elections"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF THE MAYOR"]=	"Government and Elections"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADMINISTRATOR"]=	"Government and Elections"

Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF HEALTH/MENTAL HYGIENE"]=	"Health"
                      
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF BUILDINGS"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF CITY PLANNING"]=	"Housing and Building"	
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT. OF DESIGN"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="HOUSING PRESERVATION"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="LANDMARKS PRESERVATION COMM"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="MAYORS OFFICE OF CONTRACT SVCS"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="NYC HOUSING AUTHORITY"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="HOUSING PRESERVATION & DVLPMNT"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF PARKS & RECREATION"]=	"Housing and Building"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT. OF DESIGN & CONSTRUCTION"]=	"Housing and Building"

Payroll$`Agency Name`[Payroll$`Agency Name`=="BOARD OF CORRECTION"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF CORRECTION"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF JUVENILE JUSTICE"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF PROBATION"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="FIRE DEPARTMENT"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="NYC FIRE PENSION FUND"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="NYC POLICE PENSION FUND"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="OFFICE OF EMERGENCY MANAGEMENT"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="POLICE DEPARTMENT"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC ADVOCATE"]=	"Public Safety"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PUBLIC SERVICE CORPS"]=	"Public Safety"
                      
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPARTMENT OF TRANSPORTATION"]=	"Transportation"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF INFO TECH"]=	"Transportation"
Payroll$`Agency Name`[Payroll$`Agency Name`=="PERSONNEL MONITORS"]=	"Transportation"
Payroll$`Agency Name`[Payroll$`Agency Name`=="TAXI"]=	"Transportation"
Payroll$`Agency Name`[Payroll$`Agency Name`=="TAXI & LIMOUSINE COMMISSION"]=	"Transportation"
Payroll$`Agency Name`[Payroll$`Agency Name`=="DEPT OF INFO TECH & TELECOMM"]=	"Transportation"

# checking unique borough and agency names 
unique(Payroll$`Work Location Borough`)
unique(Payroll$`Agency Name`)

# Create a variable  'Total Compensation' by taking: 'Regular Gross Paid' + 'Total OT Paid' + 'Total Other Pay'
Payroll$'Total Compensation' = Payroll$`Regular Gross Paid` + Payroll$`Total OT Paid` + Payroll$`Total Other Pay`

# Renaming Variables - error in R was preventing us from proceeding with default variable names:
Payroll =
  Payroll %>%
  rename(AgencyName = `Agency Name`)

Payroll =
  Payroll %>%
  rename(Borough = `Work Location Borough`)

Payroll =
  Payroll %>%
  rename(Title = `Title Description`)

Payroll =
  Payroll %>%
  rename(Status = `Leave Status as of June 30`)

Payroll =
  Payroll %>%
  rename(PayBasis = `Pay Basis`)

Payroll =
  Payroll %>%
  rename(TotalComp = `Total Compensation`)

Payroll =
  Payroll %>%
  rename(Fisc_Year = `Fiscal Year`)

Payroll =
  Payroll %>%
  rename(Base_Salary = `Base Salary`)

Payroll =
  Payroll %>%
  rename(Reg_Hours = `Regular Hours`)

Payroll =
  Payroll %>%
  rename(Reg_Gross_Paid = `Regular Gross Paid`)

Payroll =
  Payroll %>%
  rename(OT_Hours = `OT Hours`)

Payroll =
  Payroll %>%
  rename(Total_Other_Pay = `Total Other Pay`)

# Converting char into factor for our two predictor variables:
Payroll$`Borough`  =as.factor(Payroll$`Borough`)
Payroll$`AgencyName`  =as.factor(Payroll$`AgencyName`)
Payroll$`Title`  =as.factor(Payroll$`Title`)
Payroll$`Status`  =as.factor(Payroll$`Status`)
Payroll$`PayBasis`  =as.factor(Payroll$`PayBasis`)

#Albany is the baseline borough group, they are grouped into the "others" category
#Admin Children Svcs is the baseline group for agency
#Checking the dummy variables:
contrasts(Payroll$`Borough`)
contrasts(Payroll$`AgencyName`)
contrasts(Payroll$Status)

#Filtering a subset of Payroll - positive total compensation data only (DV - we created)
Payroll = subset(Payroll,Payroll$`TotalComp`>0)

#----

#Stargazer output for Summary Statistics: Payroll
stargazer(as.data.frame(Payroll), type = "text", digits = 0, flip = FALSE, title = "Summary Statistics: Payroll")

# Line Plot of Boroughs by Fiscal Year and Total Compensation
attach(Payroll)
options(scipen=999) 
lineplot= ggplot(Payroll, aes(x = Fisc_Year,y = TotalComp,color = Borough, group = Borough)) + stat_summary(fun = "mean", geom = "line") + xlab("Fiscal Year") + ylab("Total Compenstation USD($)")+ ggtitle("Total Compensation by Fiscal Year grouped by Borough")
lineplot

#Histogram of Total Compensation
hist(`TotalComp`,col =2, breaks =10, xlim = c(0,250000), ylab = "Number of Employees", xlab = "USD ($)", main = "Histogram: Total Compensation")

#Box Plot of Total Compensation by Borough 
plot(`Borough`,`TotalComp`,col="green",xlab="Borough",ylab="USD($)", main="Boxplot: Borough & Total Compensation")

#----

#Model 1: Linear Regression
Payroll.fit = lm(`TotalComp` ~ `AgencyName`+`Borough`, data=Payroll)
stargazer(Payroll.fit, type = "text", digits = 2, flip = FALSE, title = "Regression Model: Payroll")

#if you want to run residual plots, run the following two lanes, but it will takes more than a few minutes.
#par(mfrow = c (1,2))
#plot(payroll.fit)

#---

#Decision Tree
library(tree)


#Decision Tree 
tree.payroll1=tree(TotalComp~Borough+AgencyName,data=Payroll)
summary(tree.payroll1)
plot(tree.payroll1)
text(tree.payroll1)




