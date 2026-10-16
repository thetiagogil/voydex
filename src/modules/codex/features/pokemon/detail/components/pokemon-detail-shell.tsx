import type {
  CodexPokemonEntrySlotContext,
  CodexPokemonEntrySlots,
} from "@/modules/codex/codex-slots";
import { getPokemonDetailAbilitySlots } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { PokemonDetailAbilitiesCard } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-card";
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
import { PokemonDetailSectionBar } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-bar";
import { PokemonDetailHead } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-head";
import { PokemonDetailStatsCard } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-card";
import { getPokemonDetailStats } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import {
  PokemonDetailBreedingCard,
  PokemonDetailTrainingCard,
} from "@/modules/codex/features/pokemon/detail/components/training/pokemon-detail-training-card";
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
import { getPokemonDetailGenerationOptions } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-generation-navigation";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import {
  gameMechanics,
  getGameMechanicAbsence,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { getPokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import {
  formatGenerationName,
  getGenerationNumeral,
} from "@/modules/reference/features/games/utils/game-display";
import type { EggGroup, PokemonDetailData } from "@/modules/reference/types";
import { PageBand } from "@/shared/components/page-band";
import { cn } from "@/shared/utils/cn";

type PokemonDetailShellProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
  /* The route's signed-in pieces: Add to a Play and In your Plays. */
  slots?: CodexPokemonEntrySlots;
};

/*
 * Abilities, Training and Breeding share one row on wide screens, Abilities
 * taking more of it the more abilities there are (one mini card each).
 * Tablets put Abilities on its own row above the other two.
 */
const factsRowClassNames: Record<number, string> = {
  0: "xl:grid-cols-[minmax(0,1.4fr)_minmax(0,1.5fr)_minmax(0,1fr)]",
  1: "xl:grid-cols-[minmax(0,1.4fr)_minmax(0,1.5fr)_minmax(0,1fr)]",
  2: "xl:grid-cols-[minmax(0,2.2fr)_minmax(0,1.5fr)_minmax(0,1fr)]",
  3: "xl:grid-cols-[minmax(0,3fr)_minmax(0,1.5fr)_minmax(0,1fr)]",
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
 * page's band, then quiet section cards, one a row but the two short ones,
 * with the learnset (the one section read per game) last before your Plays. Lively comes from the Pokémon's art and type colour only.
 */
export const PokemonDetailShell = ({
  data,
  scope,
  slots,
}: PokemonDetailShellProps) => {
  const { form, generation } = scope;
  const activeVersionGroup = scope.versionGroup.versionGroup;
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
  const generationOptions = getPokemonDetailGenerationOptions(data, scope);
  /* The entry in another generation, for a note's "See it in Generation III". */
  const getGenerationHref = (generation: number | null) => {
    const numeral = generation
      ? getGenerationNumeral(formatGenerationName(generation))
      : null;

    return (
      generationOptions.find((option) => option.label === numeral)?.href ?? null
    );
  };
  const abilitiesNote = getPokemonDetailMechanicNote(
    getGameMechanicAbsence(scope.mechanics, gameMechanics.abilities),
    "abilities",
    getVersionGroupShortName(activeVersionGroup.name),
  );
  const breedingNote = getPokemonDetailMechanicNote(
    getGameMechanicAbsence(scope.mechanics, gameMechanics.breeding),
    "breeding",
    getVersionGroupShortName(activeVersionGroup.name),
  );

  return (
    <div className="flex min-w-0 flex-col">
      <PokemonDetailSectionBar
        imageUrl={getPokemonDetailFormImageUrl(form)}
        name={pokemonName}
        type={typeSlug}
      >
        <PageBand>
          <PokemonDetailHead
            activePokemon={{ name: data.species.name, slug: data.species.slug }}
            activeVersionGroupSlug={activeVersionGroup.slug}
            gameNames={scope.generationLearnsets.flatMap(
              ({ isFound, versionGroup }) =>
                isFound
                  ? [getVersionGroupShortName(versionGroup.versionGroup.name)]
                  : [],
            )}
            generationOptions={generationOptions}
            generationSlug={generation.generation.slug}
          />

          <PokemonDetailHero
            key={form?.form.id ?? data.species.id}
            actions={slots?.heroActions?.(slotContext)}
            activeFormSlug={form?.form.slug ?? null}
            eyebrow={getPokemonDetailHeroEyebrow({
              form,
              species: data.species,
            })}
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
      </PokemonDetailSectionBar>

      {/*
       * Below the band, abilities, training and breeding in one row on wide
       * screens, then stats beside the type chart from `lg`. Each keeps its place in every game, saying
       * quietly what a game doesn't have. Then each section across the page, the learnset last
       * of the reference, and your own Plays at the very end.
       */}
      <div className="mt-8 flex flex-col gap-6 sm:mt-10">
        <div
          className={cn(
            "grid gap-6 md:grid-cols-2 [&>*]:h-full",
            factsRowClassNames[Math.min(abilitySlots.length, 3)],
          )}
        >
          <div className="min-w-0 md:col-span-2 xl:col-span-1">
            <PokemonDetailAbilitiesCard
              abilitySlots={abilitySlots}
              note={abilitiesNote}
              noteHref={getGenerationHref(abilitiesNote?.arrivesIn ?? null)}
            />
          </div>
          <PokemonDetailTrainingCard />
          <PokemonDetailBreedingCard
            eggGroups={getFormEggGroups(data, scope)}
            hasGender={supportsGameMechanic(
              scope.mechanics,
              gameMechanics.pokemonGender,
            )}
            note={breedingNote}
            noteHref={getGenerationHref(breedingNote?.arrivesIn ?? null)}
          />
        </div>
        <div className="grid items-stretch gap-6 lg:grid-cols-2 [&>*]:h-full">
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
        </div>

        <PokemonDetailEvolutionSection
          activeFormId={form?.form.id ?? null}
          activeGenerationSortOrder={generation.generation.sort_order}
          activeSpeciesId={data.species.id}
          activeVersionGroupId={activeVersionGroup.id}
          activeVersionGroupSlug={activeVersionGroup.slug}
          family={data.evolutionFamily}
        />
        {pokedexNumbers.length ? (
          <PokemonDetailPokedexNumbersCard numbers={pokedexNumbers} />
        ) : null}
        <PokemonDetailAvailabilityCard
          rows={scope.generationAvailability.flatMap(
            ({ availability, versionGroup }) => {
              return getPokemonDetailWhereToFindRows({
                availability,
                listWhenAbsent: scope.generationAvailability.some(
                  (group) => group.availability.length > 0,
                ),
                versionGroup,
              });
            },
          )}
          scopeName={generation.generation.name}
        />
        <PokemonDetailLearnsetsCard
          groups={scope.generationLearnsets.map(
            ({ isFound, learnsets, versionGroup }) => ({
              disabled: !isFound,
              label: getVersionGroupShortName(versionGroup.versionGroup.name),
              learnsets,
              slug: versionGroup.versionGroup.slug,
            }),
          )}
          initialSlug={activeVersionGroup.slug}
        />
        {inYourPlays ? <div id="in-your-plays">{inYourPlays}</div> : null}
      </div>
    </div>
  );
};
