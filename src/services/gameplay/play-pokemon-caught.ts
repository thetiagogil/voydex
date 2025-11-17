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

  // 2) fetch game to get version_group_id
  const { data: game, error: gameErr } = await supabase
    .schema("meta")
    .from("games")
    .select("id, version_group_id")
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

  // 4) batch-fetch species
  const speciesIds = [...new Set(dexEntries.map((e: any) => e.species_id))];
  const { data: speciesRows, error: speciesErr } = await supabase
    .schema("meta")
    .from("pokemon_species")
    .select("id, slug, name")
    .in("id", speciesIds);
  if (speciesErr) return { data: null, error: speciesErr };

  const speciesById: Record<number, any> = {};
  (speciesRows || []).forEach((s: any) => {
    speciesById[s.id] = s;
  });

  // 5) batch-fetch forms (explicit forms referenced by regional entries)
  const formIds = dexEntries
    .map((e: any) => e.form_id)
    .filter((fid: any) => fid !== null);
  let formsById: Record<number, any> = {};
  if (formIds.length > 0) {
    const { data: formRows, error: formErr } = await supabase
      .schema("meta")
      .from("pokemon_forms")
      .select("id, slug, name, sprite_url, species_id, is_default")
      .in("id", formIds);
    if (formErr) return { data: null, error: formErr };
    (formRows || []).forEach((f: any) => {
      formsById[f.id] = f;
    });
  }

  // 5b) fetch default forms for species where regional entry has no explicit form_id
  const speciesNeedingDefault = [
    ...new Set(
      dexEntries
        .filter((e: any) => e.form_id === null)
        .map((e: any) => e.species_id),
    ),
  ];
  let defaultFormBySpecies: Record<number, any> = {};
  if (speciesNeedingDefault.length > 0) {
    const { data: defaultForms, error: defErr } = await supabase
      .schema("meta")
      .from("pokemon_forms")
      .select("id, slug, name, sprite_url, species_id, is_default")
      .in("species_id", speciesNeedingDefault)
      .eq("is_default", true);
    if (defErr) return { data: null, error: defErr };
    (defaultForms || []).forEach((f: any) => {
      defaultFormBySpecies[f.species_id] = f;
    });
  }

  // 6) fetch pokemon_caught for this play
  const { data: caught, error: caughtErr } = await supabase
    .schema("gameplay")
    .from("pokemon_caught")
    .select("species_id, form_id")
    .eq("play_id", playId);
  if (caughtErr) return { data: null, error: caughtErr };

  // build caught set (species_id or species_id:form_id)
  const caughtSet = new Set<string>();
  (caught || []).forEach((c: any) => {
    const key = c.form_id ? `${c.species_id}:${c.form_id}` : `${c.species_id}`;
    caughtSet.add(key);
  });

  // 7) map regional dex entries with caught status
  const result: PlayPokemonCaught[] = dexEntries.map((entry: any) => {
    const key = entry.form_id
      ? `${entry.species_id}:${entry.form_id}`
      : `${entry.species_id}`;
    const isCaught = caughtSet.has(key);

    // choose form: explicit form if present, otherwise species default form
    const explicitForm = entry.form_id ? formsById[entry.form_id] : null;
    const defaultForm = !entry.form_id
      ? defaultFormBySpecies[entry.species_id] || null
      : null;

    const chosenForm = explicitForm || defaultForm;

    return {
      regional_number: entry.regional_number,
      species_id: entry.species_id,
      form_id: entry.form_id || (chosenForm ? chosenForm.id : null),
      species: speciesById[entry.species_id] || {
        id: entry.species_id,
        slug: "unknown",
        name: "Unknown",
      },
      form: chosenForm
        ? {
            id: chosenForm.id,
            slug: chosenForm.slug,
            name: chosenForm.name,
            sprite_url: chosenForm.sprite_url || null,
          }
        : null,
      caught: isCaught,
    };
  });

  return { data: result, error: null };
};
