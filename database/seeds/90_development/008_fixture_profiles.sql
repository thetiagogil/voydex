-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex local development fixture definition.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The fixture accounts' trainer profiles. Every trainer has a display name,
-- a default trainer name and a Pokémon icon (the app's trainer step fills
-- them before it opens), so each fixture account has all three and opens
-- straight on Home. Never load this into a linked or production project.
WITH fixture_profiles (email, display_name, default_trainer_name, icon_slug) AS (
  VALUES
    ('fixture@voydex.test', 'Voydex Fixture', 'Red', 'pikachu'),
    ('specialist@voydex.test', 'Water Specialist Fixture', 'Misty', 'squirtle'),
    ('trainer@voydex.test', 'Pokemon Trainer Fixture', 'Blue', 'eevee')
)
UPDATE public.profiles AS profile
SET
  display_name = fixture_profiles.display_name,
  default_trainer_name = fixture_profiles.default_trainer_name,
  icon_form_id = form.id
FROM fixture_profiles
JOIN auth.users AS account ON account.email = fixture_profiles.email
JOIN reference.pokemon_forms AS form ON form.slug = fixture_profiles.icon_slug
WHERE profile.id = account.id;
