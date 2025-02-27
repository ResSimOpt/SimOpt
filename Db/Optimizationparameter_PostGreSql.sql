-- public.optimizationparameter definition

-- Drop table

-- DROP TABLE public.optimizationparameter;

CREATE TABLE public.optimizationparameter (
	x000 numeric(18, 4) NULL,
	x001 numeric(18, 4) NULL,
	x002 numeric(18, 4) NULL,
	x003 numeric(18, 4) NULL,
	x004 numeric(18, 4) NULL,
	x005 numeric(18, 4) NULL,
	x006 numeric(18, 4) NULL,
	x007 numeric(18, 4) NULL,
	x008 numeric(18, 4) NULL,
	x009 numeric(18, 4) NULL,
	x010 numeric(18, 4) NULL,
	x011 numeric(18, 4) NULL,
	x012 numeric(18, 4) NULL,
	x013 numeric(18, 4) NULL,
	x014 numeric(18, 4) NULL,
	x015 numeric(18, 4) NULL,
	x016 numeric(18, 4) NULL,
	x017 numeric(18, 4) NULL,
	description varchar(255) NULL,
	experiment varchar(255) NULL,
	status int4 NULL,
	maxiterations int4 NULL,
	fixednumberreplications int4 NULL,
	sbm int4 NULL,
	sbminitphase int4 NULL,
	sbmlowerboundreplications int4 NULL,
	sbmpercentillb numeric(18, 4) NULL,
	sbmpercentilub numeric(18, 4) NULL,
	s1 varchar(255) NULL,
	id bigserial NOT NULL,
	createdat varchar(255) NULL,
	updatedat varchar(255) NULL,
	forecastscenario int4 NULL,
	simulationpc varchar(255) NULL,
	simulationparameter varchar(255) NULL,
	sp000 varchar(255) NULL,
	sp001 varchar(255) NULL,
	sp002 varchar(255) NULL,
	sp003 varchar(255) NULL,
	sp004 varchar(255) NULL,
	sp005 varchar(255) NULL,
	sp006 varchar(255) NULL,
	sp007 varchar(255) NULL,
	sp008 varchar(255) NULL,
	sp009 varchar(255) NULL,
	sp010 varchar(255) NULL,
	x018 numeric(18, 4) NULL,
	x019 numeric(18, 4) NULL,
	x020 numeric(18, 4) NULL,
	creation_time timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	note varchar(255) NULL,
	"Version" varchar NULL,
	"version" varchar(255) NULL,
	initializationphase int4 NULL,
	defaultcreditrange numeric NULL,
	simannealing int4 NULL,
	maxpercentil numeric NULL,
	percentilstart numeric NULL,
	outliercorrectiontype int4 NULL,
	historyvalues int4 NULL,
	alpha numeric NULL,
	cbrrlb numeric NULL,
	mincbrritems int4 NULL,
	defaultsareset int4 NULL,
	warumupphase int4 NULL,
	distributiontype varchar(50) NULL,
	simheuristic varchar(50) NULL,
	v000 numeric NULL,
	v001 numeric NULL,
	v002 numeric NULL,
	v003 numeric NULL,
	v004 numeric NULL,
	v005 numeric NULL,
	v006 numeric NULL,
	v007 numeric NULL,
	v008 numeric NULL,
	v009 numeric NULL,
	v010 numeric NULL,
	v011 numeric NULL,
	v012 numeric NULL,
	v013 numeric NULL,
	v014 numeric NULL,
	v015 numeric NULL,
	v016 numeric NULL,
	v017 numeric NULL,
	v018 numeric NULL,
	v019 numeric NULL,
	v020 numeric NULL,
	v021 numeric NULL,
	v022 numeric NULL,
	v023 numeric NULL,
	v024 numeric NULL,
	v025 numeric NULL,
	v026 numeric NULL,
	v027 numeric NULL,
	v028 numeric NULL,
	v029 numeric NULL,
	v030 numeric NULL,
	warmupphase int4 NULL,
	lastmodified text NULL,
	v031 numeric NULL,
	v032 numeric NULL,
	simulationexperiment varchar(255) NULL,
	v033 numeric(14, 2) NULL,
	v034 numeric(14, 2) NULL,
	v035 numeric(14, 2) NULL,
	v036 numeric(14, 2) NULL,
	v037 numeric(14, 2) NULL,
	v038 numeric(14, 2) NULL,
	v039 numeric(14, 2) NULL,
	v040 numeric(14, 2) NULL,
	v041 numeric(14, 2) NULL,
	v042 numeric(14, 2) NULL,
	v043 numeric(14, 2) NULL,
	v044 numeric(14, 2) NULL,
	v045 numeric(14, 2) NULL,
	v046 numeric(14, 2) NULL,
	v047 numeric(14, 2) NULL,
	v048 numeric(14, 2) NULL,
	v049 numeric(14, 2) NULL,
	v050 numeric(14, 2) NULL,
	v051 numeric(14, 2) NULL,
	v052 numeric(14, 2) NULL,
	v053 numeric(14, 2) NULL,
	v054 numeric(14, 2) NULL,
	CONSTRAINT optimizationparameter_pkey PRIMARY KEY (id)
);