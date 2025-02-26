-- public."RESULT" definition

-- Drop table

-- DROP TABLE public."RESULT";

CREATE TABLE public."RESULT" (
	id serial4 NOT NULL,
	simparamname varchar(255) NULL,
	experiment varchar(255) NULL,
	description varchar(255) NULL,
	iteration int4 NULL,
	replication int4 NULL,
	wipsales numeric(18, 4) NULL,
	wipcomponents numeric(18, 4) NULL,
	inventorysales numeric(18, 4) NULL,
	inventorycomponents numeric(18, 4) NULL,
	inventory numeric(18, 4) NULL,
	tardinessmean numeric(18, 4) NULL,
	tardinessvariance numeric(18, 4) NULL,
	overallcosts numeric(18, 4) NULL,
	servicelevel numeric(18, 4) NULL,
	systemutilization numeric(18, 4) NULL,
	sgi numeric(18, 4) NULL,
	jsi numeric(18, 4) NULL,
	utilizations text NULL,
	demandmeanperitem text NULL,
	leadtimesalesmean numeric(18, 4) NULL,
	leadtimesalesvariance numeric(18, 4) NULL,
	leadtimecomponentsmean numeric(18, 4) NULL,
	leadtimecomponentsvariance numeric(18, 4) NULL,
	optimizationparameter numeric(18, 4) NULL,
	usedsimulationparameter text NULL,
	useditems text NULL,
	usedroutings text NULL,
	demand numeric(18, 4) NULL,
	numbercustomerorders int4 NULL,
	latenessmean numeric(18, 4) NULL,
	latenessvariance numeric(18, 4) NULL,
	ontimepercentage numeric(18, 4) NULL,
	numberproductionorders numeric(18, 4) NULL,
	productionstartwaitingtimemean numeric(18, 4) NULL,
	productionstartwaitingtimevariance numeric(18, 4) NULL,
	productionlotsizes text NULL,
	internallatenesscomponentsmean numeric(18, 4) NULL,
	internallatenesscomponentsvariance numeric(18, 4) NULL,
	internallatenesssalesitemsmean numeric(18, 4) NULL,
	internallatenesssalesitemsvariance numeric(18, 4) NULL,
	simulationpc varchar(255) NULL,
	modified timestamp NULL,
	created timestamp NULL,
	utilizationps1 numeric(18, 4) NULL,
	utilizationps2 numeric(18, 4) NULL,
	utilizationps3 numeric(18, 4) NULL,
	utilizationps4 numeric(18, 4) NULL,
	usedforecasts text NULL,
	plstage1 numeric NULL,
	plstage2 numeric NULL,
	plstage3 numeric NULL,
	plstage4 numeric NULL,
	plannedleadtimemeanps1 numeric(6, 2) NULL,
	plannedleadtimevarianceps1 numeric(6, 2) NULL,
	plannedleadtimemeanps2 numeric(6, 2) NULL,
	plannedleadtimevarianceps2 numeric(6, 2) NULL,
	plannedleadtimemeanps3 numeric(6, 2) NULL,
	plannedleadtimevarianceps3 numeric(6, 2) NULL,
	plannedleadtimemeanps4 numeric(6, 2) NULL,
	plannedleadtimevarianceps4 numeric(6, 2) NULL,
	tardinessopenordersmean numeric(14, 4) NULL,
	tardinessopenordersvariance numeric(14, 4) NULL,
	note varchar(255) NULL,
	creation_time timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	"version" varchar(255) NULL,
	demand_delivered numeric(18, 4) NULL,
	demand_not_delivered numeric(18, 4) NULL,
	energytotalcosts numeric(18, 4) NULL,
	countcapacityfactorblock int4 NULL,
	countenergypriceblock int4 NULL,
	replicationend timestamp NULL,
	replicationstart timestamp NULL,
	overallcosts_inkl_not_delivered numeric NULL,
	optimization_string text NULL,
	v031 numeric NULL,
	v032 numeric NULL,
	simulationexperiment varchar(255) NULL,
	consumedsetuptimemean numeric(14, 2) NULL,
	consumedsetuptimevariance numeric(14, 2) NULL,
	replicationstatus int4 NULL,
	CONSTRAINT "RESULT_pkey" PRIMARY KEY (id)
);
CREATE UNIQUE INDEX result_pkey ON public."RESULT" USING btree (id DESC);