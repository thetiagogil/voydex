import type { ReactElement } from "react";

import { PokemonDetailAbilitiesCard } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-card";
import { getPokemonDetailAbilitySlots } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { PokemonDetailAvailabilityCard } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-card";
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
  getPokemonDetailFormSwitchItems,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { getPokemonDetailGenerationNavigationItems } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-generation-navigation";
import {
  gameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { formatPokemonDetailVersionGroupName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-version-group-display";
import type { PokemonDetailData } from "@/modules/reference/types";
import { cn } from "@/shared/utils/cn";

type PokemonDetailShellProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
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

/*
 * The Codex Pokémon entry, as v3 lays it out: the head, the hero, then quiet
 * section cards. Lively comes from the Pokémon's art and type colour only.
 */
export const PokemonDetailShell = ({
  data,
  scope,
}: PokemonDetailShellProps) => {
  const { form, generation } = scope;
  const activeGameSlug = scope.game?.slug ?? null;
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
        currentVersionGroup: scope.versionGroup?.versionGroup ?? null,
        versionGroups: data.generationDetails.flatMap((detail) => {
          return detail.versionGroups;
        }),
      })
    : [];
  const pokedexNumbers = getPokemonDetailPokedexNumbers({
    scopedPokedexEntries: scope.pokedexEntries,
  });

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
    pokedexNumbers.length ? (
      <PokemonDetailPokedexNumbersCard
        key="pokedex-numbers"
        gameSlug={activeGameSlug}
        numbers={pokedexNumbers}
      />
    ) : null,
  ];

  return (
    <div className="flex min-w-0 flex-col">
      <PokemonDetailHead
        activeGameSlug={activeGameSlug}
        activePokemon={{ name: data.species.name, slug: data.species.slug }}
        generations={getPokemonDetailGenerationNavigationItems(data, scope)}
      />

      <PokemonDetailHero
        eyebrow={getPokemonDetailHeroEyebrow({ form, species: data.species })}
        formSwitchItems={getPokemonDetailFormSwitchItems({
          activeForm: form,
          activeGameSlug,
          activeGenerationSlug: generation.generation.slug,
          forms: scope.forms,
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

      <div className="mt-10 flex flex-col gap-6 sm:mt-12 sm:gap-10">
        {readingCards.some(Boolean) || referenceCards.some(Boolean) ? (
          <div className="flex flex-col gap-6">
            <PokemonDetailCardRow cards={readingCards} />
            <PokemonDetailCardRow cards={referenceCards} />
          </div>
        ) : null}

        <PokemonDetailEvolutionSection
          activeFormId={form?.form.id ?? null}
          activeGameSlug={activeGameSlug}
          activeGenerationSlug={generation.generation.slug}
          activeGenerationSortOrder={generation.generation.sort_order}
          activeSpeciesId={data.species.id}
          activeVersionGroupId={scope.versionGroup?.versionGroup.id ?? null}
          activeVersionGroupSlug={scope.versionGroup?.versionGroup.slug ?? null}
          family={data.evolutionFamily}
        />

        <PokemonDetailLearnsetsCard
          learnsets={scope.learnsets}
          scopeName={
            scope.versionGroup
              ? formatPokemonDetailVersionGroupName(
                  scope.versionGroup.versionGroup.name,
                )
              : null
          }
        />

        <PokemonDetailAvailabilityCard
          activeGame={scope.game}
          activeVersionGroup={scope.versionGroup?.versionGroup ?? null}
          availability={scope.availability}
        />
      </div>
    </div>
  );
};
