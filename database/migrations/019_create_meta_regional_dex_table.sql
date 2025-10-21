CREATE TABLE
  meta.regional_dex_entries (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    species_id INTEGER NOT NULL REFERENCES dex.pokemon_species (id) ON DELETE CASCADE,
    form_id INTEGER REFERENCES dex.pokemon_forms (id) ON DELETE CASCADE, -- NULL = species/default form
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id) ON DELETE CASCADE,
    regional_number INTEGER NOT NULL,
    is_available BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW (),
      UNIQUE (version_group_id, regional_number),
      CHECK (regional_number > 0)
  );

CREATE INDEX idx_regional_dex_vg ON meta.regional_dex_entries (version_group_id);

CREATE INDEX idx_regional_dex_species ON meta.regional_dex_entries (species_id);

CREATE INDEX idx_regional_dex_form ON meta.regional_dex_entries (form_id);

-- Use a UNIQUE INDEX for (version_group_id, species_id, COALESCE(form_id,0))
CREATE UNIQUE INDEX uq_regional_dex_species_form_per_vg ON meta.regional_dex_entries (version_group_id, species_id, COALESCE(form_id, 0));