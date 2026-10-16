import type {
  CodexPokemonEntrySlotContext,
  CodexPokemonEntrySlots,
} from "@/modules/codex/codex-slots";
import { PokemonDetailAbilitiesCard } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-card";
import { getPokemonDetailAbilitySlots } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { PokemonDetailAvailabilityCard } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-card";
import { getPokemonDetailWhereToFindRows } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-display";
import { PokemonDetailEvolutionSection } from "@/modules/codex/features/pokemon/detail/components/evolution/pokemon-detail-evolution-section";
import { PokemonDetailHero } from "@/modules/codex/features/pokemon/detail/components/hero/pokemon-detail-hero";
import {
  getPokemonDetailHeroEyebrow,
  getPokemonDetailHeroSentence,
} from "@/modules/codex/features/pokemon/detail/components/hero/pokemon-detail-hero-model";
import { PokemonDetailLearnsetsCard } from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnsets-card";
import { PokemonDetailPokedexNumbersCard } from "@/modules/codex/features/pokemon/detail/components/pokedex-numbers/pokemon-detail-pokedex-numbers-card";
import { getPokemonDetailPokedexNumbers } from "@/modules/codex/features/pokemon/detail/components/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { PokemonDetailHead } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-head";
import { PokemonDetailStatsCard } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-card";
import { getPokemonDetailStats } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import { PokemonDetailTrainingCard } from "@/modules/codex/features/pokemon/detail/components/training/pokemon-detail-training-card";
import { PokemonDetailTypeMatchupsCard } from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-card";
import {
  getPokemonDetailDefendingTypes,
  getPokemonDetailTypeMatchups,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormShinyImageUrl,
  getPokemonDetailFormSwitchOptions,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import {
  getPokemonDetailGenerationOptions,
  getPokemonDetailVersionGroupOptions,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-generation-navigation";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import {
  gameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type { EggGroup, PokemonDetailData } from "@/modules/reference/types";
import { PageBand } from "@/shared/components/page-band";

type PokemonDetailShellProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
  /* The route's signed-in pieces: Add to a Play and In your Plays. */
  slots?: CodexPokemonEntrySlots;
};

/* The form's egg groups in slot order, from its attributes in this generation. */
const getFormEggGroups = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
): EggGroup[] => {
  const attributes = scope.form?.attributes;
  const eggGroupIds = [
    attributes?.primary_egg_group_id,
    attributes?.secondary_egg_group_id,
  ];

  return eggGroupIds.flatMap((eggGroupId) => {
    const eggGroup = data.eggGroups.find((group) => group.id === eggGroupId);

    return eggGroup ? [eggGroup] : [];
  });
};

/*
 * The Codex Pokémon entry, read by generation: the head and the hero on the
 * page's band, then quiet section cards in a wide and a narrow column, and
 * the learnset, the one section read per game. Lively comes from the Pokémon's art and type colour only.
 */
export const PokemonDetailShell = ({
  data,
  scope,
  slots,
}: PokemonDetailShellProps) => {
  const { form, generation } = scope;
  const activeVersionGroup = scope.versionGroup.versionGroup;
  const versionGroupName = getVersionGroupShortName(activeVersionGroup.name);
  const pokemonName = form?.form.name ?? data.species.name;
  const typeSlug = getPokemonDetailFormTypeSlug(form);
  const stats = form?.attributes
    ? getPokemonDetailStats(form.attributes, generation.generation)
    : [];
  const defendingTypes = getPokemonDetailDefendingTypes(form?.typePair ?? null);
  const abilitySlots = supportsGameMechanic(
    scope.mechanics,
    gameMechanics.abilities,
  )
    ? getPokemonDetailAbilitySlots({
        abilities: data.abilities,
        abilityAttributes: data.abilityAttributes,
        attributes: form?.attributes ?? null,
        currentVersionGroup: activeVersionGroup,
        versionGroups: data.generationDetails.flatMap((detail) => {
          return detail.versionGroups;
        }),
      })
    : [];
  const pokedexNumbers = getPokemonDetailPokedexNumbers({
    scopedPokedexEntries: scope.generationPokedexEntries,
  });
  const slotContext: CodexPokemonEntrySlotContext = {
    formId: form?.form.id ?? null,
    formSlug: form && !form.form.is_default ? form.form.slug : null,
    imageUrl: getPokemonDetailFormImageUrl(form),
    pokemonName,
    speciesId: data.species.id,
    speciesName: data.species.name,
    speciesSlug: data.species.slug,
    versionGroupSlug: activeVersionGroup.slug,
  };
  const inYourPlays = slots?.inYourPlays?.(slotContext) ?? null;

  return (
    <div className="flex min-w-0 flex-col">
      <PageBand>
        <PokemonDetailHead
          activePokemon={{ name: data.species.name, slug: data.species.slug }}
          activeVersionGroupSlug={activeVersionGroup.slug}
          generationOptions={getPokemonDetailGenerationOptions(data, scope)}
          generationSlug={generation.generation.slug}
        />

        <PokemonDetailHero
          key={form?.form.id ?? data.species.id}
          actions={slots?.heroActions?.(slotContext)}
          activeFormSlug={form?.form.slug ?? null}
          eyebrow={getPokemonDetailHeroEyebrow({ form, species: data.species })}
          formSwitchOptions={getPokemonDetailFormSwitchOptions({
            forms: scope.generationForms,
            speciesName: data.species.name,
            speciesSlug: data.species.slug,
          })}
          imageAlt={getPokemonDetailFormImageAlt(form, data.species.name)}
          imageUrl={getPokemonDetailFormImageUrl(form)}
          name={pokemonName}
          sentence={getPokemonDetailHeroSentence({ form, stats })}
          shinyImageUrl={getPokemonDetailFormShinyImageUrl(form)}
          typePair={form?.typePair ?? null}
          typeSlug={typeSlug}
        />
      </PageBand>

      {/*
       * Below the band, a wide column for what you read across (stats,
       * matchups, evolution, where to find) beside a narrow one of short
       * facts, then the learnset across the page. Phones read one column,
       * the facts after the matchups.
       */}
      <div className="mt-8 flex flex-col gap-6 sm:mt-10 lg:grid lg:grid-cols-[minmax(0,1fr)_20rem] lg:items-start xl:grid-cols-[minmax(0,1fr)_23rem]">
        <div className="flex min-w-0 flex-col gap-6 max-lg:contents">
          {stats.length ? (
            <PokemonDetailStatsCard
              generationName={generation.generation.name}
              stats={stats}
              type={typeSlug}
            />
          ) : null}
          {defendingTypes.length ? (
            <PokemonDetailTypeMatchupsCard
              matchups={getPokemonDetailTypeMatchups({
                defendingTypes,
                generationOrder: generation.generation.sort_order,
              })}
              pokemonName={pokemonName}
            />
          ) : null}
          <div className="min-w-0 max-lg:order-1">
            <PokemonDetailEvolutionSection
              activeFormId={form?.form.id ?? null}
              activeGenerationSortOrder={generation.generation.sort_order}
              activeSpeciesId={data.species.id}
              activeVersionGroupId={activeVersionGroup.id}
              activeVersionGroupSlug={activeVersionGroup.slug}
              family={data.evolutionFamily}
            />
          </div>
          <div className="min-w-0 max-lg:order-1">
            <PokemonDetailAvailabilityCard
              rows={scope.generationAvailability.flatMap(
                ({ availability, versionGroup }) => {
                  return getPokemonDetailWhereToFindRows({
                    availability,
                    versionGroup,
                  });
                },
              )}
              scopeName={generation.generation.name}
            />
          </div>
        </div>

        <div className="flex min-w-0 flex-col gap-6 max-lg:contents">
          {abilitySlots.length ? (
            <PokemonDetailAbilitiesCard abilitySlots={abilitySlots} />
          ) : null}
          <PokemonDetailTrainingCard
            eggGroups={
              supportsGameMechanic(scope.mechanics, gameMechanics.breeding)
                ? getFormEggGroups(data, scope)
                : null
            }
            hasGender={supportsGameMechanic(
              scope.mechanics,
              gameMechanics.pokemonGender,
            )}
          />
          {pokedexNumbers.length ? (
            <div className="min-w-0 max-lg:order-2">
              <PokemonDetailPokedexNumbersCard numbers={pokedexNumbers} />
            </div>
          ) : null}
          {inYourPlays ? (
            <div className="min-w-0 max-lg:order-2">{inYourPlays}</div>
          ) : null}
        </div>
      </div>

      <div className="mt-6">
        <PokemonDetailLearnsetsCard
          learnsets={scope.learnsets}
          scopeName={versionGroupName}
          versionGroupOptions={getPokemonDetailVersionGroupOptions(data, scope)}
          versionGroupSlug={activeVersionGroup.slug}
        />
      </div>
    </div>
  );
};
