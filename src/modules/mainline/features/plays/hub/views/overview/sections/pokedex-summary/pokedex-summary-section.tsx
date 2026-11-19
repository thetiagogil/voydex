import { Link } from "@/shared/components/link";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import type { OverviewCatch } from "@/modules/mainline/features/plays/hub/views/overview/data/latest-catches-mapper";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { Progress } from "@/shared/components/ui/progress";

import { getProgressSummaryItems } from "./progress-summary-model";

type PokedexSummarySectionProps = {
  className?: string;
  latestCatches: OverviewCatch[];
  overview: MainlinePlayOverview | null;
  playId: string;
};

/*
 * The Pokédex beside Recent moments: how far it is (a ring, caught and seen)
 * and the newest catches as small Pokémon, with the way on to the Pokédex.
 * Where the game has collectibles they get one row under it, which opens
 * them. Story's count lives in the journey card, so it isn't repeated here.
 * Nothing is drawn for a Play that tracks neither.
 */
export const PokedexSummarySection = ({
  className,
  latestCatches,
  overview,
  playId,
}: PokedexSummarySectionProps) => {
  const items = getProgressSummaryItems(overview, playId);
  const pokedex = items.find((item) => item.label === "Pokédex") ?? null;
  const collectibles =
    items.find((item) => item.label === "Collectibles") ?? null;
  /* Seen counts only where the Play tracks them. */
  const seenCount =
    overview?.pokedex_mode === "caught_and_seen"
      ? (overview.seen_required_pokedex_species_count ?? null)
      : null;

  if (!pokedex && !collectibles) {
    return null;
  }

  const collectiblesRow = collectibles ? (
    <Link
      href={collectibles.href}
      className="tile-link focus-ring flex flex-wrap items-center gap-x-3 gap-y-1"
    >
      <span className="text-ink copy-strong">Collectibles</span>
      <span className="text-ink-2 copy-meta ml-auto tabular-nums">
        {collectibles.detail}
      </span>
      <Progress
        showValue
        value={collectibles.percent}
        max={100}
        aria-label="Collectibles progress"
        className="w-full"
      />
    </Link>
  ) : null;

  if (!pokedex) {
    return (
      <DetailSectionCard
        title="Collectibles"
        className={className}
        contentClassName="pt-0"
      >
        {collectiblesRow}
      </DetailSectionCard>
    );
  }

  return (
    <DetailSectionCard
      title="Pokédex"
      className={className}
      contentClassName="grid content-start gap-4 pt-0"
      more={{ href: pokedex.href, label: "Pokédex" }}
    >
      <div className="flex items-center gap-4">
        <ProgressDonut
          label="Pokédex progress"
          value={pokedex.percent}
          className="w-20 shrink-0"
        />
        <div className="min-w-0">
          <p className="text-ink copy-strong tabular-nums">{pokedex.detail}</p>
          {seenCount !== null ? (
            <p className="text-ink-2 copy-note tabular-nums">
              {seenCount} seen
            </p>
          ) : null}
        </div>
      </div>

      <div className="grid gap-2">
        <p className="text-ink-2 copy-label">Latest catches</p>
        {latestCatches.length ? (
          <ul className="grid max-w-84 grid-cols-6 gap-2">
            {latestCatches.map((caught) => (
              <li key={caught.speciesId}>
                <PokemonAvatar
                  imageUrl={caught.imageUrl}
                  name={caught.name}
                  typeSlug={caught.typeSlug}
                />
              </li>
            ))}
          </ul>
        ) : (
          <p className="text-ink-3 copy-note">
            Nothing caught yet. Mark a Pokémon as caught in the Pokédex and it
            shows up here.
          </p>
        )}
      </div>

      {collectiblesRow}
    </DetailSectionCard>
  );
};
