import type { MainlinePlayLevelCap } from "@/modules/mainline/features/plays/hub/types";
import { readMainlinePlayRuleRows } from "@/modules/mainline/features/plays/hub/server/play-hub-context-reader";
import {
  buildCheckedRules,
  type RuleCheckContext,
  type UsedPokemon,
} from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { readLegendarySpecies } from "@/modules/reference/features/pokemon/server/legendary-species-reader";
import { loadPagedReferenceRows } from "@/modules/reference/reference-rows";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/*
 * Every Pokémon your Plays started before this one used, for No Pokémon
 * reuse: a later Play reuses an earlier one's Pokémon, never the other way
 * round. Used identities, not just current ones, so a Charmander that has
 * since evolved still counts as a Charmander.
 */
const readUsedElsewhere = async (
  supabase: ServerSupabaseClient,
  play: MainlinePlaySummary,
  userId: string,
) => {
  if (!play.play_id || !play.created_at) return { families: [], used: [] };

  const playsResult = await supabase
    .schema("gameplay")
    .from("mainline_plays")
    .select("id")
    .eq("user_id", userId)
    .neq("id", play.play_id)
    .lt("created_at", play.created_at);

  if (playsResult.error) {
    throw new Error("Unable to load your earlier Plays.");
  }

  const playIds = (playsResult.data ?? []).map((row) => row.id);

  if (!playIds.length) return { families: [], used: [] };

  const rows = await loadPagedReferenceRows<{
    evolution_family_id: number | null;
    form_id: number | null;
    play_id: string | null;
    species_id: number | null;
  }>(
    (from, to) =>
      supabase
        .schema("views")
        .from("mainline_collection_used_identities")
        .select("evolution_family_id, form_id, play_id, species_id")
        .in("play_id", playIds)
        .order("source_row_id", { ascending: true })
        .range(from, to),
    "Unable to load your earlier Plays' Pokémon.",
  );

  return {
    families: uniqueNumberIds(rows.map((row) => row.evolution_family_id)),
    /* One per Play and form: a Pokémon shows up in many moments. */
    used: [
      ...new Map(
        rows.map((row) => [`${row.play_id}:${row.form_id}`, row]),
      ).values(),
    ].flatMap((row): UsedPokemon[] =>
      row.form_id && row.species_id && row.play_id
        ? [
            {
              formId: row.form_id,
              playId: row.play_id,
              speciesId: row.species_id,
            },
          ]
        : [],
    ),
  };
};

/* Every species of the given evolution families, by family. */
const readFamilyBySpecies = async (
  supabase: ServerSupabaseClient,
  familyIds: number[],
) => {
  if (!familyIds.length) return {};

  const result = await supabase
    .schema("reference")
    .from("pokemon_species")
    .select("id, evolution_family_id")
    .in("evolution_family_id", familyIds);

  if (result.error) {
    throw new Error("Unable to load evolution families.");
  }

  return Object.fromEntries(
    (result.data ?? []).map((species) => [
      species.id,
      species.evolution_family_id,
    ]),
  );
};

/*
 * What the Play's checked rules read, and only what they need: the
 * legendary list for No legendaries, earlier Plays' Pokémon (and, by
 * family, their whole lines) for No Pokémon reuse, and the cap for Level
 * caps, which Story's battles give (`readLevelCap`, handed in by the Hub).
 */
export const readPlayRuleCheckContext = async (
  supabase: ServerSupabaseClient,
  play: MainlinePlaySummary,
  userId: string,
  { readLevelCap }: { readLevelCap: () => Promise<MainlinePlayLevelCap> },
): Promise<RuleCheckContext> => {
  const rules = play.play_id
    ? buildCheckedRules(await readMainlinePlayRuleRows(supabase, play.play_id))
    : [];
  const reuse = rules.find((rule) => rule.kind === "no_pokemon_reuse");
  const [legendaryBySpecies, usedElsewhere, levelCap] = await Promise.all([
    rules.some((rule) => rule.kind === "no_legendaries")
      ? readLegendarySpecies(supabase)
      : {},
    reuse ? readUsedElsewhere(supabase, play, userId) : null,
    rules.some((rule) => rule.kind === "level_caps") ? readLevelCap() : null,
  ]);
  const familyBySpecies =
    reuse?.scope === "evolution_family" && usedElsewhere
      ? await readFamilyBySpecies(supabase, usedElsewhere.families)
      : {};

  return {
    familyBySpecies,
    legendaryBySpecies,
    levelCap,
    rules,
    usedElsewhere: usedElsewhere?.used ?? [],
  };
};
