CREATE TABLE REGISTERED_AGENT_PERSONAL (
    FILING_NUM TEXT,
    LAYOUT_CODE TEXT,
    ADDRESS1 TEXT,
    ADDRESS2 TEXT,
    CITY TEXT,
    STATE TEXT,
    ZIP_CODE TEXT,
    ZIP_EXTENSION TEXT,
    COUNTRY TEXT,
    INACTIVE_DATE DATE,
    AGENT_LAST_NAME TEXT,
    AGENT_FIRST_NAME TEXT,
    AGENT_MIDDLE_NAME TEXT,
    AGENT_SUFFIX TEXT,
    AGENT_FULL_NAME TEXT
);
CREATE INDEX ON REGISTERED_AGENT_PERSONAL(FILING_NUM);

--CREATE OR REPLACE FUNCTION immutable_concat_ws(text, VARIADIC text[])
--RETURNS text AS 'text_concat_ws' LANGUAGE internal IMMUTABLE PARALLEL SAFE;

--UPDATE registered_agent_personal SET AGENT_FULL_NAME = immutable_concat_ws(agent_first_name,agent_middle_name,agent_last_name,agent_suffix);
--CREATE INDEX idx_agent_full_name ON registered_agent_personal USING gin(to_tsvector('english',agent_full_name));
