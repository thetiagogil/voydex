import { PokemonDetailAbilitiesCard } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-card";
import { PokemonDetailAvailabilityCard } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-card";
import { PokemonDetailCoreDataCard } from "@/modules/codex/features/pokemon/detail/components/core-data/pokemon-detail-core-data-card";
import { PokemonDetailLearnsetsCard } from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnsets-card";
import { PokemonDetailStatsCard } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-card";
import { PokemonDetailTypeMatchupsCard } from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-card";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type { PokemonDetailData } from "@/modules/codex/shared/types";

type PokemonDetailRightSectionProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

export const PokemonDetailRightSection = ({
  data,
  scope,
}: PokemonDetailRightSectionProps) => {
  const versionGroups = data.generationDetails.flatMap((detail) => {
    return detail.versionGroups;
  });

  return (
    <section className="flex min-w-0 flex-col gap-2">
      <PokemonDetailCoreDataCard form={scope.form} />
      <PokemonDetailStatsCard
        attributes={scope.form?.attributes ?? null}
        generation={scope.generation.generation}
      />
      <PokemonDetailTypeMatchupsCard
        generation={scope.generation.generation}
        typePair={scope.form?.typePair ?? null}
      />
      <PokemonDetailAbilitiesCard
        abilities={data.abilities}
        abilityAttributes={data.abilityAttributes}
        attributes={scope.form?.attributes ?? null}
        currentVersionGroup={scope.versionGroup?.versionGroup ?? null}
        versionGroups={versionGroups}
      />
      <PokemonDetailAvailabilityCard
        activeGame={scope.game}
        activeVersionGroup={scope.versionGroup?.versionGroup ?? null}
        availability={scope.availability}
      />
      <PokemonDetailLearnsetsCard learnsets={scope.learnsets} />
    </section>
  );
};
