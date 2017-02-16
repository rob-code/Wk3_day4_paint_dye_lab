DROP TABLE paints_dyes;
DROP TABLE dyes;
DROP TABLE paints;


CREATE TABLE paints (
id SERIAL4 primary key,
name VARCHAR(255)
);


CREATE TABLE dyes (
id SERIAL4 primary key,
name VARCHAR(255)
);

CREATE TABLE paints_dyes(
id SERIAL4 primary key,
paint_id INT4 REFERENCES paints(id) ON DELETE CASCADE,
dye_id INT4 REFERENCES dyes(id) ON DELETE CASCADE,
percentage INT2
);






