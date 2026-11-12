BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "bookmodule_address" (
	"id"	integer NOT NULL,
	"city"	varchar(50) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "bookmodule_student" (
	"id"	integer NOT NULL,
	"name"	varchar(50) NOT NULL,
	"age"	integer NOT NULL,
	"address_id"	bigint NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("address_id") REFERENCES "bookmodule_address"("id") DEFERRABLE INITIALLY DEFERRED
);
INSERT INTO "bookmodule_address" VALUES (1,'Buraydah');
INSERT INTO "bookmodule_address" VALUES (2,'Unaizah');
INSERT INTO "bookmodule_address" VALUES (3,'Riyadh');
INSERT INTO "bookmodule_student" VALUES (1,'Sara',21,1);
INSERT INTO "bookmodule_student" VALUES (2,'Noura',22,1);
INSERT INTO "bookmodule_student" VALUES (3,'Reem',20,1);
INSERT INTO "bookmodule_student" VALUES (4,'Lama',23,2);
INSERT INTO "bookmodule_student" VALUES (5,'Huda',21,2);
INSERT INTO "bookmodule_student" VALUES (6,'Maha',22,3);
CREATE INDEX IF NOT EXISTS "bookmodule_student_address_id_6ed0c9f1" ON "bookmodule_student" (
	"address_id"
);
COMMIT;
