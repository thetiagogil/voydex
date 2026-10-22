import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/reference/reference-rows";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * The build choices Mainline's editors share: a Play's roster editor and the
 * Team Planner's slot sheet. Each takes ids its caller already resolved
 * through the exact game (or version group) and its capability profile.
 */

export type BuildOption = { id: number; name: string };

/* A held item with the category the list groups it under, in the database's own order. */
export type BuildItemOption = BuildOption & {
  category: string;
  categoryOrder: number;
};

export type BuildMoveOption = BuildOption & {
  damageClass: string | null;
  /* What the move does, as of the generation. */
  effect: string | null;
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

type ItemAvailabilityRow = { game_id: number | null; item_id: number | null };

/*
 * The items the game has: a row with no game is for every game of its version
 * group, one with a game only for that game. With several games (a version
 * group's), an item any of them has counts.
 */
export const getAvailableItemIds = (
  rows: readonly ItemAvailabilityRow[],
  gameIds: readonly number[],
): number[] => [
  ...new Set(
    rows.flatMap((row) =>
      row.item_id !== null &&
      (row.game_id === null || gameIds.includes(row.game_id))
        ? [row.item_id]
        : [],
    ),
  ),
];

/*
 * The items of one kind (`category`: holdable items, Poké Balls) in this
 * exact game, or a version group's games: only what that game's own item
 * availability lists, never everything since the item's generation (Sword has
 * no Gen II Berry and no Mega Stones). Each comes with its primary category,
 * ordered by category then name.
 */
const readGameItemOptions = async (
  supabase: ServerSupabaseClient,
  {
    category: categorySlug,
    gameIds,
    versionGroupId,
  }: {
    category: "held_item" | "poke_ball";
    gameIds: number[];
    versionGroupId: number;
  },
): Promise<BuildItemOption[]> => {
  const [availabilityRows, categoriesResult] = await Promise.all([
    loadPagedReferenceRows<ItemAvailabilityRow>(
      (from, to) =>
        supabase
          .schema("views")
          .from("reference_resolved_item_availability")
          .select("item_id, game_id")
          .eq("target_version_group_id", versionGroupId)
          .order("id", { ascending: true })
          .range(from, to),
      "Unable to load items.",
    ),
    supabase
      .schema("reference")
      .from("item_categories")
      .select("id, slug, name, sort_order"),
  ]);

  if (categoriesResult.error) {
    throw new Error("Unable to load items.");
  }

  const categories = categoriesResult.data ?? [];
  const kind = categories.find((category) => category.slug === categorySlug);
  const availableIds = getAvailableItemIds(availabilityRows, gameIds);

  if (!kind || !availableIds.length) {
    return [];
  }

  const memberRows = await loadChunkedReferenceRows<{ item_id: number }>(
    availableIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("item_category_memberships")
        .select("item_id")
        .eq("category_id", kind.id)
        .in("item_id", ids)
        .order("item_id", { ascending: true })
        .range(from, to),
    "Unable to load items.",
  );
  const items = await loadChunkedReferenceRows<{
    id: number;
    name: string;
    primary_category_id: number;
  }>(
    memberRows.map((row) => row.item_id),
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("items")
        .select("id, name, primary_category_id")
        .in("id", ids)
        .order("id", { ascending: true })
        .range(from, to),
    "Unable to load items.",
  );
  const categoryById = new Map(
    categories.map((category) => [category.id, category]),
  );

  return items
    .map((item) => {
      const category = categoryById.get(item.primary_category_id);

      return {
        category: category?.name ?? "Other",
        categoryOrder: category?.sort_order ?? Number.MAX_SAFE_INTEGER,
        id: item.id,
        name: item.name,
      };
    })
    .toSorted(
      (left, right) =>
        left.categoryOrder - right.categoryOrder ||
        left.name.localeCompare(right.name),
    );
};

/* What a Pokémon can hold in the game(s). */
export const readHeldItemOptions = (
  supabase: ServerSupabaseClient,
  games: { gameIds: number[]; versionGroupId: number },
) => readGameItemOptions(supabase, { ...games, category: "held_item" });

/* The Poké Balls the game(s) have, for what a Pokémon was caught in. */
export const readPokeBallOptions = (
  supabase: ServerSupabaseClient,
  games: { gameIds: number[]; versionGroupId: number },
) => readGameItemOptions(supabase, { ...games, category: "poke_ball" });

const newestFirst = <T extends { generation_start_id: number }>(rows: T[]) =>
  rows.toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  );

/* The given moves with their type, category and effect as of this generation, by name. */
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
      .select(
        "move_id, generation_start_id, type_id, damage_class, effect_summary",
      )
      .in("move_id", moveIds)
      .lte("generation_start_id", generationId),
  ]);

  if (movesResult.error || attributesResult.error) {
    throw new Error("Unable to load its moves.");
  }

  const attributeByMoveId = new Map<
    number,
    { damage_class: string; effect_summary: string | null; type_id: number }
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
        effect: attributes?.effect_summary ?? null,
        id: move.id,
        name: move.name,
        typeName: type?.name ?? null,
        typeSlug: type?.slug ?? null,
      };
    })
    .toSorted((left, right) => left.name.localeCompare(right.name));
};
