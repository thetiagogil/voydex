"use server";

import { createClient } from "@/lib/supabase/server";

export const getPlayRegionalDex = async (playId: string) => {
  const supabase = await createClient();

  // 1) fetch play to get game_id
  const { data: play, error: playErr } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("id, game_id")
    .eq("id", playId)
    .maybeSingle();
  if (playErr) return { data: null, error: playErr };
  if (!play) return { data: null, error: null };

  // 2) fetch game to get version_group_id and generation_id
  const { data: game, error: gameErr } = await supabase
    .schema("meta")
    .from("games")
    .select("id, version_group_id, generation_id")
    .eq("id", play.game_id)
    .maybeSingle();
  if (gameErr) return { data: null, error: gameErr };
  if (!game) return { data: null, error: null };

  const versionGroupId = game.version_group_id;

  // 3) fetch regional dex entries for this version_group
  const { data: regionalDex, error: rdErr } = await supabase
    .schema("meta")
    .from("regional_dex_entries")
    .select("regional_number, species_id, form_id")
    .eq("version_group_id", versionGroupId)
    .order("regional_number", { ascending: true });
  if (rdErr) return { data: null, error: rdErr };

  const dexEntries = regionalDex || [];
  if (dexEntries.length === 0) return { data: [], error: null };

  // 4) Use generation view to fetch Pokemon data with all metadata already joined
  const generationView = `pokemon_generation_${["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix"][game.generation_id - 1]}`;

  const speciesIds = [...new Set(dexEntries.map((e: any) => e.species_id))];
  const { data: pokemonData, error: pokemonErr } = await supabase
    .schema("views")
    .from(generationView)
    .select("*")
    .in("species_id", speciesIds);
  if (pokemonErr) return { data: null, error: pokemonErr };

  // Build lookup maps by species_id and form_id
  const pokemonBySpecies: Record<number, any[]> = {};
  const pokemonByForm: Record<number, any> = {};

  (pokemonData || []).forEach((p: any) => {
    if (!pokemonBySpecies[p.species_id]) {
      pokemonBySpecies[p.species_id] = [];
    }
    pokemonBySpecies[p.species_id].push(p);
    pokemonByForm[p.form_id] = p;
  });

  // 5) fetch pokemon_caught for this play
  const { data: caught, error: caughtErr } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .select("species_id, form_id")
    .eq("play_id", playId);
  if (caughtErr) return { data: null, error: caughtErr };

  // build caught set - always use species_id since that's what the UNIQUE constraint uses
  const caughtSet = new Set<number>();
  (caught || []).forEach((c: any) => {
    caughtSet.add(c.species_id);
  });

  // 6) map regional dex entries with caught status using generation view data
  const result: PlayPokemonCaught[] = dexEntries.map((entry: any) => {
    // Check if this species is caught (regardless of form, since constraint is on species_id)
    const isCaught = caughtSet.has(entry.species_id);

    // Find the Pokemon from view data
    let pokemon = null;
    if (entry.form_id) {
      // Explicit form specified
      pokemon = pokemonByForm[entry.form_id];
    } else {
      // Use default form for species
      const speciesForms = pokemonBySpecies[entry.species_id] || [];
      pokemon =
        speciesForms.find((p: any) => p.is_default_form) || speciesForms[0];
    }

    return {
      regional_number: entry.regional_number,
      species_id: entry.species_id,
      form_id: entry.form_id || (pokemon ? pokemon.form_id : null),
      species: pokemon
        ? {
            id: pokemon.species_id,
            slug: pokemon.species_slug,
            name: pokemon.species_name,
          }
        : {
            id: entry.species_id,
            slug: "unknown",
            name: "Unknown",
          },
      form: pokemon
        ? {
            id: pokemon.form_id,
            slug: pokemon.form_slug,
            name: pokemon.form_name,
            sprite_url: pokemon.sprite_url || null,
          }
        : null,
      caught: isCaught,
      // Include additional metadata from view for potential use
      types: pokemon
        ? [
            pokemon.type1_id && {
              id: pokemon.type1_id,
              slug: pokemon.type1_slug,
              name: pokemon.type1_name,
            },
            pokemon.type2_id && {
              id: pokemon.type2_id,
              slug: pokemon.type2_slug,
              name: pokemon.type2_name,
            },
          ].filter(Boolean)
        : [],
    };
  });

  return { data: result, error: null };
};
