import { readPlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/server/plan-member-check-reader";
import {
  clearUnsupportedBuildFields,
  getPlanBuildFields,
} from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import { assertPlanMembersFitVersionGroup } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import { toPlannedMoveRows } from "@/modules/mainline/features/plans/planner/utils/plan-move-slots";
import {
  PlanSaveInputError,
  type PlanSaveInput,
} from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { PlanMember } from "@/modules/mainline/features/plans/types";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { Database } from "@/shared/types/database.types";

type PlanningTables = Database["planning"]["Tables"];
type PlanMemberRow = PlanningTables["mainline_team_plan_members"]["Row"];
type PlanMemberMoveRow = Pick<
  PlanningTables["mainline_team_plan_member_moves"]["Row"],
  "move_id" | "slot" | "team_plan_member_id"
>;
type PlanScopeRow =
  PlanningTables["mainline_team_plan_optional_content_scopes"]["Row"];

const activeStatusSlug = "active";
const saveFailure = "Unable to save the Plan right now.";
/* The save failed and the previous version couldn't be fully put back. */
const restoreFailure =
  "The Plan couldn't be saved, and its last saved version may be incomplete. Reload to see what's saved.";

/*
 * The version group a Plan is for: its first game (a Plan is stored for one
 * game, so "either version" keeps the group's first), every game in it, its
 * generation and expansions, read before anything is written.
 * TODO(v3-data): a version preference ("either", Sword, Shield) on
 * planning.mainline_team_plans; until then a Plan stores its group's first game.
 */
const readPlanGame = async (
  supabase: ServerSupabaseClient,
  versionGroupSlug: string,
) => {
  const groupResult = await supabase
    .schema("reference")
    .from("version_groups")
    .select("id, generation_id, name, parent_version_group_id")
    .eq("slug", versionGroupSlug)
    .maybeSingle();

  if (groupResult.error) {
    throw new Error("Unable to read the Plan's game.");
  }

  if (!groupResult.data || groupResult.data.parent_version_group_id !== null) {
    throw new PlanSaveInputError("Pick a game for the Plan.");
  }

  const group = groupResult.data;
  const [gamesResult, expansionsResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("id")
      .eq("version_group_id", group.id)
      .order("sort_order"),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("id")
      .eq("parent_version_group_id", group.id),
  ]);

  const gameIds = (gamesResult.data ?? []).map((game) => game.id);

  if (gamesResult.error || expansionsResult.error || !gameIds.length) {
    throw new Error("Unable to read the Plan's game.");
  }

  return {
    expansionIds: (expansionsResult.data ?? []).map((child) => child.id),
    gameId: gameIds[0],
    gameIds,
    generationId: group.generation_id,
    name: group.name,
    versionGroupId: group.id,
  };
};

type PlanGame = Awaited<ReturnType<typeof readPlanGame>>;

/*
 * The members as the version group allows them: choices the group doesn't
 * have (resolved through its capability profile) are cleared, then any
 * Pokémon, form, move, ability, held item or nature it can't have is
 * rejected with the Pokémon's name.
 */
const fitMembersToVersionGroup = async (
  supabase: ServerSupabaseClient,
  game: PlanGame,
  members: PlanMember[],
): Promise<PlanMember[]> => {
  if (!members.length) {
    return members;
  }

  const fields = getPlanBuildFields(
    resolveVersionGroupMechanics({
      gameIds: game.gameIds,
      generationId: game.generationId,
      versionGroupId: game.versionGroupId,
    }),
  );
  const fitted = members.map((member) =>
    clearUnsupportedBuildFields(member, fields),
  );
  const rows = await readPlanMemberCheckRows(supabase, {
    familyVersionGroupIds: [game.versionGroupId, ...game.expansionIds],
    gameIds: game.gameIds,
    generationId: game.generationId,
    members: fitted,
    versionGroupId: game.versionGroupId,
    versionGroupName: game.name,
  });

  assertPlanMembersFitVersionGroup(fitted, rows);

  return fitted;
};

/* Everything a save rewrites on a saved Plan, so a failure can put it back. */
type PlanSnapshot = {
  members: PlanMemberRow[];
  moves: PlanMemberMoveRow[];
  plan: { game_id: number; name: string; version_group_id: number };
  scopes: PlanScopeRow[];
};

const readPlanSnapshot = async (
  supabase: ServerSupabaseClient,
  planId: string,
  userId: string,
): Promise<PlanSnapshot | null> => {
  const planning = supabase.schema("planning");
  const planResult = await planning
    .from("mainline_team_plans")
    .select("game_id, name, version_group_id")
    .eq("id", planId)
    .eq("user_id", userId)
    .maybeSingle();

  if (planResult.error) {
    throw new Error(saveFailure);
  }

  if (!planResult.data) {
    return null;
  }

  const [membersResult, movesResult, scopesResult] = await Promise.all([
    planning
      .from("mainline_team_plan_members")
      .select("*")
      .eq("team_plan_id", planId),
    planning
      .from("mainline_team_plan_member_moves")
      .select(
        "move_id, slot, team_plan_member_id, mainline_team_plan_members!inner(team_plan_id)",
      )
      .eq("mainline_team_plan_members.team_plan_id", planId),
    planning
      .from("mainline_team_plan_optional_content_scopes")
      .select("*")
      .eq("team_plan_id", planId),
  ]);

  if (membersResult.error || movesResult.error || scopesResult.error) {
    throw new Error(saveFailure);
  }

  return {
    members: membersResult.data ?? [],
    moves: (movesResult.data ?? []).map((move) => ({
      move_id: move.move_id,
      slot: move.slot,
      team_plan_member_id: move.team_plan_member_id,
    })),
    plan: planResult.data,
    scopes: scopesResult.data ?? [],
  };
};

/*
 * Puts a saved Plan back as it was before a failed save: its expansions are
 * cleared first so the game can change back, then its row, Pokémon, planned
 * moves and expansions are restored. Every step is checked; the first
 * failure is logged and reported.
 */
const restorePlanSnapshot = async (
  supabase: ServerSupabaseClient,
  planId: string,
  userId: string,
  snapshot: PlanSnapshot,
) => {
  const planning = supabase.schema("planning");
  const steps: [string, () => PromiseLike<{ error: unknown }>][] = [
    [
      "clear expansions",
      () =>
        planning
          .from("mainline_team_plan_optional_content_scopes")
          .delete()
          .eq("team_plan_id", planId),
    ],
    [
      "clear Pokémon",
      () =>
        planning
          .from("mainline_team_plan_members")
          .delete()
          .eq("team_plan_id", planId),
    ],
    [
      "restore the Plan",
      () =>
        planning
          .from("mainline_team_plans")
          .update(snapshot.plan)
          .eq("id", planId)
          .eq("user_id", userId),
    ],
    [
      "restore Pokémon",
      () =>
        snapshot.members.length
          ? planning.from("mainline_team_plan_members").insert(snapshot.members)
          : Promise.resolve({ error: null }),
    ],
    [
      "restore moves",
      () =>
        snapshot.moves.length
          ? planning
              .from("mainline_team_plan_member_moves")
              .insert(snapshot.moves)
          : Promise.resolve({ error: null }),
    ],
    [
      "restore expansions",
      () =>
        snapshot.scopes.length
          ? planning
              .from("mainline_team_plan_optional_content_scopes")
              .insert(snapshot.scopes)
          : Promise.resolve({ error: null }),
    ],
  ];

  for (const [label, run] of steps) {
    const result = await run();

    if (result.error) {
      console.error(`Plan ${planId}: unable to ${label} after a failed save.`);
      return false;
    }
  }

  return true;
};

/* Deletes a Plan this save created; its Pokémon, moves and expansions cascade. */
const deleteCreatedPlan = async (
  supabase: ServerSupabaseClient,
  planId: string,
  userId: string,
) => {
  const deleteResult = await supabase
    .schema("planning")
    .from("mainline_team_plans")
    .delete()
    .eq("id", planId)
    .eq("user_id", userId);

  if (deleteResult.error) {
    console.error(`Plan ${planId}: unable to remove it after a failed save.`);
    return false;
  }

  return true;
};

/*
 * Rewrites a Plan's Pokémon, planned moves and expansions after its row is
 * written. Each failure throws; `savePlan` undoes what was written.
 */
const writePlanContents = async (
  supabase: ServerSupabaseClient,
  {
    expansionIds,
    gameId,
    members,
    planId,
    replacesMembers,
  }: {
    expansionIds: number[];
    gameId: number;
    members: PlanMember[];
    planId: string;
    replacesMembers: boolean;
  },
) => {
  const planning = supabase.schema("planning");

  if (replacesMembers) {
    const deleteResult = await planning
      .from("mainline_team_plan_members")
      .delete()
      .eq("team_plan_id", planId);

    if (deleteResult.error) {
      throw new Error("Unable to save the Plan's Pokémon.");
    }
  }

  const insertResult = members.length
    ? await planning
        .from("mainline_team_plan_members")
        .insert(
          members.map((member) => ({
            ability_id: member.abilityId,
            gender: member.gender,
            held_item_id: member.heldItemId,
            nature_id: member.natureId,
            notes: member.notes,
            role_label: member.role,
            slot: member.slot,
            target_form_id: member.formId,
            target_species_id: member.speciesId,
            team_plan_id: planId,
          })),
        )
        .select("id, slot")
    : { data: [], error: null };

  if (insertResult.error) {
    throw new PlanSaveInputError(
      "One of these Pokémon can't be saved in this Plan. Check its build.",
    );
  }

  const newIdBySlot = new Map(
    (insertResult.data ?? []).map((row) => [row.slot, row.id]),
  );
  const plannedMoves = members.flatMap((member) => {
    const newId = newIdBySlot.get(member.slot);

    return newId
      ? toPlannedMoveRows(member.moveIds).map((move) => ({
          move_id: move.moveId,
          slot: move.slot,
          team_plan_member_id: newId,
        }))
      : [];
  });

  if (plannedMoves.length) {
    const movesResult = await planning
      .from("mainline_team_plan_member_moves")
      .insert(plannedMoves);

    if (movesResult.error) {
      throw new PlanSaveInputError(
        "One of the planned moves can't be saved. Check its moves.",
      );
    }
  }

  if (expansionIds.length) {
    const scopesResult = await planning
      .from("mainline_team_plan_optional_content_scopes")
      .insert(
        expansionIds.map((versionGroupId) => ({
          game_id: gameId,
          team_plan_id: planId,
          version_group_id: versionGroupId,
        })),
      );

    if (scopesResult.error) {
      throw new Error("Unable to save the Plan's expansions.");
    }
  }
};

const toSaveError = (error: unknown) =>
  error instanceof PlanSaveInputError ? error : new Error(saveFailure);

const createPlan = async (
  supabase: ServerSupabaseClient,
  {
    expansionIds,
    game,
    input,
    members,
    userId,
  }: {
    expansionIds: number[];
    game: PlanGame;
    input: PlanSaveInput;
    members: PlanMember[];
    userId: string;
  },
) => {
  const statusResult = await supabase
    .schema("planning")
    .from("mainline_team_plan_statuses")
    .select("id")
    .eq("slug", activeStatusSlug)
    .single();

  if (statusResult.error) {
    throw new Error(saveFailure);
  }

  const planResult = await supabase
    .schema("planning")
    .from("mainline_team_plans")
    .insert({
      game_id: game.gameId,
      name: input.name,
      status_id: statusResult.data.id,
      user_id: userId,
      version_group_id: game.versionGroupId,
    })
    .select("id")
    .single();

  if (planResult.error) {
    throw new Error(saveFailure);
  }

  const planId = planResult.data.id;

  try {
    await writePlanContents(supabase, {
      expansionIds,
      gameId: game.gameId,
      members,
      planId,
      replacesMembers: false,
    });
  } catch (error) {
    /* No half-saved Plan is left behind in My Plans. */
    const removed = await deleteCreatedPlan(supabase, planId, userId);

    throw removed ? toSaveError(error) : new Error(saveFailure);
  }

  return planId;
};

const updatePlan = async (
  supabase: ServerSupabaseClient,
  {
    expansionIds,
    game,
    input,
    members,
    planId,
    userId,
  }: {
    expansionIds: number[];
    game: PlanGame;
    input: PlanSaveInput;
    members: PlanMember[];
    planId: string;
    userId: string;
  },
) => {
  const snapshot = await readPlanSnapshot(supabase, planId, userId);

  if (!snapshot) {
    throw new PlanSaveInputError("That Plan isn't one of yours.");
  }

  const keepsGame = snapshot.plan.version_group_id === game.versionGroupId;

  if (!keepsGame) {
    const linksResult = await supabase
      .schema("planning")
      .from("mainline_play_plan_links")
      .select("id", { count: "exact", head: true })
      .eq("team_plan_id", planId);

    if (linksResult.error) {
      throw new Error(saveFailure);
    }

    if (linksResult.count) {
      throw new PlanSaveInputError(
        "A Play follows this Plan, so its game stays the same.",
      );
    }
  }

  const planGameId = keepsGame ? snapshot.plan.game_id : game.gameId;

  try {
    /* Expansions are rewritten below; clearing them first lets the game change. */
    const clearScopes = await supabase
      .schema("planning")
      .from("mainline_team_plan_optional_content_scopes")
      .delete()
      .eq("team_plan_id", planId);

    if (clearScopes.error) {
      throw new Error("Unable to save the Plan's expansions.");
    }

    const updateResult = await supabase
      .schema("planning")
      .from("mainline_team_plans")
      .update({
        game_id: planGameId,
        name: input.name,
        version_group_id: game.versionGroupId,
      })
      .eq("id", planId)
      .eq("user_id", userId);

    if (updateResult.error) {
      throw new Error(saveFailure);
    }

    await writePlanContents(supabase, {
      expansionIds,
      gameId: planGameId,
      members,
      planId,
      replacesMembers: snapshot.members.length > 0,
    });
  } catch (error) {
    const restored = await restorePlanSnapshot(
      supabase,
      planId,
      userId,
      snapshot,
    );

    throw restored
      ? toSaveError(error)
      : new PlanSaveInputError(restoreFailure);
  }
};

/*
 * Saves a Plan: a new one, or a saved one's name, game, Pokémon and
 * expansions, after checking every Pokémon fits the version group.
 * TODO(v3-data): a reviewed `save_mainline_team_plan` RPC that writes the
 * Plan row, members, planned moves and expansions in one transaction. Until
 * it exists the writes run in order and are compensated: a failed new Plan
 * is deleted, a failed edit puts the previous row, Pokémon, moves and
 * expansions back.
 */
export const savePlan = async ({
  input,
  supabase,
  userId,
}: {
  input: PlanSaveInput;
  supabase: ServerSupabaseClient;
  userId: string;
}): Promise<{ created: boolean; planId: string }> => {
  const game = await readPlanGame(supabase, input.versionGroupSlug);
  const expansionIds = input.expansionVersionGroupIds.filter((id) =>
    game.expansionIds.includes(id),
  );
  const members = await fitMembersToVersionGroup(supabase, game, input.members);

  if (input.planId === null) {
    const planId = await createPlan(supabase, {
      expansionIds,
      game,
      input,
      members,
      userId,
    });

    return { created: true, planId };
  }

  await updatePlan(supabase, {
    expansionIds,
    game,
    input,
    members,
    planId: input.planId,
    userId,
  });

  return { created: false, planId: input.planId };
};
