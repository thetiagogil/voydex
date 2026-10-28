-- ============================================================================
-- Constraint: public.profiles.icon_form_id
-- The profile table loads before the reference tables, so its icon's foreign
-- key is added here, once reference.pokemon_forms exists.
-- ============================================================================
ALTER TABLE public.profiles
    ADD CONSTRAINT profiles_icon_form_fkey FOREIGN KEY (icon_form_id) REFERENCES reference.pokemon_forms (id) ON UPDATE CASCADE ON DELETE SET NULL;
