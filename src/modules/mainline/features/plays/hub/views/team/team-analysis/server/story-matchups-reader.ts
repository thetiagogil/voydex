import { readMainlinePlayMilestoneTimelineSnapshots } from "@/modules/mainline/features/plays/shared/server/play-timeline-reader";
import {
  parsePlayTeamSnapshot,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { orderPlayMilestones } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { resolveLatestAttributesByForm } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

import {
  buildStoryLevelCap,
  getStoryChoiceKey,
  type StoryMatchupMilestone,
  type StoryMatchupsRows,
  type StoryOpponentPartyRow,
} from "../data/story-matchups-model";

const readOpponentIds = (milestones: StoryMatchupMilestone[]) => [
  ...new Set(
    milestones.flatMap((milestone) =>
      Array.isArray(milestone.opponent_refs)
        ? milestone.opponent_refs.flatMap((ref) =>
            ref &&
            typeof ref === "object" &&
            !Array.isArray(ref) &&
            typeof ref.opponent_id === "number"
              ? [ref.opponent_id]
              : [],
          )
        : [],
    ),
  ),
];

/*
 * Each opponent's team in each Story battle, with each Pokémon's name and types in
 * the Play's generation, and the choices (such as the starter) the Play has
 * recorded, so a team that depends on one can be picked.
 */
const readOpponentTeams = async (
  supabase: ServerSupabaseClient,
  {
    generationId,
    opponentIds,
    playId,
  }: { generationId: number | null; opponentIds: number[]; playId: string },
): Promise<Pick<StoryMatchupsRows, "chosenChoiceKeys" | "partyRows">> => {
  const [membersResult, decisionsResult] = await Promise.all([
    supabase
      .schema("tracking")
      .from("mainline_opponent_team_members")
      .select(
        "milestone_id, opponent_id, game_id, decision_milestone_id, decision_option_slug, variant_slug, variant_label, slot, form_id, level",
      )
      .in("opponent_id", opponentIds)
      .order("id", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_milestone_decisions")
      .select("milestone_id, decision_option_id")
      .eq("play_id", playId),
  ]);

  if (membersResult.error || decisionsResult.error) {
    throw new Error("Unable to load the Play's Story opponents' teams.");
  }

  const members = membersResult.data ?? [];

  if (!members.length) {
    return { chosenChoiceKeys: new Set(), partyRows: [] };
  }

  const formIds = uniqueNumberIds(members.map((member) => member.form_id));
  const decisionMilestoneIds = uniqueNumberIds(
    members.map((member) => member.decision_milestone_id),
  );
  const [formsResult, attributesResult, optionsResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("id, slug, name")
      .in("id", formIds),
    generationId
      ? supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("*")
          .in("form_id", formIds)
          .lte("generation_start_id", generationId)
      : null,
    decisionMilestoneIds.length
      ? supabase
          .schema("tracking")
          .from("mainline_milestone_decision_options")
          .select("id, milestone_id, slug, label")
          .in("milestone_id", decisionMilestoneIds)
      : null,
  ]);

  if (formsResult.error || attributesResult?.error || optionsResult?.error) {
    throw new Error("Unable to load the Play's Story opponents' Pokémon.");
  }

  const formById = new Map(
    (formsResult.data ?? []).map((form) => [form.id, form]),
  );
  const attributesByForm = resolveLatestAttributesByForm(
    attributesResult?.data ?? [],
  );
  const options = optionsResult?.data ?? [];
  const optionLabelByKey = new Map(
    options.map((option) => [
      getStoryChoiceKey(option.milestone_id, option.slug),
      option.label,
    ]),
  );
  const optionKeyById = new Map(
    options.map((option) => [
      option.id,
      getStoryChoiceKey(option.milestone_id, option.slug),
    ]),
  );

  return {
    chosenChoiceKeys: new Set(
      (decisionsResult.data ?? []).flatMap(
        (decision) => optionKeyById.get(decision.decision_option_id) ?? [],
      ),
    ),
    partyRows: members.flatMap((member): StoryOpponentPartyRow[] => {
      const form = formById.get(member.form_id);

      if (!form) {
        throw new Error("Unable to load a Story opponent's Pokémon.");
      }

      const attributes = attributesByForm.get(member.form_id);
      const choiceKey =
        member.decision_milestone_id !== null &&
        member.decision_option_slug !== null
          ? getStoryChoiceKey(
              member.decision_milestone_id,
              member.decision_option_slug,
            )
          : null;

      return [
        {
          choiceKey,
          formSlug: form.slug,
          gameId: member.game_id,
          level: member.level,
          milestoneId: member.milestone_id,
          name: form.name,
          opponentId: member.opponent_id,
          primaryTypeId: attributes?.primary_type_id ?? null,
          secondaryTypeId: attributes?.secondary_type_id ?? null,
          slot: member.slot,
          variantKey: member.variant_slug,
          variantLabel: choiceKey
            ? (optionLabelByKey.get(choiceKey) ?? null)
            : member.variant_label,
        },
      ];
    }),
  };
};

/*
 * What Story matchups reads: the Play's milestones in Story's order with
 * their opponents, which game each opponent belongs to (version-only
 * leaders), their teams, and the team saved with each battle when it was
 * recorded (left out with `teamsThen: false`, for Level caps).
 */
export const readMainlinePlayStoryMatchupRows = async (
  supabase: ServerSupabaseClient,
  playId: string,
  generationId: number | null,
  { teamsThen = true }: { teamsThen?: boolean } = {},
): Promise<StoryMatchupsRows> => {
  const [categoriesResult, milestonesResult, snapshotEvents] =
    await Promise.all([
      supabase
        .schema("views")
        .from("mainline_play_milestone_category_summary")
        .select("category_id, category_sort_order, content_scope_sort_order")
        .eq("play_id", playId),
      supabase
        .schema("views")
        .from("mainline_play_milestone_detail")
        .select(
          "badge_refs, category_id, category_name, completed_at, description, is_completed, milestone_id, milestone_name, opponent_refs, sort_order",
        )
        .eq("play_id", playId),
      teamsThen
        ? readMainlinePlayMilestoneTimelineSnapshots(supabase, playId)
        : [],
    ]);

  if (categoriesResult.error || milestonesResult.error) {
    throw new Error("Unable to load the Play's Story battles.");
  }

  const milestones = milestonesResult.data ?? [];
  const opponentIds = readOpponentIds(milestones);
  const [opponentsResult, teams] = opponentIds.length
    ? await Promise.all([
        supabase
          .schema("tracking")
          .from("mainline_opponents")
          .select("id, game_id")
          .in("id", opponentIds),
        readOpponentTeams(supabase, { generationId, opponentIds, playId }),
      ])
    : [null, { chosenChoiceKeys: new Set<string>(), partyRows: [] }];

  if (opponentsResult?.error) {
    throw new Error("Unable to load the Play's Story opponents.");
  }

  const snapshotsByMilestoneId = new Map<number, PlayTeamSnapshotMember[]>();

  for (const event of snapshotEvents) {
    if (
      event.milestone_id !== null &&
      !snapshotsByMilestoneId.has(event.milestone_id)
    ) {
      snapshotsByMilestoneId.set(
        event.milestone_id,
        parsePlayTeamSnapshot(event.team_snapshots),
      );
    }
  }

  return {
    ...teams,
    opponentGameIdById: new Map(
      (opponentsResult?.data ?? []).map((opponent) => [
        opponent.id,
        opponent.game_id,
      ]),
    ),
    orderedMilestones: orderPlayMilestones({
      categories: categoriesResult.data ?? [],
      milestones,
    }),
    snapshotsByMilestoneId,
  };
};

/* Level caps' cap now, from the Play's progress through Story. */
export const readMainlinePlayLevelCap = async (
  supabase: ServerSupabaseClient,
  play: Pick<MainlinePlaySummary, "game_id" | "generation_id"> & {
    play_id: string;
  },
) =>
  buildStoryLevelCap({
    playGameId: play.game_id,
    rows: await readMainlinePlayStoryMatchupRows(
      supabase,
      play.play_id,
      play.generation_id,
      { teamsThen: false },
    ),
  });
