BEGIN;


CREATE TABLE IF NOT EXISTS sources (
  name TEXT NOT NULL PRIMARY KEY
) WITHOUT ROWID;


CREATE TABLE IF NOT EXISTS batch (
  rowid INTEGER NOT NULL PRIMARY KEY
) WITHOUT ROWID;


CREATE TABLE IF NOT EXISTS insertions (
  rowid     INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  source_id TEXT    NOT NULL REFERENCES sources (name),
  batch_id  INTEGER NOT NULL REFERENCES batch   (rowid),
  sort_by   TEXT    NOT NULL UNIQUE
);


END;
