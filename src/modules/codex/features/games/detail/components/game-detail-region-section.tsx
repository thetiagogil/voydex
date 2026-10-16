import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import { PokemonTile } from "@/modules/reference/features/pokemon/components/pokemon-tile";
import { PendingData } from "@/shared/components/pending-data";
import { SectionHead } from "@/shared/components/section-head";
import { cardVariants } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type GameDetailRegionSectionProps = {
  data: CodexGameDetailData;
};

const LEADER_PREVIEW_COUNT = 9;

/*
 * v3's world card: the region the picked game is set in, with its first
 * partners beside it, then the leaders you battle on the way to the
 * Champion. The region's words and the leaders aren't in Voydex yet, so they
 * stand as pending markers; the Legends games, which have no Gym challenge,
 * leave the leaders out.
 */
export const GameDetailRegionSection = ({
  data,
}: GameDetailRegionSectionProps) => {
  const { firstPartners, version } = data;
  const hasLeaders = version.kind !== "legends";

  return (
    <section
      aria-labelledby="game-region-title"
      className={cn(
        cardVariants(),
        "mt-8 gap-0 px-5 py-5 sm:mt-10 sm:px-6 sm:py-6",
      )}
    >
      <div className="grid gap-6 md:grid-cols-[minmax(0,1fr)_auto] md:gap-8">
        <div className="min-w-0">
          <p className="text-13 text-ink-2 font-bold">The region</p>
          <h2
            id="game-region-title"
            className="text-28 sm:text-32 mt-0.5 mb-3 leading-tight tracking-[-0.015em]"
          >
            {version.region?.name ?? "Region"}
          </h2>
          {/* TODO(v3-data): a description for each region (none on reference.regions). */}
          <PendingData
            className="items-start px-4.5 py-3.5 text-left"
            label="About the region"
            note="Where the journey runs, from the first town to the League."
          />
        </div>

        {firstPartners.pokemon.length ? (
          <div className="min-w-0">
            <h3
              id="game-first-partners-title"
              className="text-13 text-ink-2 mb-2.5 font-sans font-bold tracking-normal"
            >
              {firstPartners.isSolo ? "First partner" : "First partners"}
            </h3>
            <ul
              aria-labelledby="game-first-partners-title"
              className="grid grid-cols-3 gap-2.5 md:flex"
            >
              {firstPartners.pokemon.map((pokemon) => (
                <li key={pokemon.key} className="min-w-0">
                  <PokemonTile
                    href={pokemon.href}
                    imageUrl={pokemon.imageUrl}
                    name={pokemon.name}
                    primaryTypeSlug={pokemon.types[0]?.slug}
                    tone="type"
                  />
                </li>
              ))}
            </ul>
          </div>
        ) : null}
      </div>

      {hasLeaders ? (
        <div className="mt-8">
          <SectionHead
            title="Gym Leaders and Champion"
            aside="In badge order"
            headingLevel={3}
            titleClassName="text-20"
          />
          {/* TODO(v3-data): leaders for the Codex; tracking.mainline_opponents and mainline_badges are readable signed in only (no anon grant), and opponents have no town or ace. */}
          <PendingData
            className="mt-3.5 gap-3 pt-4 pb-4"
            note="Each leader's type, ace and town, in badge order."
          >
            {/* v3's row: a type stamp over each leader's name and town. */}
            <span className="grid grid-cols-3 gap-x-2.5 gap-y-4 sm:grid-cols-5 lg:grid-cols-9">
              {Array.from({ length: LEADER_PREVIEW_COUNT }, (_, index) => (
                <span
                  key={index}
                  className="flex flex-col items-center gap-1.5"
                >
                  <span className="empty-slot size-11 rounded-full" />
                  <span className="bg-line h-2.5 w-14 rounded-full" />
                  <span className="bg-line/60 h-2 w-10 rounded-full" />
                </span>
              ))}
            </span>
          </PendingData>
        </div>
      ) : null}
    </section>
  );
};
