CREATE TABLE experiment_regions (
	id SERIAL PRIMARY KEY,
	date_created TIMESTAMP NOT NULL DEFAULT now(),
	date_modified TIMESTAMP,
	experiment_id INTEGER REFERENCES experiments(id) ON DELETE
		SET	NULL NOT NULL,
	regions JSON
);
