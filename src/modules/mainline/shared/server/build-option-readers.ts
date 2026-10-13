import { loadPagedReferenceRows } from "@/modules/reference/reference-rows";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The build choices Mainline's editors share: a Play's roster editor and the
 * Team Planner's slot sheet. Each takes ids its caller already resolved
 * through the exact game (or version group) and its capability profile.
 */

export type BuildOption = { id: number; name: string };

export type BuildMoveOption = BuildOption & {
  damageClass: string | null;
  typeName: string | null;
  typeSlug: string | null;
};

type LearnsetRow = {
  game_id: number | null;
  move_id: number;
  scope_operation: string;
};

/* A form's learnset rows in one version group, every game's. */
export const readFormLearnsetRows = (
  supabase: ServerSupabaseClient,
  { formId, versionGroupId }: { formId: number; versionGroupId: number },
) =>
  loadPagedReferenceRows<LearnsetRow>(
    (from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_learnsets")
        .select("move_id, game_id, scope_operation")
        .eq("form_id", formId)
        .eq("version_group_id", versionGroupId)
        .order("id", { ascending: true })
        .range(from, to),
    "Unable to load its moves.",
  );

/*
 * The moves a learnset lets it know in every one of the given games: a
 * group-wide row counts for all of them, a game's own row only for that
 * game, and a removal takes the move out.
 */
export const getLearnableMoveIds = (
  rows: readonly LearnsetRow[],
  gameIds: readonly number[],
): number[] => {
  const removedMoveIds = new Set(
    rows
      .filter((row) => row.scope_operation === "remove")
      .map((row) => row.move_id),
  );
  const gamesByMoveId = new Map<number, Set<number | null>>();

  for (const row of rows) {
    if (row.scope_operation === "remove" || removedMoveIds.has(row.move_id)) {
      continue;
    }

    const games = gamesByMoveId.get(row.move_id) ?? new Set();
    games.add(row.game_id);
    gamesByMoveId.set(row.move_id, games);
  }

  return [...gamesByMoveId].flatMap(([moveId, games]) =>
    games.has(null) || gameIds.every((gameId) => games.has(gameId))
      ? [moveId]
      : [],
  );
};

/* Every item a Pokémon could hold in this generation, by name. */
export const readHeldItemOptions = (
  supabase: ServerSupabaseClient,
  generationId: number,
) =>
  loadPagedReferenceRows<BuildOption>(
    (from, to) =>
      supabase
        .schema("reference")
        .from("items")
        .select("id, name")
        .lte("introduced_generation_id", generationId)
        .order("name", { ascending: true })
        .range(from, to),
    "Unable to load held items.",
  );

const newestFirst = <T extends { generation_start_id: number }>(rows: T[]) =>
  rows.toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  );

/* The given moves with their type and category as of this generation, by name. */
export const readMoveOptions = async (
  supabase: ServerSupabaseClient,
  { generationId, moveIds }: { generationId: number; moveIds: number[] },
): Promise<BuildMoveOption[]> => {
  if (!moveIds.length) {
    return [];
  }

  const [movesResult, attributesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("moves")
      .select("id, name")
      .in("id", moveIds),
    supabase
      .schema("reference")
      .from("move_attributes")
      .select("move_id, generation_start_id, type_id, damage_class")
      .in("move_id", moveIds)
      .lte("generation_start_id", generationId),
  ]);

  if (movesResult.error || attributesResult.error) {
    throw new Error("Unable to load its moves.");
  }

  const attributeByMoveId = new Map<
    number,
    { damage_class: string; type_id: number }
  >();

  for (const row of newestFirst(attributesResult.data ?? [])) {
    if (!attributeByMoveId.has(row.move_id)) {
      attributeByMoveId.set(row.move_id, row);
    }
  }

  const typeIds = [
    ...new Set([...attributeByMoveId.values()].map((row) => row.type_id)),
  ];
  const typesResult = typeIds.length
    ? await supabase
        .schema("reference")
        .from("types")
        .select("id, name, slug")
        .in("id", typeIds)
    : null;

  if (typesResult?.error) {
    throw new Error("Unable to load move types.");
  }

  const typeById = new Map(
    (typesResult?.data ?? []).map((type) => [type.id, type]),
  );

  return (movesResult.data ?? [])
    .map((move) => {
      const attributes = attributeByMoveId.get(move.id);
      const type = attributes ? typeById.get(attributes.type_id) : undefined;

      return {
        damageClass: attributes?.damage_class ?? null,
        id: move.id,
        name: move.name,
        typeName: type?.name ?? null,
        typeSlug: type?.slug ?? null,
      };
    })
    .toSorted((left, right) => left.name.localeCompare(right.name));
};
