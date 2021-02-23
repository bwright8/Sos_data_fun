CREATE TABLE REGISTERED_AGENT_BUSINESS (
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
    BUSINESS_NAME TEXT
);
CREATE INDEX ON REGISTERED_AGENT_BUSINESS(FILING_NUM);
CREATE INDEX idx_fts_business_name ON registered_agent_business USING gin(to_tsvector('english',business_name));