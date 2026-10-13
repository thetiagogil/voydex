import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  getPokemonDetailAvailabilityContentGame,
  getPokemonDetailAvailabilityContentLabel,
  getPokemonDetailAvailabilityDetails,
  getPokemonDetailAvailabilityKey,
  getPokemonDetailAvailabilityMethodLabel,
} from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-display";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import { formatPokemonDetailVersionGroupName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-version-group-display";
import type {
  Game,
  PokemonAvailabilitySummary,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonDetailAvailabilityCardProps = {
  activeGame: Game | null;
  activeVersionGroup: VersionGroup | null;
  availability: PokemonAvailabilitySummary[];
};

const AvailabilityRow = ({
  activeGame,
  activeVersionGroup,
  availability,
}: Omit<PokemonDetailAvailabilityCardProps, "availability"> & {
  availability: PokemonAvailabilitySummary;
}) => {
  const contentGame = getPokemonDetailAvailabilityContentGame({
    activeGame,
    activeVersionGroup,
    availability,
  });
  const contentLabel = getPokemonDetailAvailabilityContentLabel({
    activeGame,
    activeVersionGroup,
    availability,
  });
  const details = getPokemonDetailAvailabilityDetails(availability);

  return (
    <div className="border-line grid gap-1.5 py-3 not-first:border-t first:pt-0 last:pb-0 sm:grid-cols-[180px_minmax(0,1fr)] sm:gap-3">
      <dt className="min-w-0 font-extrabold">
        {contentGame ? (
          <Link
            href={appRoutes.codexGame(contentGame.slug)}
            className="hover:text-link focus-visible:outline-focus rounded-xs underline-offset-4 outline-none hover:underline focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
          >
            {contentLabel}
          </Link>
        ) : (
          contentLabel
        )}
      </dt>
      <dd className="min-w-0">
        <span className="block font-bold">
          {getPokemonDetailAvailabilityMethodLabel(availability)}
        </span>
        {details ? (
          <span className="text-14 text-ink-2 block">{details}</span>
        ) : null}
      </dd>
    </div>
  );
};

export const PokemonDetailAvailabilityCard = ({
  activeGame,
  activeVersionGroup,
  availability,
}: PokemonDetailAvailabilityCardProps) => {
  const scopeName =
    activeGame?.name ??
    (activeVersionGroup
      ? formatPokemonDetailVersionGroupName(activeVersionGroup.name)
      : null);

  return (
    <PokemonDetailSectionCard title="Where to find" aside={scopeName}>
      {availability.length ? (
        <dl>
          {availability.map((availabilityRow, index) => (
            <AvailabilityRow
              key={getPokemonDetailAvailabilityKey(availabilityRow, index)}
              activeGame={activeGame}
              activeVersionGroup={activeVersionGroup}
              availability={availabilityRow}
            />
          ))}
        </dl>
      ) : (
        <p className="text-14 text-ink-2 font-semibold">
          {scopeName
            ? `Where to find it in ${scopeName} isn't recorded yet.`
            : "Where to find it isn't recorded yet."}
        </p>
      )}
    </PokemonDetailSectionCard>
  );
};
