import type {
  PlannerAvailabilityRow,
  PlannerCatalogueRows,
  PlannerPoolRows,
} from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import type {
  PlannerContext,
  PlannerPokedexSection,
  PlannerPokemon,
  PlannerPokemonFacts,
  PlannerVersionGroup,
  PlannerVersionGroupOption,
} from "@/modules/mainline/features/plans/types";
import { getPlanBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  getVersionExclusives,
  isInGameAvailabilityMethod,
} from "@/modules/reference/features/games/domain/version-exclusives";
import {
  getChildVersionGroups,
  getVersionGroupFamilyIds,
} from "@/modules/reference/features/games/domain/version-groups";
import {
  getGameShortName,
  getGenerationNumeral,
} from "@/modules/reference/features/games/utils/game-display";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { getPokemonTypesForGeneration } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import type {
  Game,
  PokemonAttributes,
  VersionGroup,
} from "@/modules/reference/types";

const eventMethodSlug = "event";

/* "Galar Pokedex" reads "Galar Pokédex"; a bare name gains the word. */
export const getPokedexDisplayName = (name: string) => {
  const spelled = name.replace(/Pokedex/g, "Pokédex");

  return /Pokédex$/.test(spelled) ? spelled : `${spelled} Pokédex`;
};
const tradeEvolutionSlug = "trade";

/* The base version groups a Plan can be for, newest generation first. */
export const buildPlannerVersionGroupOptions = (
  catalogue: PlannerCatalogueRows,
): PlannerVersionGroupOption[] => {
  const generationById = new Map(
    catalogue.generations.map((generation) => [generation.id, generation]),
  );
  const regionById = new Map(
    catalogue.regions.map((region) => [region.id, region.name]),
  );

  return catalogue.versionGroups
    .filter((group) => group.parent_version_group_id === null)
    .flatMap((group) => {
      const games = catalogue.games.filter(
        (game) => game.version_group_id === group.id,
      );
      const generation = generationById.get(group.generation_id);

      return games.length && generation
        ? [
            {
              gameSlugs: games.map((game) => game.slug),
              generationNumeral: getGenerationNumeral(generation.name),
              generationOrder: generation.sort_order,
              name: group.name,
              regionName: regionById.get(games[0].region_id ?? -1) ?? null,
              slug: group.slug,
              sortOrder: group.sort_order,
            },
          ]
        : [];
    })
    .toSorted(
      (left, right) =>
        right.generationOrder - left.generationOrder ||
        right.sortOrder - left.sortOrder,
    )
    .map(({ gameSlugs, generationNumeral, name, regionName, slug }) => ({
      gameSlugs,
      generationNumeral,
      name,
      regionName,
      slug,
    }));
};

/* The asked-for base version group, else the newest one with games. */
export const resolvePlannerVersionGroup = (
  catalogue: PlannerCatalogueRows,
  slug: string | null,
  options: PlannerVersionGroupOption[],
): VersionGroup | null => {
  const asked = catalogue.versionGroups.find((group) => group.slug === slug);
  const base =
    asked && asked.parent_version_group_id !== null
      ? catalogue.versionGroups.find(
          (group) => group.id === asked.parent_version_group_id,
        )
      : asked;
  const fallbackSlug = options[0]?.slug;

  return (
    base ??
    catalogue.versionGroups.find((group) => group.slug === fallbackSlug) ??
    null
  );
};

export const getPlannerFamilyIds = (
  catalogue: PlannerCatalogueRows,
  versionGroup: VersionGroup,
) => getVersionGroupFamilyIds(versionGroup, catalogue.versionGroups);

const toPlannerVersionGroup = (
  catalogue: PlannerCatalogueRows,
  versionGroup: VersionGroup,
  games: Game[],
): PlannerVersionGroup => {
  const generation = catalogue.generations.find(
    (candidate) => candidate.id === versionGroup.generation_id,
  );

  return {
    expansions: getChildVersionGroups(
      versionGroup,
      catalogue.versionGroups,
    ).map((child) => ({ name: child.name, versionGroupId: child.id })),
    games: games.map((game) => ({
      id: game.id,
      name: game.name,
      shortName: getGameShortName(game.name),
      slug: game.slug,
    })),
    generationNumeral: getGenerationNumeral(generation?.name ?? ""),
    generationOrder: generation?.sort_order ?? versionGroup.generation_id,
    id: versionGroup.id,
    name: versionGroup.name,
    regionName:
      catalogue.regions.find((region) => region.id === games[0]?.region_id)
        ?.name ?? null,
    slug: versionGroup.slug,
  };
};

/* A form's attributes in the version group's generation: the latest that had started. */
const getAttributesInGeneration = (
  attributesByForm: Map<number, PokemonAttributes[]>,
  formId: number,
  generationId: number,
) =>
  (attributesByForm.get(formId) ?? [])
    .filter((attribute) => attribute.generation_start_id <= generationId)
    .toSorted(
      (left, right) => right.generation_start_id - left.generation_start_id,
    )[0] ?? null;

/*
 * What the catalogue says about getting each species in this version group:
 * in the base game, only in an expansion, only as one game's exclusive, only
 * from an event, or only from outside the game. A species with no rows at
 * all gets no facts: unknown is never read as unavailable.
 */
const buildAvailabilityFacts = ({
  availability,
  baseVersionGroupId,
  eventMethodIds,
  expansionIds,
  gameIds,
  inGameMethodIds,
}: {
  availability: PlannerAvailabilityRow[];
  baseVersionGroupId: number;
  eventMethodIds: ReadonlySet<number>;
  expansionIds: number[];
  gameIds: number[];
  inGameMethodIds: ReadonlySet<number>;
}) => {
  type SpeciesRows = {
    base: boolean;
    event: boolean;
    expansion: number | null;
    outside: boolean;
  };
  const bySpecies = new Map<number, SpeciesRows>();
  const baseRows = availability.filter(
    (row) => row.target_version_group_id === baseVersionGroupId,
  );

  for (const row of availability) {
    if (row.species_id === null || row.availability_method_id === null)
      continue;

    const entry = bySpecies.get(row.species_id) ?? {
      base: false,
      event: false,
      expansion: null,
      outside: false,
    };
    const inGame = inGameMethodIds.has(row.availability_method_id);

    if (inGame && row.target_version_group_id === baseVersionGroupId) {
      entry.base = true;
    } else if (
      inGame &&
      row.source_version_group_id !== null &&
      expansionIds.includes(row.source_version_group_id)
    ) {
      entry.expansion ??= row.source_version_group_id;
    } else if (eventMethodIds.has(row.availability_method_id)) {
      entry.event = true;
    } else if (!inGame) {
      entry.outside = true;
    }

    bySpecies.set(row.species_id, entry);
  }

  const exclusives = getVersionExclusives({
    gameIds,
    inGameMethodIds,
    rows: baseRows.flatMap((row) =>
      row.species_id !== null &&
      row.form_id !== null &&
      row.availability_method_id !== null
        ? [
            {
              availability_method_id: row.availability_method_id,
              form_id: row.form_id,
              game_id: row.game_id,
              species_id: row.species_id,
            },
          ]
        : [],
    ),
  });
  const exclusiveGamesBySpecies = new Map<number, number[]>();

  for (const [gameId, list] of exclusives) {
    for (const exclusive of list) {
      const games = exclusiveGamesBySpecies.get(exclusive.speciesId) ?? [];

      if (!games.includes(gameId)) games.push(gameId);
      exclusiveGamesBySpecies.set(exclusive.speciesId, games);
    }
  }

  return (speciesId: number): Omit<PlannerPokemonFacts, "tradeEvolution"> => {
    const rows = bySpecies.get(speciesId);
    const exclusiveTo = exclusiveGamesBySpecies.get(speciesId) ?? [];

    return {
      eventOnly: Boolean(rows && !rows.base && !rows.expansion && rows.event),
      exclusiveToGameIds: exclusiveTo.length === 1 ? exclusiveTo : [],
      expansionVersionGroupId: rows && !rows.base ? rows.expansion : null,
      outsideGameOnly: Boolean(
        rows && !rows.base && !rows.expansion && !rows.event && rows.outside,
      ),
    };
  };
};

/*
 * The Planner's pool for one version group: one section per Pokédex of the
 * group and its expansions (each species in the first that lists it), every
 * species' display form, types and abilities in the group's generation,
 * whether it is fully evolved, and the facts the Team check reads.
 */
export const buildPlannerContext = ({
  catalogue,
  pool,
  versionGroup,
}: {
  catalogue: PlannerCatalogueRows;
  pool: PlannerPoolRows;
  versionGroup: VersionGroup;
}): PlannerContext => {
  const games = catalogue.games.filter(
    (game) => game.version_group_id === versionGroup.id,
  );
  const plannerGroup = toPlannerVersionGroup(catalogue, versionGroup, games);
  const generationId = versionGroup.generation_id;
  /* A Plan is for the whole group: a choice counts when every game has it. */
  const buildFields = getPlanBuildFields(
    resolveVersionGroupMechanics({
      gameIds: games.map((game) => game.id),
      generationId,
      versionGroupId: versionGroup.id,
    }),
  );
  const familyOrder = [
    versionGroup.id,
    ...plannerGroup.expansions.map((expansion) => expansion.versionGroupId),
  ];
  const expansionNameById = new Map(
    plannerGroup.expansions.map((expansion) => [
      expansion.versionGroupId,
      expansion.name,
    ]),
  );
  const listedPokedexes = pool.pokedexes
    .filter(
      (pokedex) =>
        pokedex.pokedex_kind !== "national" && pokedex.is_completion_relevant,
    )
    .toSorted(
      (left, right) =>
        familyOrder.indexOf(left.version_group_id) -
          familyOrder.indexOf(right.version_group_id) ||
        left.sort_order - right.sort_order,
    );
  const pokedexes = listedPokedexes.length ? listedPokedexes : pool.pokedexes;
  const placed = new Set<number>();
  const displayFormBySpecies = new Map<number, number>();
  const sections: PlannerPokedexSection[] = pokedexes.flatMap((pokedex) => {
    const speciesIds = pool.entries
      .filter((entry) => entry.pokedex_id === pokedex.id)
      .toSorted((left, right) => left.pokedex_number - right.pokedex_number)
      .flatMap((entry) => {
        if (placed.has(entry.species_id)) return [];

        placed.add(entry.species_id);

        if (entry.display_form_id !== null) {
          displayFormBySpecies.set(entry.species_id, entry.display_form_id);
        }

        return [entry.species_id];
      });
    const expansionName = expansionNameById.get(pokedex.version_group_id);

    return speciesIds.length
      ? [
          {
            key: pokedex.slug,
            name: getPokedexDisplayName(pokedex.name),
            note: expansionName ? `${expansionName} expansion` : null,
            speciesIds,
          },
        ]
      : [];
  });

  const attributesByForm = new Map<number, PokemonAttributes[]>();

  for (const attribute of pool.attributes) {
    const list = attributesByForm.get(attribute.form_id) ?? [];
    list.push(attribute);
    attributesByForm.set(attribute.form_id, list);
  }

  const typeById = new Map(catalogue.types.map((type) => [type.id, type]));
  const abilityById = new Map(
    pool.abilities.map((ability) => [ability.id, ability]),
  );
  const methodSlugById = new Map(
    pool.availabilityMethods.map((method) => [method.id, method.slug]),
  );
  const inGameMethodIds = new Set(
    pool.availabilityMethods
      .filter(isInGameAvailabilityMethod)
      .map((method) => method.id),
  );
  const eventMethodIds = new Set(
    [...methodSlugById].flatMap(([id, slug]) =>
      slug === eventMethodSlug ? [id] : [],
    ),
  );
  const getAvailabilityFacts = buildAvailabilityFacts({
    availability: pool.availability,
    baseVersionGroupId: versionGroup.id,
    eventMethodIds,
    expansionIds: plannerGroup.expansions.map(
      (expansion) => expansion.versionGroupId,
    ),
    gameIds: games.map((game) => game.id),
    inGameMethodIds,
  });
  const tradeMethodIds = new Set(
    pool.evolutionMethods
      .filter((method) => method.slug === tradeEvolutionSlug)
      .map((method) => method.id),
  );
  const heldItemNameById = new Map(
    pool.heldItems.map((item) => [item.id, item.name]),
  );
  const familyIds = new Set(familyOrder);
  const edges = [
    ...new Map(pool.edges.map((edge) => [edge.id, edge])).values(),
  ].filter(
    (edge) =>
      edge.introduced_generation_id <= generationId &&
      (edge.version_group_id === null || familyIds.has(edge.version_group_id)),
  );
  const generationTypes = new Set<string>(
    getPokemonTypesForGeneration(plannerGroup.generationOrder),
  );

  const pokemon: PlannerPokemon[] = pool.species.flatMap((species) => {
    const forms = pool.forms.filter((form) => form.species_id === species.id);
    const form =
      forms.find(
        (candidate) => candidate.id === displayFormBySpecies.get(species.id),
      ) ??
      forms.find((candidate) => candidate.is_default) ??
      forms[0];

    if (!form) return [];

    const attribute = getAttributesInGeneration(
      attributesByForm,
      form.id,
      generationId,
    );
    const types = [attribute?.primary_type_id, attribute?.secondary_type_id]
      .flatMap((id) => {
        const type = id ? typeById.get(id) : undefined;
        return type ? [{ name: type.name, slug: type.slug }] : [];
      })
      .filter((type) => generationTypes.has(type.slug));
    const abilities = buildFields.ability
      ? [
          [attribute?.primary_ability_id, false],
          [attribute?.secondary_ability_id, false],
          [attribute?.hidden_ability_id, true],
        ].flatMap(([id, hidden]) => {
          const ability =
            typeof id === "number" ? abilityById.get(id) : undefined;
          return ability
            ? [{ hidden: Boolean(hidden), id: ability.id, name: ability.name }]
            : [];
        })
      : [];
    const tradeEdge = edges.find(
      (edge) =>
        edge.to_species_id === species.id &&
        tradeMethodIds.has(edge.evolution_method_id),
    );
    const reachedOtherwise = edges.some(
      (edge) =>
        edge.to_species_id === species.id &&
        !tradeMethodIds.has(edge.evolution_method_id),
    );

    return [
      {
        abilities: abilities.filter(
          (ability, index, list) =>
            list.findIndex((other) => other.id === ability.id) === index,
        ),
        evolutionFamilyId: species.evolution_family_id,
        facts: {
          ...getAvailabilityFacts(species.id),
          tradeEvolution:
            tradeEdge && !reachedOtherwise
              ? {
                  heldItemName: tradeEdge.held_item_id
                    ? (heldItemNameById.get(tradeEdge.held_item_id) ?? null)
                    : null,
                }
              : null,
        },
        formId: form.id,
        imageUrl: getPokemonFormImageUrl(form),
        isFullyEvolved: !edges.some(
          (edge) => edge.from_species_id === species.id,
        ),
        name: species.name,
        nationalNumber: species.national_number,
        speciesId: species.id,
        speciesSlug: species.slug,
        types,
      },
    ];
  });

  return {
    buildFields,
    natures: buildFields.nature
      ? pool.natures
          .filter((nature) => nature.introduced_generation_id <= generationId)
          .map((nature) => ({ id: nature.id, name: nature.name }))
      : [],
    pokemon,
    sections,
    types: catalogue.types
      .filter((type) => generationTypes.has(type.slug))
      .map((type) => ({ name: type.name, slug: type.slug })),
    versionGroup: plannerGroup,
  };
};
