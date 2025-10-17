-- ========================================
-- Migration: Regional Dex Tables
-- ========================================

-- ========================================
-- REGIONAL DEX ENTRIES TABLE
-- ========================================
CREATE TABLE meta.regional_dex_entries (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  species_id INTEGER NOT NULL REFERENCES dex.pokemon_species(id) ON DELETE CASCADE,
  form_id INTEGER REFERENCES dex.pokemon_forms(id) ON DELETE CASCADE, -- NULL = species/default form
  version_group_id INTEGER NOT NULL REFERENCES meta.version_groups(id) ON DELETE CASCADE,
  regional_number INTEGER NOT NULL,
  is_available BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),

  -- unique regional number within the version group
  UNIQUE (version_group_id, regional_number),

  CHECK (regional_number > 0)
);

CREATE INDEX idx_regional_dex_vg ON meta.regional_dex_entries(version_group_id);
CREATE INDEX idx_regional_dex_species ON meta.regional_dex_entries(species_id);
CREATE INDEX idx_regional_dex_form ON meta.regional_dex_entries(form_id);

-- Use a UNIQUE INDEX for (version_group_id, species_id, COALESCE(form_id,0))
CREATE UNIQUE INDEX uq_regional_dex_species_form_per_vg
  ON meta.regional_dex_entries (version_group_id, species_id, COALESCE(form_id, 0));

-- Consistency: form_id must belong to species_id
CREATE OR REPLACE FUNCTION meta.enforce_form_belongs_to_species()
RETURNS TRIGGER AS $$
DECLARE form_species INT;
BEGIN
  IF NEW.form_id IS NULL THEN
    RETURN NEW;
  END IF;

  SELECT species_id INTO form_species
  FROM dex.pokemon_forms
  WHERE id = NEW.form_id;

  IF form_species IS NULL OR form_species <> NEW.species_id THEN
    RAISE EXCEPTION 'form_id % does not belong to species_id %', NEW.form_id, NEW.species_id;
  END IF;

  RETURN NEW;
END$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_regionaldex_form_species ON meta.regional_dex_entries;
CREATE TRIGGER trg_regionaldex_form_species
BEFORE INSERT OR UPDATE ON meta.regional_dex_entries
FOR EACH ROW EXECUTE FUNCTION meta.enforce_form_belongs_to_species();
