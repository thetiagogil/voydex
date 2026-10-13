import { Fragment, type ReactElement } from "react";

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
import { cn } from "@/shared/utils/cn";

type PokemonDetailShellProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
  /* The route's signed-in pieces: Add to a Play and In your Plays. */
  slots?: CodexPokemonEntrySlots;
};

/* Two section cards side by side on wide screens; one alone takes the row. */
const PokemonDetailCardRow = ({
  cards,
}: {
  cards: (ReactElement | null)[];
}) => {
  const visibleCards = cards.filter((card) => card !== null);

  if (!visibleCards.length) {
    return null;
  }

  return (
    <div
      className={cn(
        "grid items-start gap-6",
        visibleCards.length > 1 && "lg:grid-cols-2",
      )}
    >
      {visibleCards}
    </div>
  );
};

/* Cards two to a row; an odd one out takes the last row alone. */
const pairCards = (cards: (ReactElement | null)[]) => {
  const visibleCards = cards.filter((card) => card !== null);

  return Array.from(
    { length: Math.ceil(visibleCards.length / 2) },
    (_, index) => visibleCards.slice(index * 2, index * 2 + 2),
  );
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
 * The Codex Pokémon entry, as v3 lays it out: the head, the hero, then quiet
 * section cards. Lively comes from the Pokémon's art and type colour only.
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
    scopedPokedexEntries: scope.pokedexEntries,
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

  const readingCards = [
    stats.length ? (
      <PokemonDetailStatsCard
        key="stats"
        generationName={generation.generation.name}
        stats={stats}
        type={typeSlug}
      />
    ) : null,
    defendingTypes.length ? (
      <PokemonDetailTypeMatchupsCard
        key="matchups"
        matchups={getPokemonDetailTypeMatchups({
          defendingTypes,
          generationOrder: generation.generation.sort_order,
        })}
        pokemonName={pokemonName}
      />
    ) : null,
  ];
  const referenceCards = [
    abilitySlots.length ? (
      <PokemonDetailAbilitiesCard key="abilities" abilitySlots={abilitySlots} />
    ) : null,
    <PokemonDetailTrainingCard
      key="training"
      eggGroups={
        supportsGameMechanic(scope.mechanics, gameMechanics.breeding)
          ? getFormEggGroups(data, scope)
          : null
      }
      hasGender={supportsGameMechanic(
        scope.mechanics,
        gameMechanics.pokemonGender,
      )}
    />,
    pokedexNumbers.length ? (
      <PokemonDetailPokedexNumbersCard
        key="pokedex-numbers"
        numbers={pokedexNumbers}
        versionGroupSlug={activeVersionGroup.slug}
      />
    ) : null,
  ];

  return (
    <div className="flex min-w-0 flex-col">
      <PokemonDetailHead
        activePokemon={{ name: data.species.name, slug: data.species.slug }}
        activeVersionGroupSlug={activeVersionGroup.slug}
        generationOptions={getPokemonDetailGenerationOptions(data, scope)}
        generationSlug={generation.generation.slug}
        versionGroupOptions={getPokemonDetailVersionGroupOptions(data, scope)}
      />

      <PokemonDetailHero
        key={form?.form.id ?? data.species.id}
        actions={slots?.heroActions?.(slotContext)}
        activeFormSlug={form?.form.slug ?? null}
        eyebrow={getPokemonDetailHeroEyebrow({ form, species: data.species })}
        formSwitchOptions={getPokemonDetailFormSwitchOptions({
          forms: scope.forms,
          speciesName: data.species.name,
          speciesSlug: data.species.slug,
          versionGroupSlug: activeVersionGroup.slug,
        })}
        imageAlt={getPokemonDetailFormImageAlt(form, data.species.name)}
        imageUrl={getPokemonDetailFormImageUrl(form)}
        name={pokemonName}
        sentence={getPokemonDetailHeroSentence({ form, stats })}
        shinyImageUrl={getPokemonDetailFormShinyImageUrl(form)}
        typePair={form?.typePair ?? null}
        typeSlug={typeSlug}
      />

      <div className="mt-10 flex flex-col gap-6 sm:mt-12 sm:gap-10">
        <div className="flex flex-col gap-6">
          <PokemonDetailCardRow cards={readingCards} />
          {pairCards(referenceCards).map((cards) => (
            <PokemonDetailCardRow key={cards[0]?.key} cards={cards} />
          ))}
        </div>

        <PokemonDetailEvolutionSection
          activeFormId={form?.form.id ?? null}
          activeGenerationSortOrder={generation.generation.sort_order}
          activeSpeciesId={data.species.id}
          activeVersionGroupId={activeVersionGroup.id}
          activeVersionGroupSlug={activeVersionGroup.slug}
          family={data.evolutionFamily}
        />

        <PokemonDetailLearnsetsCard
          learnsets={scope.learnsets}
          scopeName={versionGroupName}
        />

        <PokemonDetailCardRow
          cards={[
            <PokemonDetailAvailabilityCard
              key="where-to-find"
              rows={getPokemonDetailWhereToFindRows({
                availability: scope.availability,
                versionGroup: scope.versionGroup,
              })}
              scopeName={versionGroupName}
            />,
            inYourPlays ? (
              <Fragment key="in-your-plays">{inYourPlays}</Fragment>
            ) : null,
          ]}
        />
      </div>
    </div>
  );
};
