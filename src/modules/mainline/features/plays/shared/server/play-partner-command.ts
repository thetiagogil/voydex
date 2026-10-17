import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

const activeRosterStateId = 1;

type PartnerOption = {
  pokemon_form_id: number;
  pokemon_species_id: number;
  pokemon_species_name: string | null;
};

const findPartnerOption = (
  decisionOptions: unknown,
  decisionOptionId: number,
): PartnerOption | null => {
  if (!Array.isArray(decisionOptions)) {
    return null;
  }

  const option = decisionOptions.find(
    (item) =>
      item &&
      typeof item === "object" &&
      (item as { decision_option_id?: unknown }).decision_option_id ===
        decisionOptionId,
  ) as Partial<PartnerOption> | undefined;

  return option &&
    typeof option.pokemon_form_id === "number" &&
    typeof option.pokemon_species_id === "number"
    ? {
        pokemon_form_id: option.pokemon_form_id,
        pokemon_species_id: option.pokemon_species_id,
        pokemon_species_name:
          typeof option.pokemon_species_name === "string"
            ? option.pokemon_species_name
            : null,
      }
    : null;
};

/*
 * A brand-new Play's first decision (v3 `fresh`): the partner you picked
 * joins an empty team in slot 1, then the partner milestone is recorded with
 * that choice and the team it starts. Its moment reads "X chose you".
 */
export const choosePlayPartner = async (
  supabase: ServerSupabaseClient,
  {
    decisionOptionId,
    milestoneId,
    playId,
  }: { decisionOptionId: number; milestoneId: number; playId: string },
): Promise<{ addedPlayPokemonId: string | null; partnerName: string }> => {
  const [milestoneResult, teamResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("decision_options, is_completed, snapshot_policy_slug")
      .eq("play_id", playId)
      .eq("milestone_id", milestoneId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_team_detail")
      .select("play_pokemon_id")
      .eq("play_id", playId)
      .in("roster_state_slug", ["active", "reserve"]),
  ]);

  if (milestoneResult.error || !milestoneResult.data) {
    throw new Error("This milestone isn't part of the Play.");
  }

  if (teamResult.error) {
    throw new Error("Unable to read the Play's team.");
  }

  if (milestoneResult.data.is_completed) {
    throw new Error("Your partner is already recorded. Change it from Story.");
  }

  const option = findPartnerOption(
    milestoneResult.data.decision_options,
    decisionOptionId,
  );

  if (!option) {
    throw new Error("That partner isn't one of this milestone's choices.");
  }

  const partnerName = option.pokemon_species_name ?? "Your partner";
  let addedPlayPokemonId: string | null = null;

  /* Only an empty team gets the partner; otherwise it is already there. */
  if (!(teamResult.data ?? []).length) {
    const addResult = await supabase
      .schema("gameplay")
      .rpc("add_mainline_play_pokemon", {
        p_create_event: false,
        p_form_id: option.pokemon_form_id,
        p_play_id: playId,
        p_roster_state_id: activeRosterStateId,
        p_slot: 1,
        p_species_id: option.pokemon_species_id,
      });

    if (addResult.error || !addResult.data?.[0]) {
      throw new Error(`Unable to add ${partnerName} to the team.`);
    }

    addedPlayPokemonId = addResult.data[0].result_play_pokemon_id;
  }

  const completeResult = await supabase
    .schema("gameplay")
    .rpc("complete_mainline_play_milestone", {
      p_completed_at: new Date().toISOString(),
      p_create_event: true,
      p_decision_option_id: decisionOptionId,
      p_event_body: "Your partner, the first milestone of this Play.",
      p_event_title: `${partnerName} chose you`,
      p_include_team_snapshot:
        milestoneResult.data.snapshot_policy_slug !== "none",
      p_milestone_id: milestoneId,
      p_play_id: playId,
      p_replace_decision: true,
    });

  if (completeResult.error) {
    if (addedPlayPokemonId) {
      await supabase
        .schema("gameplay")
        .from("mainline_play_pokemon")
        .delete()
        .eq("id", addedPlayPokemonId)
        .eq("play_id", playId);
    }

    throw new Error("Unable to record your partner right now.");
  }

  return { addedPlayPokemonId, partnerName };
};

/*
 * Undo for the partner just chosen: the milestone (and its moment) is
 * unrecorded and the partner this choice added leaves the team again.
 */
export const undoPlayPartner = async (
  supabase: ServerSupabaseClient,
  {
    addedPlayPokemonId,
    milestoneId,
    playId,
  }: { addedPlayPokemonId: string | null; milestoneId: number; playId: string },
) => {
  const incompleteResult = await supabase
    .schema("gameplay")
    .rpc("mark_mainline_play_milestone_incomplete", {
      p_expected_affected_milestone_ids: [milestoneId],
      p_milestone_id: milestoneId,
      p_play_id: playId,
    });

  if (incompleteResult.error) {
    throw new Error(
      "Couldn't undo: something recorded since depends on it. Change it from Story.",
    );
  }

  if (addedPlayPokemonId) {
    const deleteResult = await supabase
      .schema("gameplay")
      .from("mainline_play_pokemon")
      .delete()
      .eq("id", addedPlayPokemonId)
      .eq("play_id", playId);

    if (deleteResult.error) {
      throw new Error(
        "Your partner is no longer recorded, but it is still on the team.",
      );
    }
  }
};
