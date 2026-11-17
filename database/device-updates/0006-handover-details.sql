-- A Pokémon handed over (a gift, a trade, a fossil, an Egg, a prize or one
-- you buy) says who hands it over and, where they apply, what you give for
-- it, its nickname, its held item and its price. The game data that fills
-- them arrives with the next swap.
ALTER TABLE reference.pokemon_encounters
    ADD COLUMN giver text,
    ADD COLUMN trade_for_species_id integer,
    ADD COLUMN trade_for_form_id integer,
    ADD COLUMN nickname text,
    ADD COLUMN held_item_id integer,
    ADD COLUMN price text;

ALTER TABLE reference.pokemon_encounters
    ADD CONSTRAINT pokemon_encounters_trade_for_fkey FOREIGN KEY (trade_for_species_id, trade_for_form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT pokemon_encounters_held_item_fkey FOREIGN KEY (held_item_id) REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ADD CONSTRAINT pokemon_encounters_trade_for_pair_check CHECK ((trade_for_species_id IS NULL) = (trade_for_form_id IS NULL)),
    ADD CONSTRAINT pokemon_encounters_giver_length_check CHECK (giver IS NULL OR CHAR_LENGTH(BTRIM(giver)) BETWEEN 1 AND 80),
    ADD CONSTRAINT pokemon_encounters_nickname_length_check CHECK (nickname IS NULL OR CHAR_LENGTH(BTRIM(nickname)) BETWEEN 1 AND 12),
    ADD CONSTRAINT pokemon_encounters_price_length_check CHECK (price IS NULL OR CHAR_LENGTH(BTRIM(price)) BETWEEN 1 AND 40);
