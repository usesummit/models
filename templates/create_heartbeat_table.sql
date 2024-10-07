CREATE TABLE automation_heartbeats (
	id INT8 NOT NULL DEFAULT unique_rowid(),
	service_name STRING NOT NULL,
	automation_name STRING NULL,
	event_time TIMESTAMPTZ NULL DEFAULT now():::TIMESTAMPTZ,
	event_id STRING NOT NULL,
	involved_services STRING NULL,
	external_service_url STRING NULL,
	status STRING NULL DEFAULT 'ok':::STRING,
	created_at TIMESTAMPTZ NULL DEFAULT now():::TIMESTAMPTZ,
	updated_at TIMESTAMPTZ NULL DEFAULT now():::TIMESTAMPTZ,
	CONSTRAINT automation_heartbeats_pkey PRIMARY KEY (id ASC)
)
