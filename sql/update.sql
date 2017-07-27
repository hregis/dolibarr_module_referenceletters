ALTER TABLE llx_referenceletters_chapters ADD COLUMN readonly integer NOT NULL DEFAULT 0 AFTER options_text;
ALTER TABLE llx_referenceletters_elements ADD COLUMN title varchar(255) NULL AFTER ref_int;
ALTER TABLE llx_referenceletters_elements ADD COLUMN outputref integer DEFAULT 1 AFTER title;

# Custom header and footer
ALTER TABLE llx_referenceletters ADD COLUMN use_custom_header integer NOT NULL DEFAULT 0;
ALTER TABLE llx_referenceletters ADD COLUMN use_custom_footer integer NOT NULL DEFAULT 0;
ALTER TABLE llx_referenceletters ADD COLUMN header text;
ALTER TABLE llx_referenceletters ADD COLUMN footer text;
ALTER TABLE llx_referenceletters_elements ADD COLUMN use_custom_header integer NOT NULL DEFAULT 0;
ALTER TABLE llx_referenceletters_elements ADD COLUMN use_custom_footer integer NOT NULL DEFAULT 0;
ALTER TABLE llx_referenceletters_elements ADD COLUMN header text;
ALTER TABLE llx_referenceletters_elements ADD COLUMN footer text;