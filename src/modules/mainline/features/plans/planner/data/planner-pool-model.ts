import { resolveAbilityEffects } from "@/modules/reference/features/pokemon/data/ability-effects";
import type {
  PlannerCatalogueRows,
  PlannerPoolRows,
} from "@/modules/mainline/features/plans/planner/server/planner-pool-reader";
import { buildPlannerAvailabilityFacts } from "@/modules/mainline/features/plans/planner/data/planner-availability-facts";
import {
  getOfferedFormIdsBySpecies,
  listPlannerPokedexes,
  placePlannerExtras,
  placePlannerSpecies,
} from "@/modules/mainline/features/plans/planner/data/planner-offered-forms";
import { toPlannerVersionGroup } from "@/modules/mainline/features/plans/planner/data/planner-version-groups";
import type {
  PlannerContext,
  PlannerPokedexSection,
  PlannerPokemon,
} from "@/modules/mainline/features/plans/types";
import { getPlanBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  isDerivedAvailabilityMethod,
  isInGameAvailabilityMethod,
} from "@/modules/reference/features/games/domain/version-exclusives";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { selectEvolutionEdgesInForce } from "@/modules/reference/features/pokemon/domain/evolution-scope";
import { getPokemonTypesForGeneration } from "@/modules/reference/features/pokemon/domain/type-effectiveness";
import type {
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
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
 * form the group offers of each species (its Pokédex form, then the other
 * variants the group has), each with its types and abilities in the group's
 * generation, whether it is fully evolved, and the facts the Team check reads.
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
  const pokedexes = listPlannerPokedexes(pool.pokedexes, familyOrder);
  const { displayFormIdBySpecies, speciesIdsByPokedexId } = placePlannerSpecies(
    pokedexes,
    pool.entries,
  );
  const inGameMethodIds = new Set(
    pool.availabilityMethods
      .filter(isInGameAvailabilityMethod)
      .map((method) => method.id),
  );
  /* What the group hands out beyond every Pokédex of the family, under the group that does. */
  const extras = placePlannerExtras({
    availability: pool.availability,
    cosmeticFormIds: pool.cosmeticFormIds,
    derivedMethodIds: new Set(
      pool.availabilityMethods
        .filter(isDerivedAvailabilityMethod)
        .map((method) => method.id),
    ),
    familyOrder,
    formClassById: pool.formClassById,
    forms: pool.forms,
    inGameMethodIds,
    placedSpeciesIds: new Set(pool.entries.map((entry) => entry.species_id)),
    species: pool.species,
  });
  const offeredFormIdsBySpecies = getOfferedFormIdsBySpecies({
    availableFormIds: new Set(
      pool.availability.flatMap((row) =>
        row.form_id === null ? [] : [row.form_id],
      ),
    ),
    cosmeticFormIds: pool.cosmeticFormIds,
    displayFormIdBySpecies: new Map([
      ...displayFormIdBySpecies,
      ...extras.displayFormIdBySpecies,
    ]),
    formClassById: pool.formClassById,
    forms: pool.forms,
  });
  const versionGroupSlugById = new Map(
    catalogue.versionGroups.map((group) => [group.id, group.slug]),
  );
  const extraSections: PlannerPokedexSection[] = familyOrder.flatMap(
    (versionGroupId) => {
      const formIds = (
        extras.speciesIdsByVersionGroupId.get(versionGroupId) ?? []
      ).flatMap((speciesId) => offeredFormIdsBySpecies.get(speciesId) ?? []);
      const name =
        versionGroupId === versionGroup.id
          ? versionGroup.name
          : expansionNameById.get(versionGroupId);

      return formIds.length && name
        ? [
            {
              formIds,
              key: `also-${versionGroupSlugById.get(versionGroupId) ?? versionGroupId}`,
              name: `Also in ${name}`,
              note: "outside the Pokédex",
            },
          ]
        : [];
    },
  );
  const sections: PlannerPokedexSection[] = pokedexes.flatMap((pokedex) => {
    const formIds = (speciesIdsByPokedexId.get(pokedex.id) ?? []).flatMap(
      (speciesId) => offeredFormIdsBySpecies.get(speciesId) ?? [],
    );
    const expansionName = expansionNameById.get(pokedex.version_group_id);

    return formIds.length
      ? [
          {
            formIds,
            key: pokedex.slug,
            name: getPokedexDisplayName(pokedex.name),
            note: expansionName ? `${expansionName} expansion` : null,
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
  /* The forms the group hands out: a species-wide row covers every form. */
  const availableFormIds = new Set<number>();
  for (const row of pool.availability) {
    if (
      row.target_version_group_id === null ||
      !familyIds.has(row.target_version_group_id)
    )
      continue;
    if (row.form_id !== null) {
      availableFormIds.add(row.form_id);
    } else {
      for (const form of pool.forms) {
        if (form.species_id === row.species_id) availableFormIds.add(form.id);
      }
    }
  }
  const edges = selectEvolutionEdgesInForce({
    availableFormIds,
    edges: [...new Map(pool.edges.map((edge) => [edge.id, edge])).values()],
    generationOrder: generationId,
    versionGroupIds: familyOrder,
  });
  const generationTypes = new Set<string>(
    getPokemonTypesForGeneration(plannerGroup.generationOrder),
  );

  const formById = new Map(pool.forms.map((form) => [form.id, form]));
  const pokemon: PlannerPokemon[] = pool.species.flatMap((species) =>
    (offeredFormIdsBySpecies.get(species.id) ?? []).flatMap((formId) => {
      const form = formById.get(formId);

      return form ? toPlannerPokemon(species, form) : [];
    }),
  );

  function toPlannerPokemon(
    species: PokemonSpecies,
    form: PokemonForm,
  ): PlannerPokemon[] {
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
        edge.to_form_id === form.id &&
        tradeMethodIds.has(edge.evolution_method_id),
    );
    const reachedOtherwise = edges.some(
      (edge) =>
        edge.to_form_id === form.id &&
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
          ...getAvailabilityFacts(form.id),
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
        formSlug: form.slug,
        imageUrl: getPokemonFormImageUrl(form, "sm"),
        isFullyEvolved: !edges.some((edge) => edge.from_form_id === form.id),
        name: form.is_default ? species.name : form.name,
        nationalNumber: species.national_number,
        speciesId: species.id,
        speciesSlug: species.slug,
        types,
      },
    ];
  }

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
    sections: [...sections, ...extraSections],
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
