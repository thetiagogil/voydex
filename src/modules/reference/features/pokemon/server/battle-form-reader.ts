import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  gameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import {
  emptyBattleReference,
  hasBattleFormMechanic,
  isBattleFormMechanic,
  type BattleFormLink,
  type BattleFormReference,
  type BattleMove,
  type BattleReference,
  type BattleStats,
  type BattleType,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { ReferenceRow } from "@/shared/types/database-helpers";
import { byId, uniqueNumberIds } from "@/shared/utils/collections";

/*
 * The forms a Pokémon only takes in battle (Megas, Gigantamax, Primals and
 * the like), by id. A Play or Plan member is never stored in one, so pickers
 * leave them out; a failed read throws.
 */
export const readBattleFormIds = async (
  supabase: ServerSupabaseClient,
): Promise<ReadonlySet<number>> => {
  const result = await supabase
    .schema("reference")
    .from("pokemon_form_rules")
    .select("form_id")
    .eq("is_team_selectable", false);

  if (result.error) {
    throw new Error("Unable to load battle forms.");
  }

  return new Set((result.data ?? []).map((rule) => rule.form_id));
};

/*
 * Where each item can be had, by the version groups whose resolved
 * availability lists it, with each group's parent so an expansion's item
 * counts for its base game.
 */
const readUnlockItemVersionGroups = async (
  supabase: ServerSupabaseClient,
  itemIds: number[],
): Promise<{
  data: {
    itemId: number;
    parentVersionGroupId: number | null;
    versionGroupId: number;
  }[];
  error: boolean;
}> => {
  if (!itemIds.length) {
    return { data: [], error: false };
  }

  const [availabilityResult, versionGroupsResult] = await Promise.all([
    supabase
      .schema("views")
      .from("reference_resolved_item_availability")
      .select("item_id, target_version_group_id")
      .in("item_id", uniqueNumberIds(itemIds)),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("id, parent_version_group_id"),
  ]);

  if (availabilityResult.error || versionGroupsResult.error) {
    return { data: [], error: true };
  }

  const parentById = new Map(
    (versionGroupsResult.data ?? []).map((group) => [
      group.id,
      group.parent_version_group_id,
    ]),
  );

  return {
    data: (availabilityResult.data ?? []).flatMap((row) =>
      row.item_id !== null && row.target_version_group_id !== null
        ? [
            {
              itemId: row.item_id,
              parentVersionGroupId:
                parentById.get(row.target_version_group_id) ?? null,
              versionGroupId: row.target_version_group_id,
            },
          ]
        : [],
    ),
    error: false,
  };
};

/*
 * Every battle form of a species, for an entry's form switch: the stored
 * forms that reach it, its mechanic (null for a change mid-battle, never
 * offered), and where a held item that reaches it can be had.
 */
export const readSpeciesBattleFormLinks = async (
  supabase: ServerSupabaseClient,
  speciesId: number,
): Promise<BattleFormLink[]> => {
  const [rulesResult, basesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_form_rules")
      .select("form_id, battle_mechanic, pokemon_forms!inner(species_id)")
      .eq("pokemon_forms.species_id", speciesId)
      .eq("is_team_selectable", false),
    supabase
      .schema("reference")
      .from("pokemon_battle_form_bases")
      .select("battle_form_id, base_form_id")
      .eq("species_id", speciesId),
  ]);

  if (rulesResult.error || basesResult.error) {
    throw new Error("Unable to load battle forms.");
  }

  const rules = rulesResult.data ?? [];

  if (!rules.length) {
    return [];
  }

  const requirementsResult = await supabase
    .schema("reference")
    .from("pokemon_form_item_requirements")
    .select("form_id, item_id")
    .in(
      "form_id",
      rules.map((rule) => rule.form_id),
    )
    .in("requirement_kind", ["required_held_item", "alternative_held_item"]);

  if (requirementsResult.error) {
    throw new Error("Unable to load battle forms.");
  }

  const requirements = requirementsResult.data ?? [];
  const itemAvailability = await readUnlockItemVersionGroups(
    supabase,
    requirements.map((row) => row.item_id),
  );

  if (itemAvailability.error) {
    throw new Error("Unable to load battle forms.");
  }

  return rules.map((rule) => {
    const itemIds = requirements
      .filter((row) => row.form_id === rule.form_id)
      .map((row) => row.item_id);

    return {
      baseFormIds: (basesResult.data ?? [])
        .filter((base) => base.battle_form_id === rule.form_id)
        .map((base) => base.base_form_id),
      formId: rule.form_id,
      mechanic: isBattleFormMechanic(rule.battle_mechanic)
        ? rule.battle_mechanic
        : null,
      unlockItemVersionGroupIds: itemIds.length
        ? uniqueNumberIds(
            itemAvailability.data
              .filter((row) => itemIds.includes(row.itemId))
              .map((row) => row.versionGroupId),
          )
        : null,
    };
  });
};

/*
 * Whether a stored form reaches a Gigantamax form, so it can hold the
 * Gigantamax Factor (Low Key Toxtricity yes, Pidgey no).
 */
export const readReachesGigantamax = async (
  supabase: ServerSupabaseClient,
  formId: number,
): Promise<boolean> => {
  const basesResult = await supabase
    .schema("reference")
    .from("pokemon_battle_form_bases")
    .select("battle_form_id")
    .eq("base_form_id", formId);

  if (basesResult.error) {
    throw new Error("Unable to load battle forms.");
  }

  const battleFormIds = (basesResult.data ?? []).map(
    (base) => base.battle_form_id,
  );

  if (!battleFormIds.length) {
    return false;
  }

  const rulesResult = await supabase
    .schema("reference")
    .from("pokemon_form_rules")
    .select("form_id")
    .in("form_id", battleFormIds)
    .eq("battle_mechanic", "dynamax");

  if (rulesResult.error) {
    throw new Error("Unable to load battle forms.");
  }

  return Boolean(rulesResult.data?.length);
};

/*
 * The one battle form that needs a move rather than an item: Rayquaza Mega
 * Evolves when it knows Dragon Ascent.
 */
const requiredMoveSlugByFormSlug: Record<string, string> = {
  "mega-rayquaza": "dragon-ascent",
};

const maxMoveKindId = 3;

type AttributeRow = Pick<
  ReferenceRow<"pokemon_attributes">,
  | "base_attack"
  | "base_defense"
  | "base_hp"
  | "base_special_attack"
  | "base_special_defense"
  | "base_speed"
  | "form_id"
  | "generation_start_id"
  | "primary_ability_id"
  | "primary_type_id"
  | "secondary_type_id"
>;

/* Rows come newest first, so the first one per id is this game's. */
const firstById = <Row>(rows: Row[], getId: (row: Row) => number) => {
  const rowsById = new Map<number, Row>();

  for (const row of rows) {
    if (!rowsById.has(getId(row))) {
      rowsById.set(getId(row), row);
    }
  }

  return rowsById;
};

const toStats = (row: AttributeRow): BattleStats => ({
  attack: row.base_attack,
  defense: row.base_defense,
  hp: row.base_hp,
  specialAttack: row.base_special_attack,
  specialDefense: row.base_special_defense,
  speed: row.base_speed,
});

const appliesHere = (
  row: Pick<
    ReferenceRow<"pokemon_form_item_requirements">,
    | "generation_end_id"
    | "generation_start_id"
    | "version_group_end_id"
    | "version_group_start_id"
  >,
  generationId: number,
  versionGroupId: number,
) =>
  row.generation_start_id <= generationId &&
  (row.generation_end_id === null || row.generation_end_id >= generationId) &&
  (row.version_group_start_id === null ||
    row.version_group_start_id <= versionGroupId) &&
  (row.version_group_end_id === null ||
    row.version_group_end_id >= versionGroupId);

/*
 * What a team's battle side needs in one game: the battle forms its species
 * reach (with types, stats, ability and the items that unlock them), the
 * stored forms' stats, and, where the game has them, the Z-Crystal and Max
 * Move maps. A game without battle mechanics reads nothing.
 */
export const readBattleReference = async (
  supabase: ServerSupabaseClient,
  {
    formIds,
    generationId,
    mechanics,
    speciesIds,
    versionGroupId,
  }: {
    /* The members' stored forms. */
    formIds: number[];
    generationId: number | null;
    mechanics: GameMechanicsProfile;
    speciesIds: number[];
    versionGroupId: number | null;
  },
): Promise<BattleReference> => {
  const hasZMoves = supportsGameMechanic(mechanics, gameMechanics.zMoves);
  const hasDynamax = supportsGameMechanic(mechanics, gameMechanics.dynamax);
  const formMechanics = [
    "dynamax",
    "mega-evolution",
    "primal-reversion",
    "ultra-burst",
  ].filter(
    (mechanic) =>
      isBattleFormMechanic(mechanic) &&
      hasBattleFormMechanic(mechanics, mechanic),
  );

  if (
    !generationId ||
    !versionGroupId ||
    !speciesIds.length ||
    (!formMechanics.length && !hasZMoves)
  ) {
    return emptyBattleReference;
  }

  const formsResult = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("id, name, slug, species_id")
    .in("species_id", speciesIds);

  if (formsResult.error) {
    throw new Error("Unable to load battle forms.");
  }

  const speciesForms = formsResult.data ?? [];
  const rulesResult = formMechanics.length
    ? await supabase
        .schema("reference")
        .from("pokemon_form_rules")
        .select("form_id, battle_mechanic")
        .in(
          "form_id",
          speciesForms.map((form) => form.id),
        )
        .in("battle_mechanic", formMechanics)
    : null;

  if (rulesResult?.error) {
    throw new Error("Unable to load battle forms.");
  }

  const rules = rulesResult?.data ?? [];
  const battleFormIds = rules.map((rule) => rule.form_id);
  const ids = (values: number[]) => (values.length ? values : [-1]);

  const [
    basesResult,
    attributesResult,
    requirementsResult,
    gMaxResult,
    zSourcesResult,
    maxMovesResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_battle_form_bases")
      .select("battle_form_id, base_form_id")
      .in("battle_form_id", ids(battleFormIds)),
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select(
        "form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed",
      )
      .in("form_id", ids([...battleFormIds, ...formIds]))
      .lte("generation_start_id", generationId)
      .order("generation_start_id", { ascending: false }),
    supabase
      .schema("reference")
      .from("pokemon_form_item_requirements")
      .select(
        "form_id, item_id, requirement_kind, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id",
      )
      .in("form_id", ids(battleFormIds))
      .in("requirement_kind", ["required_held_item", "alternative_held_item"]),
    supabase
      .schema("reference")
      .from("g_max_move_sources")
      .select("form_id, g_max_move_id")
      .in("form_id", ids(battleFormIds)),
    hasZMoves
      ? supabase
          .schema("reference")
          .from("z_move_sources")
          .select(
            "z_move_id, item_id, base_type_id, species_id, form_id, base_move_id",
          )
      : null,
    hasDynamax
      ? supabase
          .schema("reference")
          .from("moves")
          .select("id, name, slug")
          .eq("move_kind_id", maxMoveKindId)
      : null,
  ]);

  if (
    basesResult.error ||
    attributesResult.error ||
    requirementsResult.error ||
    gMaxResult.error ||
    zSourcesResult?.error ||
    maxMovesResult?.error
  ) {
    throw new Error("Unable to load battle forms.");
  }

  const attributesByFormId = firstById(
    attributesResult.data ?? [],
    (row) => row.form_id,
  );
  const requirements = (requirementsResult.data ?? []).filter((row) =>
    appliesHere(row, generationId, versionGroupId),
  );
  const zSources = zSourcesResult?.data ?? [];
  const maxMoves = maxMovesResult?.data ?? [];
  const gMaxRows = gMaxResult.data ?? [];
  const requiredMoveSlugs = Object.values(requiredMoveSlugByFormSlug);
  const moveIds = uniqueNumberIds([
    ...gMaxRows.map((row) => row.g_max_move_id),
    ...zSources.map((row) => row.z_move_id),
    ...maxMoves.map((move) => move.id),
  ]);
  const itemIds = uniqueNumberIds([
    ...requirements.map((row) => row.item_id),
    ...zSources.map((row) => row.item_id),
  ]);
  const abilityIds = uniqueNumberIds(
    battleFormIds.map(
      (formId) => attributesByFormId.get(formId)?.primary_ability_id ?? null,
    ),
  );

  const [
    movesResult,
    moveAttributesResult,
    itemsResult,
    abilitiesResult,
    requiredMovesResult,
    itemAvailabilityResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("moves")
      .select("id, name, slug")
      .in("id", ids(moveIds)),
    supabase
      .schema("reference")
      .from("move_attributes")
      .select("move_id, type_id, damage_class, generation_start_id")
      .in("move_id", ids(moveIds))
      .lte("generation_start_id", generationId)
      .order("generation_start_id", { ascending: false }),
    supabase
      .schema("reference")
      .from("items")
      .select("id, name")
      .in("id", ids(itemIds)),
    supabase
      .schema("reference")
      .from("abilities")
      .select("id, name")
      .in("id", ids(abilityIds)),
    supabase
      .schema("reference")
      .from("moves")
      .select("name, slug")
      .in("slug", requiredMoveSlugs),
    readUnlockItemVersionGroups(
      supabase,
      requirements.map((row) => row.item_id),
    ),
  ]);

  if (
    movesResult.error ||
    moveAttributesResult.error ||
    itemsResult.error ||
    abilitiesResult.error ||
    requiredMovesResult.error ||
    itemAvailabilityResult.error
  ) {
    throw new Error("Unable to load battle forms.");
  }

  const moveAttributesById = firstById(
    moveAttributesResult.data ?? [],
    (row) => row.move_id,
  );
  /* In the Play's game or one of its expansions (Mega Dimension's stones). */
  const itemInGame = (itemId: number, playVersionGroupId: number) =>
    (itemAvailabilityResult.data ?? []).some(
      (row) =>
        row.itemId === itemId &&
        (row.versionGroupId === playVersionGroupId ||
          row.parentVersionGroupId === playVersionGroupId),
    );
  const typeIds = uniqueNumberIds([
    ...battleFormIds.flatMap((formId) => [
      attributesByFormId.get(formId)?.primary_type_id ?? null,
      attributesByFormId.get(formId)?.secondary_type_id ?? null,
    ]),
    ...[...moveAttributesById.values()].map((row) => row.type_id),
  ]);
  const typesResult = await supabase
    .schema("reference")
    .from("types")
    .select("id, name, slug")
    .in("id", ids(typeIds));

  if (typesResult.error) {
    throw new Error("Unable to load battle forms.");
  }

  const typesById = byId<BattleType>(typesResult.data ?? []);
  const itemsById = byId(itemsResult.data ?? []);
  const abilitiesById = byId(abilitiesResult.data ?? []);
  const requiredMovesBySlug = new Map(
    (requiredMovesResult.data ?? []).map((move) => [move.slug, move]),
  );
  const typeOf = (typeId: number | null | undefined) =>
    typeId ? (typesById.get(typeId) ?? null) : null;
  const movesById = new Map(
    (movesResult.data ?? []).map((move): [number, BattleMove] => [
      move.id,
      { ...move, type: typeOf(moveAttributesById.get(move.id)?.type_id) },
    ]),
  );
  const speciesFormsById = byId(speciesForms);
  const forms = rules.flatMap((rule): BattleFormReference[] => {
    const form = speciesFormsById.get(rule.form_id);
    const attribute = attributesByFormId.get(rule.form_id);

    // A form this game's generation doesn't have yet has no attributes.
    if (!form || !attribute || !isBattleFormMechanic(rule.battle_mechanic)) {
      return [];
    }

    const requiredMoveSlug = requiredMoveSlugByFormSlug[form.slug];
    const gMaxMoveId = gMaxRows.find(
      (row) => row.form_id === form.id,
    )?.g_max_move_id;

    return [
      {
        abilityName: attribute.primary_ability_id
          ? (abilitiesById.get(attribute.primary_ability_id)?.name ?? null)
          : null,
        baseFormIds: (basesResult.data ?? [])
          .filter((base) => base.battle_form_id === form.id)
          .map((base) => base.base_form_id),
        formId: form.id,
        gMaxMove: gMaxMoveId ? (movesById.get(gMaxMoveId) ?? null) : null,
        mechanic: rule.battle_mechanic,
        name: form.name,
        primaryType: typeOf(attribute.primary_type_id),
        requiredMove: requiredMoveSlug
          ? (requiredMovesBySlug.get(requiredMoveSlug) ?? null)
          : null,
        secondaryType: typeOf(attribute.secondary_type_id),
        slug: form.slug,
        speciesId: form.species_id,
        stats: toStats(attribute),
        needsUnlockItem: requirements.some((row) => row.form_id === form.id),
        unlockItems: requirements
          .filter(
            (row) =>
              row.form_id === form.id &&
              itemInGame(row.item_id, versionGroupId),
          )
          .flatMap((row) => itemsById.get(row.item_id) ?? []),
      },
    ];
  });

  return {
    baseStatsByFormId: Object.fromEntries(
      formIds.flatMap((formId) => {
        const attribute = attributesByFormId.get(formId);

        return attribute ? [[formId, toStats(attribute)]] : [];
      }),
    ),
    forms,
    maxGuard:
      [...movesById.values()].find((move) => move.slug === "max-guard") ?? null,
    maxMovesByTypeId: Object.fromEntries(
      maxMoves.flatMap((move) => {
        const full = movesById.get(move.id);
        const attribute = moveAttributesById.get(move.id);

        return full?.type && attribute?.damage_class !== "status"
          ? [[full.type.id, full]]
          : [];
      }),
    ),
    zSources: zSources.flatMap((source) => {
      const item = itemsById.get(source.item_id);
      const zMove = movesById.get(source.z_move_id);

      return item && zMove
        ? [
            {
              baseMoveId: source.base_move_id,
              baseTypeId: source.base_type_id,
              formId: source.form_id,
              item,
              speciesId: source.species_id,
              zMove,
            },
          ]
        : [];
    }),
  };
};
