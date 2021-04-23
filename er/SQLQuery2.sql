create database fish_farm;
use fish_farm;

drop table SwimmingPool
drop table Fish

drop database fish_farm;

create table Dose
(
	id_dose int identity primary key,
	type_eat varchar(36),
	dose float 
);

create table Fish
(
	id_fish int identity primary key,
	id_dose int references Dose(id_dose),
	breed varchar(36) Null,
	food_count float Null
);


create table TimeSensor
(
	id_ts int identity primary key,
	temperature float Not Null,
	number varchar(36)
);

create table WaterSensor
(
	id_wse int identity primary key,
	temperature float Not Null,
	number varchar(36)
);

create table OxygenSensor
(
	id_oxygen int identity primary key,
	param_ox float Not Null,
	number varchar(36)
);

create table WaterLvlSensor
(
	id_wl int identity primary key,
	param_wl float Not Null,
	number varchar(36)
);

create table GasDevice
(
	id_gas int identity primary key,
	param_gas int Not Null,
	number varchar(36)
);

create table WaterDevice
(
	id_water int identity primary key,
	param_water int Not Null,
	number varchar(36)
);

create table DC
(
	id_dc int identity primary key
);

create table ElDevice
(
	id_el int identity primary key,
	param_el int Not Null,
	number varchar(36)
);


create table WaterMoveSensor
(
	id_wmove int identity primary key,
	param_wmove int Not Null,
	number varchar(36)
);


create table Pools
(
	id_swpool int identity,
	id_dc int references DC(id_dc),
	id_ts int references TimeSensor(id_ts),
	id_wse int references WaterSensor(id_wse),
	id_fish int references Fish(id_fish),
	id_oxygen int references OxygenSensor(id_oxygen),
	id_wl int references WaterLvlSensor(id_wl),
	id_gas int references GasDevice(id_gas),
	id_water int references WaterDevice(id_water),
	id_el int references ElDevice(id_el),
	id_dose int references Dose(id_dose),
	id_wmove int references  WaterMoveSensor(id_wmove),
	volume int Not Null,
	material varchar(36),
	primary key (id_dc, id_swpool,id_ts, id_wse,id_fish, id_oxygen,id_wl,id_gas,id_water,id_el,id_dose,id_wmove)
)
