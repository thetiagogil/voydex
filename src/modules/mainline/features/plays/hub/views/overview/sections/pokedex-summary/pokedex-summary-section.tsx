import { useId } from "react";

import type { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/types";
import type { OverviewCatch } from "@/modules/mainline/features/plays/hub/views/overview/data/latest-catches-mapper";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { SectionHead } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";
import { ProgressDonut } from "@/shared/components/progress-donut";

import { getProgressSummaryItems } from "./progress-summary-model";

type PokedexSummarySectionProps = {
  className?: string;
  latestCatches: OverviewCatch[];
  overview: MainlinePlayOverview | null;
  playId: string;
};

/*
 * The Pokédex beside Latest moments, its heading on the wall like theirs:
 * how far it is (a ring, caught and seen)
 * and the newest catches as two rows of small Pokémon across the card, with
 * the way on to the Pokédex. Story's count lives in the journey card and
 * collectibles in their own tab, so neither is repeated here. Nothing is
 * drawn for a Play that tracks no Pokédex.
 */
export const PokedexSummarySection = ({
  className,
  latestCatches,
  overview,
  playId,
}: PokedexSummarySectionProps) => {
  const items = getProgressSummaryItems(overview, playId);
  const pokedex = items.find((item) => item.label === "Pokédex") ?? null;
  /* Seen counts only where the Play tracks them. */
  const seenCount =
    overview?.pokedex_mode === "caught_and_seen"
      ? (overview.seen_required_pokedex_species_count ?? null)
      : null;

  const headingId = useId();

  if (!pokedex) {
    return null;
  }

  return (
    <section
      aria-labelledby={headingId}
      className={cn("flex min-w-0 flex-col gap-3", className)}
    >
      <SectionHead
        title="Pokédex"
        titleId={headingId}
        more={{ href: pokedex.href, label: "Pokédex" }}
      />
      <Card className="grid flex-1 content-start gap-4">
        <div className="flex items-center gap-4">
          <ProgressDonut
            label="Pokédex progress"
            value={pokedex.percent}
            className="w-20 shrink-0"
          />
          <div className="min-w-0">
            <p className="text-ink copy-strong tabular-nums">
              {pokedex.detail}
            </p>
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
            <ul className="grid grid-cols-6 gap-2 sm:gap-3">
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
      </Card>
    </section>
  );
};
