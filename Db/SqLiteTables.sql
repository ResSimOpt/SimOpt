-- CF definition

CREATE TABLE "CF" (
	"Id"	INTEGER,
	"Time"	NUMERIC,
	"Stage"	TEXT,
	"Machine"	TEXT,
	"Sl"	numeric(14, 2),
	"Pl"	numeric(14, 2),
	"Experiment"	TEXT,
	"RplCnt"	INTEGER,
	"Orders"	TEXT,
	"SLValues"	TEXT,
	"OptimizationParameter"	INTEGER,
	"CreatedAt"	DATETIME DEFAULT (CURRENT_TIMESTAMP),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Distributions definition

CREATE TABLE "Distributions" (
	"Id"	INTEGER,
	"Name"	TEXT NOT NULL UNIQUE,
	"Description"	INTEGER NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Experiment definition

CREATE TABLE "Experiment" (
	"Id"	INTEGER,
	"Experiment"	TEXT UNIQUE,
	"Description"	INTEGER,
	"Status"	INTEGER,
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- InterarrivalTime definition

CREATE TABLE InterarrivalTime (
	Id INTEGER PRIMARY KEY AUTOINCREMENT,
	Item INTEGER,
	Status INTEGER DEFAULT (0)
, Experiment nvarchar(255), ProbabilityOfItem NUMERIC, MeanOrderAmount NUMERIC, VarCoeOrderAmount NUMERIC, LeadTimeFixPart NUMERIC, MeanLeadTimeVariablePart NUMERIC, varCoeLeadTimeVariablePart NUMERIC, DemandScenario NVARCHAR(255));


-- OptimizationParameter definition

CREATE TABLE "OptimizationParameter" (
	"X000"	INTEGER,
	"X001"	INTEGER,
	"X002"	INTEGER,
	"X003"	INTEGER,
	"X004"	INTEGER,
	"X005"	INTEGER,
	"X006"	INTEGER,
	"X007"	INTEGER,
	"X008"	INTEGER,
	"X009"	INTEGER,
	"X010"	INTEGER,
	"X011"	INTEGER,
	"X012"	INTEGER,
	"X013"	INTEGER,
	"X014"	INTEGER,
	"X015"	INTEGER,
	"X016"	INTEGER,
	"X017"	INTEGER,
	"X018"	NUMERIC,
	"X019"	NUMERIC,
	"X020"	NUMERIC,
	"Description"	TEXT,
	"Experiment"	TEXT,
	"Status"	INTEGER,
	"MaxIterations"	INTEGER,
	"FixedNumberReplications"	INTEGER,
	"SBM"	INTEGER,
	"SBMInitPhase"	INTEGER,
	"SBMLowerBoundReplications"	INTEGER,
	"SBMPercentilLB"	INTEGER,
	"SBMPercentilUB"	INTEGER,
	"S1"	TEXT,
	"ID"	INTEGER,
	"CreatedAt"	TEXT,
	"UpdatedAt"	TEXT,
	"ForecastScenario"	INTEGER,
	"SimulationPC"	TEXT,
	"SimulationParameter"	TEXT,
	"SP000"	TEXT,
	"SP001"	TEXT,
	"SP002"	TEXT,
	"SP003"	TEXT,
	"SP004"	TEXT,
	"SP005"	TEXT,
	"SP006"	TEXT,
	"SP007"	TEXT,
	"SP008"	TEXT,
	"SP009"	TEXT,
	"SP010"	TEXT, Note nvarchar(255), creation_Time timestamp, InitializationPhase INTEGER, DefaultCreditRange NUMERIC, SimAnnealing INTEGER, MaxPercentil NUMERIC, PercentilStart NUMERIC, outlierCorrectionType INTEGER, historyValues INTEGER, alpha NUMERIC, cbrrlb NUMERIC, minCBRRItems INTEGER, defaultSAReset INTEGER, WarmUpPhase int, distributionType nvarchar(50), simheuristic nvarchar(50), version nvarchar(100), V000 numeric, V001 numeric, V002 NUMERIC, V003 NUMERIC, V004 NUMERIC, V005 NUMERIC, V006 NUMERIC, V007 NUMERIC, V008 NUMERIC, V009 NUMERIC, V010 NUMERIC, V011 NUMERIC, V012 NUMERIC, V013 NUMERIC, V014 NUMERIC, V015 NUMERIC, V016 NUMERIC, V017 NUMERIC, V018 NUMERIC, V019 NUMERIC, V020 NUMERIC, V021 NUMERIC, V022 NUMERIC, V023 NUMERIC, V024 NUMERIC, V025 NUMERIC, V026 NUMERIC, V027 NUMERIC, V028 NUMERIC, V029 NUMERIC, V030 numeric, lastmodified TEXT, V031 numeric, V032 numeric, SimulationExperiment varchar(255), V033 NUMERIC, V034 NUMERIC, V035 NUMERIC, V036 NUMERIC, V037 NUMERIC, V038 NUMERIC, V039 NUMERIC, V040 NUMERIC, V041 NUMERIC, V042 NUMERIC, V043 NUMERIC, V044 NUMERIC, V045 NUMERIC, V052 numeric, V053 numeric(14,2), V054 numeric(14,2),
	PRIMARY KEY("ID" AUTOINCREMENT)
);


-- OptResults definition

CREATE TABLE "OptResults" (
	"Id"	INTEGER,
	"Experiment"	TEXT,
	"Results"	TEXT NOT NULL,
	"Created"	DATETIME DEFAULT current_timestamp,
	"CurrentSimTime"	REAL,
	"Modified"	DATETIME NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- OrderPast definition

CREATE TABLE "OrderPast" (
	"Id"	INTEGER,
	"Item"	INTEGER,
	"Quantity"	INTEGER,
	"DueDate"	INTEGER,
	"Status"	INTEGER DEFAULT 0,
	"Experiment"	TEXT,
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- ResourceGroup definition

CREATE TABLE "ResourceGroup" (
	"Id"	INTEGER,
	"Name"	INTEGER,
	PRIMARY KEY("Id" AUTOINCREMENT),
	UNIQUE("Name")
);


-- ResultBookingList definition

CREATE TABLE "ResultBookingList" (
	"CreatedAt"	NUMERIC,
	"Item"	INTEGER,
	"Quantity"	NUMERIC,
	"Source"	TEXT,
	"SourceId"	INTEGER,
	"Description"	INTEGER,
	"NewInventory"	NUMERIC,
	"TimeBetweenBokkings"	NUMERIC
);


-- ResultCustomerOrder definition

CREATE TABLE "ResultCustomerOrder" (
	"OrderId"	INTEGER,
	"Experiment"	INTEGER,
	"Status"	INTEGER,
	"Customer"	INTEGER,
	"Item"	INTEGER,
	"Quantity"	NUMERIC,
	"DueDate"	NUMERIC,
	"CreatedAt"	NUMERIC,
	"ActualStart"	NUMERIC,
	"ActualEnd"	NUMERIC
);


-- BOMMatrix definition

CREATE TABLE "BOMMatrix" (
	"Id"	INTEGER,
	"Matrix"	TEXT,
	"Status"	INTEGER,
	"Experiment"	TEXT,
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Customer definition

CREATE TABLE "Customer" (
	"Id"	INTEGER,
	"Customer"	TEXT UNIQUE,
	"Description"	INTEGER,
	"Experiment"	TEXT,
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Item definition

CREATE TABLE "Item" (
	"Id"	INTEGER,
	"Item"	INTEGER,
	"Active"	INTEGER,
	"PlanningType"	TEXT NOT NULL DEFAULT 'MRP',
	"Type"	TEXT,
	"LeadTime"	INTEGER,
	"ProductionCosts"	NUMERIC,
	"HoldingCosts"	NUMERIC,
	"HoldingCostsWIP"	NUMERIC,
	"SetupCosts"	NUMERIC,
	"BacklogCosts"	NUMERIC,
	"LostSalesCosts"	NUMERIC,
	"Experiment"	TEXT,
	"SafetyStock"	NUMERIC DEFAULT 0,
	"LotsizePolicy"	TEXT DEFAULT 'LFL',
	"FOPPeriod"	INTEGER DEFAULT 1,
	"FOQQuantity"	INTEGER DEFAULT 1,
	"FOQMinimumLotSize"	INTEGER DEFAULT 1,
	"DataItemIndex"	INTEGER DEFAULT 0,
	"TransportLotSize"	INTEGER DEFAULT 0,
	"DemandVariationIndex"	INTEGER DEFAULT 0,
	"RPSQty"	NUMERIC DEFAULT (0), SafetyStockMinimum integer,
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT),
	UNIQUE("Item","Experiment")
);


-- OrderFuture definition

CREATE TABLE "OrderFuture" (
	"Id"	INTEGER,
	"Item"	INTEGER,
	"Period"	INTEGER,
	"EOrderAmount"	NUMERIC,
	"VarOrderAmount"	NUMERIC,
	"ECustomerRequiredLeadTime"	INTEGER,
	"VarCustomerRequiredLeadTime"	INTEGER,
	"Experiment"	TEXT,
	"VarArrivalRate"	NUMERIC,
	"PeriodQuantity"	NUMERIC,
	"MinimumDemandInformationHorizon"	INTEGER,
	"Status"	INTEGER,
	"DemandScenario"	INTEGER,
	"DistArrivalRate"	TEXT,
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	FOREIGN KEY("Item","Experiment") REFERENCES "Item"("Item","Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Resource definition

CREATE TABLE "Resource" (
	"Id"	INTEGER,
	"Name"	INTEGER,
	"Description"	TEXT,
	"Status"	INTEGER,
	"Experiment"	TEXT,
	"ResourceGroup"	TEXT,
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	FOREIGN KEY("ResourceGroup") REFERENCES "ResourceGroup"("Name"),
	PRIMARY KEY("Id" AUTOINCREMENT),
	UNIQUE("Name","Experiment")
);


-- ResourceConsumption definition

CREATE TABLE "ResourceConsumption" (
	"Id"	INTEGER,
	"Resource"	INTEGER,
	"Item"	INTEGER,
	"Consumption"	NUMERIC,
	"SetupTime"	NUMERIC,
	"Experiment"	TEXT,
	FOREIGN KEY("Item","Experiment") REFERENCES "Item"("Item","Experiment"),
	FOREIGN KEY("Resource","Experiment") REFERENCES "Resource"("Name","Experiment"),
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- "Result" definition

CREATE TABLE "Result" (
	"id"	INTEGER,
	"SimParamName"	TEXT,
	"Experiment"	TEXT,
	"Description"	TEXT,
	"Iteration"	INTEGER,
	"Replication"	INTEGER,
	"WIPSales"	NUMERIC,
	"WIPComponents"	NUMERIC,
	"InventorySales"	NUMERIC,
	"InventoryComponents"	NUMERIC,
	"Inventory"	NUMERIC,
	"TardinessMean"	NUMERIC,
	"TardinessVariance"	NUMERIC,
	"OverallCosts"	NUMERIC,
	"ServiceLevel"	NUMERIC,
	"SystemUtilization"	NUMERIC,
	"SGI"	NUMERIC,
	"JSI"	NUMERIC,
	"Utilizations"	TEXT,
	"DemandMeanPerItem"	TEXT,
	"LeadTimeSalesMean"	NUMERIC,
	"LeadTimeSalesVariance"	NUMERIC,
	"LeadTimeComponentsMean"	NUMERIC,
	"LeadTimeComponentsVariance"	INTEGER,
	"OptimizationParameter"	INTEGER,
	"UsedSimulationParameter"	TEXT,
	"UsedItems"	TEXT,
	"UsedRoutings"	TEXT,
	"Demand"	NUMERIC,
	"NumberCustomerOrders"	INTEGER,
	"LatenessMean"	INTEGER,
	"LatenessVariance"	NUMERIC,
	"OnTimePercentage"	NUMERIC,
	"NumberProductionOrders"	INTEGER,
	"ProductionStartWaitingTimeMean"	NUMERIC,
	"ProductionStartWaitingTimeVariance"	NUMERIC,
	"ProductionLotSizes"	TEXT,
	"InternalLatenessComponentsMean"	NUMERIC,
	"InternalLatenessComponentsVariance"	NUMERIC,
	"InternalLatenessSalesItemsMean"	NUMERIC,
	"InternalLatenessSalesItemsVariance"	NUMERIC,
	"UtilizationPS1"	NUMERIC,
	"UtilizationPS2"	NUMERIC,
	"UtilizationPS3"	NUMERIC,
	"UtilizationPS4"	NUMERIC,
	"SimulationPC"	TEXT,
	"Modified"	NUMERIC,
	"Created"	DateTime NOT NULL DEFAULT current_timestamp,
	"UsedForecasts"	TEXT,
	"PLStage1"	Numeric,
	"PLStage2"	Numeric,
	"PLStage3"	Numeric,
	"PLStage4"	Numeric,
	"PlannedLeadTimeMeanPS1"	NUMERIC(6, 2),
	"PlannedLeadTimeMeanPS2"	NUMERIC(6, 2),
	"PlannedLeadTimeVariancePS2"	NUMERIC(6, 2),
	"PlannedLeadTimeMeanPS3"	NUMERIC(6, 2),
	"PlannedLeadTimeVariancePS3"	NUMERIC(6, 2),
	"PlannedLeadTimeMeanPS4"	NUMERIC(6, 2),
	"PlannedLeadTimeVariancePS4"	NUMERIC(6, 2),
	"PlannedLeadTimeVariancePS1"	NUMERIC(6, 2),
	"TardinessOpenOrdersMean"	numeric(14, 2),
	"TardinessOpenOrdersVariance"	numeric(14, 2), version nvarchar(255), Demand_not_delivered numeric, Demand_delivered numeric, energytotalcosts numeric, countCapacityFactorBlock int, countEnergyPriceBlock int, ReplicationStart timestamp, ReplicationEnd timestamp, overallcosts_inkl_not_Delivered numeric, Optimization_String TEXT, V031 numeric, V032 numeric, simulationexperiment varchar(255), consumedSetupTimeMean numeric(14,2), consumedSetupTimeMeanVariance numeric(14,2),
	FOREIGN KEY("OptimizationParameter") REFERENCES "OptimizationParameter"("Id"),
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("id" AUTOINCREMENT)
);


-- Routing definition

CREATE TABLE "Routing" (
	"Id"	INTEGER,
	"Step"	INTEGER NOT NULL DEFAULT 1,
	"Resource"	TEXT NOT NULL,
	"Item"	INTEGER NOT NULL,
	"EProcessingTime"	INTEGER NOT NULL DEFAULT 1,
	"SProcessingTime"	NUMERIC NOT NULL,
	"ESetupTime"	NUMERIC NOT NULL DEFAULT 1,
	"SSetupTime"	NUMERIC NOT NULL,
	"Description"	TEXT,
	"Experiment"	INTEGER NOT NULL,
	"DistProcessingTime"	TEXT NOT NULL,
	"DistSetupTime"	TEXT NOT NULL,
	FOREIGN KEY("DistSetupTime") REFERENCES "Distributions"("Name"),
	FOREIGN KEY("Item","Experiment") REFERENCES "Item"("Item","Experiment"),
	FOREIGN KEY("Resource","Experiment") REFERENCES "Resource"("Name","Experiment"),
	FOREIGN KEY("DistProcessingTime") REFERENCES "Distributions"("Name"),
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- SimulationParameters definition

CREATE TABLE "SimulationParameters" (
	"Id"	INTEGER,
	"Name"	TEXT UNIQUE,
	"Description"	TEXT,
	"Experiment"	TEXT,
	"Status"	INTEGER NOT NULL DEFAULT 0,
	"DemandGeneration"	TEXT,
	"SimOptHorizon"	INTEGER,
	"ApplyMRP"	BLOB DEFAULT 1,
	"ApplyOptimization"	INTEGER DEFAULT 0,
	"ApplyClearingFunctions"	INTEGER DEFAULT 'false',
	"ClearingFunctionsInitPhase"	INTEGER,
	"MRPPlanningHorizon"	NUMERIC,
	"OptimizationType"	TEXT,
	"ForecastUpdateHorizon"	INTEGER DEFAULT 0,
	"ForecastUpdateFrequency"	INTEGER DEFAULT 1,
	"ApplyForecastUpdates"	INTEGER DEFAULT 0,
	"PlanningFrequency"	INTEGER DEFAULT 1,
	"FrozenZone"	INTEGER DEFAULT 1,
	"WarumUpTime"	INTEGER DEFAULT 1,
	"SimulationRunTime"	INTEGER DEFAULT 365,
	"ForecastScenario"	INTEGER DEFAULT 0,
	"Host"	TEXT DEFAULT 'localhost',
	"OptimizationParameterSource"	TEXT DEFAULT 'localhost',
	"DemandVariationHorizon"	INTEGER DEFAULT 1,
	"LeadTimeHorizon"	INTEGER DEFAULT 0,
	"DemandScenario"	INTEGER DEFAULT 0,
	"InputFileLocation"	TEXT DEFAULT 'input.xlsx',
	"WriteMRPTableToFile"	boolean NOT NULL DEFAULT 0,
	"WriteResultsToXLSX"	boolean NOT NULL DEFAULT 0,
	"ApplyRPS"	Integer DEFAULT 0,
	"ForecastUpdateFrozenZone"	int DEFAULT 0,
	"SetupCarryOver"	integer DEFAULT 0,
	"ApplyConWip"	INTEGER DEFAULT (0),
	"Waw"	NUMERIC DEFAULT 0,
	"WipCap"	NUMERIC DEFAULT 0,
	"WipCapComponents"	NUMERIC DEFAULT 0, MeanInterArrivalTime NUMERIC, VarCoeInterArrivalTime NUMERIC,
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT),
	UNIQUE("Name")
);


-- BOM definition

CREATE TABLE "BOM" (
	"Id"	INTEGER,
	"Item"	INTEGER NOT NULL,
	"Parent"	INTEGER,
	"Child"	INTEGER,
	"Level"	INTEGER,
	"Quantity"	NUMERIC NOT NULL,
	"Experiment"	TEXT NOT NULL,
	FOREIGN KEY("Item","Experiment") REFERENCES "Item"("Item","Experiment"),
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Capacity definition

CREATE TABLE "Capacity" (
	"Id"	INTEGER,
	"Resource"	INTEGER,
	"Capacity"	INTEGER,
	"Period"	INTEGER,
	"Experiment"	TEXT,
	FOREIGN KEY("Resource","Experiment") REFERENCES "Resource"("Name","Experiment"),
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);


-- Forecast definition

CREATE TABLE "Forecast" (
	"Id"	INTEGER UNIQUE,
	"Status"	INTEGER,
	"Item"	INTEGER NOT NULL,
	"Experiment"	TEXT NOT NULL,
	"LongtermForecast"	NUMERIC NOT NULL,
	"DemandInformationHorizon"	INTEGER,
	"Frequency"	INTEGER,
	"ProbOutlier"	NUMERIC DEFAULT 0,
	"OutlierFactor"	NUMERIC DEFAULT 0,
	"DemandScenario"	INTEGER DEFAULT 0,
	"DemandZyklus"	INTEGER DEFAULT 0,
	FOREIGN KEY("Item","Experiment") REFERENCES "Item"("Item","Experiment"),
	FOREIGN KEY("Experiment") REFERENCES "Experiment"("Experiment"),
	PRIMARY KEY("Id" AUTOINCREMENT)
);