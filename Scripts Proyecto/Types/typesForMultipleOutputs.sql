CREATE TYPE recordType AS object (
  id           NUMBER,
  nombre  VARCHAR2(45)
);

CREATE TYPE tableType IS TABLE OF recordType;
