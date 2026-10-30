import { resolveAbilityEffects } from "@/modules/reference/features/pokemon/data/ability-effects";
import type {
  PlannerCatalogueRows,
  PlannerPoolRows,
} from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import { buildPlannerAvailabilityFacts } from "@/modules/mainline/features/plans/planner/data/planner-availability-facts";
import { toPlannerVersionGroup } from "@/modules/mainline/features/plans/planner/data/planner-version-groups";
import type {
  PlannerContext,
  PlannerPokedexSection,
  PlannerPokemon,
} from "@/modules/mainline/features/plans/types";
import { getPlanBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import { isInGameAvailabilityMethod } from "@/modules/reference/features/games/domain/version-exclusives";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { getPokemonTypesForGeneration } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import type {
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
  const getAvailabilityFacts = buildPlannerAvailabilityFacts({
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
        imageUrl: getPokemonFormImageUrl(form, "sm"),
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
    abilityEffects: buildFields.ability
      ? Object.fromEntries(
          resolveAbilityEffects(
            pool.abilityAttributes,
            versionGroup.id,
            catalogue.versionGroups,
          ),
        )
      : {},
    buildFields,
    natures: buildFields.nature
      ? pool.natures
          .filter((nature) => nature.introduced_generation_id <= generationId)
          .map((nature) => ({
            decreased_stat: nature.decreased_stat,
            id: nature.id,
            increased_stat: nature.increased_stat,
            name: nature.name,
          }))
      : [],
    pokemon,
    sections,
    types: catalogue.types
      .filter((type) => generationTypes.has(type.slug))
      .map((type) => ({ name: type.name, slug: type.slug })),
    versionGroup: {
      ...plannerGroup,
      availabilityGroups: pool.availabilityGroups.map((group) => ({
        id: group.id,
        kind: group.kind === "pick-one" ? "pick-one" : "one-per-save",
        memberFormIds: group.members.map((member) => member.form_id),
        name: group.name,
        note: group.note,
        versionGroupId: group.version_group_id,
      })),
    },
  };
};
