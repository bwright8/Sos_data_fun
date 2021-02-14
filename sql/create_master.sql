CREATE TABLE MASTER (
    FILING_NUM TEXT,
    LAYOUT_CODE TEXT,
    STATUS_ID NUMERIC,
    CORP_TYPE_ID NUMERIC,
    NAME TEXT,
    PERPETUAL_FLAG NUMERIC,
    CREATION_DATE NUMERIC,
    EXPIRATION_DATE DATE,
    INACTIVE_DATE DATE,
    FORMATION_DATE DATE,
    REPORT_DUE_DATE DATE,
    TAX_ID NUMERIC,
    DBA_NAME TEXT,
    FOREIGN_FEIN TEXT,
    FOREIGN_STATE TEXT,
    FOREIGN_COUNTRY TEXT,
    FOREIGN_FORMATION_DATE DATE,
    EXPIRATION_TYPE TEXT,
    NONPROFIT_SUBTYPE_ID NUMERIC,
    BOC_FLAG NUMERIC,
    BOC_DATE TEXT
);
CREATE INDEX ON MASTER(FILING_NUM);
CREATE INDEX idx_fts_name_func ON master USING gin(to_tsvector('english',name));
CREATE INDEX idx_fts_dba_name_func ON master USING gin(to_tsvector('english',name));