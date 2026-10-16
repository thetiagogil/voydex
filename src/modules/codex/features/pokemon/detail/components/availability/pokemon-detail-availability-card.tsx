import Link from "next/link";

import type { PokemonDetailWhereToFindRow } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailAvailabilityCardProps = {
  rows: PokemonDetailWhereToFindRow[];
  /* What it is read in, as in "Generation VIII". */
  scopeName: string;
};

const WhereToFindRow = ({ row }: { row: PokemonDetailWhereToFindRow }) => {
  return (
    <div className="grid grid-cols-[2.5rem_minmax(0,1fr)] gap-x-3 gap-y-1.5 py-3 first:pt-0 last:pb-0 sm:grid-cols-[2.5rem_220px_minmax(0,1fr)] sm:gap-x-4">
      <span
        aria-hidden
        className="row-span-2 flex justify-center sm:row-span-1"
      >
        {row.cover ? (
          <GameCover
            alt=""
            coverImageUrl={row.cover.coverImageUrl}
            gameName={row.cover.gameName}
            gameSlug={row.cover.gameSlug}
            size="dock"
          />
        ) : null}
      </span>
      <dt className="min-w-0 font-extrabold sm:pt-2">
        {row.href ? (
          <Link
            href={row.href}
            className="hover:text-link focus-visible:outline-focus rounded-xs underline-offset-4 outline-none hover:underline focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
          >
            {row.label}
          </Link>
        ) : (
          row.label
        )}
      </dt>
      <dd className="flex min-w-0 flex-col gap-1.5 sm:pt-2">
        {row.ways.length ? (
          row.ways.map((way) => (
            <span key={way.key} className="block">
              <span className="block font-bold">{way.label}</span>
              {way.detail ? (
                <span className="text-14 text-ink-2 block">{way.detail}</span>
              ) : null}
            </span>
          ))
        ) : (
          <span className="text-ink-2 font-semibold">{row.missingLabel}</span>
        )}
      </dd>
    </div>
  );
};

/*
 * v3's Where to find, for the whole generation: one row per game of each
 * group with its box, then that group's expansions.
 */
export const PokemonDetailAvailabilityCard = ({
  rows,
  scopeName,
}: PokemonDetailAvailabilityCardProps) => {
  return (
    <DetailSectionCard title="Where to find" aside={scopeName}>
      {rows.length ? (
        <dl>
          {rows.map((row) => (
            <WhereToFindRow key={row.key} row={row} />
          ))}
        </dl>
      ) : (
        <p className="text-14 text-ink-2 font-semibold">
          {`Where to find it in ${scopeName} isn't recorded yet.`}
        </p>
      )}
    </DetailSectionCard>
  );
};
