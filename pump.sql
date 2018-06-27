DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS polls;
DROP TABLE IF EXISTS gasboy_errors;

CREATE TABLE gasboy_errors (
	id smallserial PRIMARY KEY
	, error_text varchar(30)
);

CREATE TABLE polls (
	id serial PRIMARY KEY
	, start_time timestamptz NOT NULL
	, end_time timestamptz NOT NULL
	, start_trans smallint
	, end_trans smallint
	, error varchar(100)
);

CREATE TABLE transactions (
	id serial PRIMARY KEY
	, trans_num smallint NOT NULL
	, card_num smallint NOT NULL
	, veh_num smallint NOT NULL
	, emp_num smallint NOT NULL
	, trans_date timestamptz NOT NULL
	, qty smallint NOT NULL
	, pump_num smallint NOT NULL
	, prod_num smallint NOT NULL
	, price int NOT NULL
	, total int NOT NULL
	, odom int NOT NULL
	, error_id smallint NOT NULL
	, CONSTRAINT fk_error
		FOREIGN KEY (error_id) REFERENCES gasboy_errors (id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

INSERT INTO gasboy_errors (id, error_text) VALUES
(0, 'NONE')
,(1, 'TIMED OUT')
,(2, 'LOCKED OUT')
,(3, 'INVALID FUEL')
,(4, 'PUMP IN USE')
,(5, 'INV SYS ID')
,(6, 'LIMIT CUTOFF')
,(7, 'READ ERROR')
,(8, 'TTY CMD')
,(9, 'COMPLETED TRANSACTION')
,(11, 'GATE ENTRY')
,(13, 'INVALID ODOM')
,(14, 'PIN ERROR')
,(15, 'ALLOC LIMIT')
,(16, 'NO ALLOC')
,(17, 'PUMP DISABLED')
,(18, 'CODE CARD')
,(19, 'INVALID PUMP')
,(22, 'INV CARD FMT')
,(23, 'EMERG. STOP')
,(24, 'CARD EXPIRED')
,(29, 'REORDER FUEL')
,(30, 'WRG CARD ENTER')
,(31, 'PWR FAIL')
,(32, 'TERM ACTIVATE')
,(34, 'INVALID TANK')
,(35, 'DIPSTICK')
,(51, 'PMP SW ERROR')
,(55, 'DELIVERY')
;DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS polls;
DROP TABLE IF EXISTS gasboy_errors;

CREATE TABLE gasboy_errors (
	id smallserial PRIMARY KEY
	, error_text varchar(30)
);

CREATE TABLE polls (
	id serial PRIMARY KEY
	, start_time timestamptz NOT NULL
	, end_time timestamptz NOT NULL
	, start_trans smallint
	, end_trans smallint
	, error varchar(100)
);

CREATE TABLE transactions (
	id serial PRIMARY KEY
	, trans_num smallint NOT NULL
	, card_num smallint NOT NULL
	, veh_num smallint NOT NULL
	, emp_num smallint NOT NULL
	, trans_date timestamptz NOT NULL
	, qty smallint NOT NULL
	, pump_num smallint NOT NULL
	, prod_num smallint NOT NULL
	, price int NOT NULL
	, total int NOT NULL
	, odom int NOT NULL
	, error_id smallint NOT NULL
	, CONSTRAINT fk_error
		FOREIGN KEY (error_id) REFERENCES gasboy_errors (id)
		ON DELETE CASCADE
		ON UPDATE RESTRICT
);

INSERT INTO gasboy_errors (id, error_text) VALUES
(0, 'NONE')
,(1, 'TIMED OUT')
,(2, 'LOCKED OUT')
,(3, 'INVALID FUEL')
,(4, 'PUMP IN USE')
,(5, 'INV SYS ID')
,(6, 'LIMIT CUTOFF')
,(7, 'READ ERROR')
,(8, 'TTY CMD')
,(9, 'COMPLETED TRANSACTION')
,(11, 'GATE ENTRY')
,(13, 'INVALID ODOM')
,(14, 'PIN ERROR')
,(15, 'ALLOC LIMIT')
,(16, 'NO ALLOC')
,(17, 'PUMP DISABLED')
,(18, 'CODE CARD')
,(19, 'INVALID PUMP')
,(22, 'INV CARD FMT')
,(23, 'EMERG. STOP')
,(24, 'CARD EXPIRED')
,(29, 'REORDER FUEL')
,(30, 'WRG CARD ENTER')
,(31, 'PWR FAIL')
,(32, 'TERM ACTIVATE')
,(34, 'INVALID TANK')
,(35, 'DIPSTICK')
,(51, 'PMP SW ERROR')
,(55, 'DELIVERY')
;