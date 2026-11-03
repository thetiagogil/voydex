-- ============================================================================
-- Table: reference.pokemon_training_attributes
-- What raising or defeating a Pokémon form gives, by the games that changed it.
-- ============================================================================
CREATE TABLE reference.pokemon_training_attributes (
    species_id integer NOT NULL,
    form_id integer NOT NULL,
    version_group_start_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ev_hp integer,
    ev_attack integer,
    ev_defense integer,
    ev_special_attack integer,
    ev_special_defense integer,
    ev_speed integer,
    catch_rate integer NOT NULL,
    base_friendship integer,
    base_experience integer NOT NULL,
    growth_rate_id integer NOT NULL REFERENCES reference.growth_rates (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_training_attributes_primary_key PRIMARY KEY (species_id, form_id, version_group_start_id),
    CONSTRAINT pokemon_training_attributes_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT pokemon_training_attributes_ev_presence_check CHECK ((ev_hp IS NULL AND ev_attack IS NULL AND ev_defense IS NULL AND ev_special_attack IS NULL AND ev_special_defense IS NULL AND ev_speed IS NULL) OR (ev_hp IS NOT NULL AND ev_attack IS NOT NULL AND ev_defense IS NOT NULL AND ev_special_attack IS NOT NULL AND ev_special_defense IS NOT NULL AND ev_speed IS NOT NULL)),
    CONSTRAINT pokemon_training_attributes_ev_range_check CHECK (COALESCE(ev_hp, 0) BETWEEN 0 AND 3 AND COALESCE(ev_attack, 0) BETWEEN 0 AND 3 AND COALESCE(ev_defense, 0) BETWEEN 0 AND 3 AND COALESCE(ev_special_attack, 0) BETWEEN 0 AND 3 AND COALESCE(ev_special_defense, 0) BETWEEN 0 AND 3 AND COALESCE(ev_speed, 0) BETWEEN 0 AND 6),
    CONSTRAINT pokemon_training_attributes_ev_total_check CHECK (COALESCE(ev_hp, 0) + COALESCE(ev_attack, 0) + COALESCE(ev_defense, 0) + COALESCE(ev_special_attack, 0) + COALESCE(ev_special_defense, 0) + COALESCE(ev_speed, 0) BETWEEN 0 AND 6),
    CONSTRAINT pokemon_training_attributes_catch_rate_check CHECK (catch_rate BETWEEN 1 AND 255),
    CONSTRAINT pokemon_training_attributes_base_friendship_check CHECK (base_friendship IS NULL OR base_friendship BETWEEN 0 AND 255),
    CONSTRAINT pokemon_training_attributes_base_experience_check CHECK (base_experience BETWEEN 1 AND 1000)
);

CREATE INDEX pokemon_training_attributes_form_idx ON reference.pokemon_training_attributes (form_id, version_group_start_id);

COMMENT ON TABLE reference.pokemon_training_attributes IS 'A form''s EV yield, catch rate, base friendship, base experience and growth rate, one row per version group that changed any of them, for the forms that group hands out; a game reads the latest row at or before it in release order. Read from each game''s own data.';

COMMENT ON COLUMN reference.pokemon_training_attributes.version_group_start_id IS 'The first version group, in release order (generation, then the group''s own order), these values apply to.';

COMMENT ON COLUMN reference.pokemon_training_attributes.ev_hp IS 'EV yield; NULL as a set where the games have none (Generation I and II, which used Stat Exp, Let''s Go, which uses Awakening Values, and Legends: Arceus, where EVs do nothing).';

COMMENT ON CONSTRAINT pokemon_training_attributes_ev_total_check ON reference.pokemon_training_attributes IS 'An EV yield is three at most, except Terapagos''s Terastal Form, which the games give four.';

COMMENT ON COLUMN reference.pokemon_training_attributes.base_friendship IS 'NULL in Generation I, which has no friendship.';
