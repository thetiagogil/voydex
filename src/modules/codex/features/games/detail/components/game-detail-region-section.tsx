import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import { CodexPokemonCardLink } from "@/modules/codex/shared/components/codex-pokemon-card-link";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
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
            className="max-w-[60ch] items-start px-4.5 py-3.5 text-left"
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
              className="grid grid-cols-3 gap-2 md:w-[312px]"
            >
              {firstPartners.pokemon.map((pokemon) => (
                <li key={pokemon.key} className="min-w-0">
                  <CodexPokemonCardLink
                    href={pokemon.href}
                    imageUrl={pokemon.imageUrl}
                    name={pokemon.name}
                    number={formatPokemonNationalNumber(pokemon.nationalNumber)}
                    size="sm"
                    types={pokemon.types}
                  />
                </li>
              ))}
            </ul>
          </div>
        ) : null}
      </div>

      {hasLeaders ? (
        <div className="border-line mt-6 border-t pt-5">
          <SectionHead
            title="Leaders and Champion"
            headingLevel={3}
            titleClassName="text-20"
          />
          {/* TODO(v3-data): leaders for the Codex; tracking.mainline_opponents and mainline_badges are readable signed in only (no anon grant), and opponents have no town or ace. */}
          <PendingData
            className="mt-3.5"
            label="Leaders and Champion"
            note="Each leader's type, ace and town, in badge order."
          >
            <span className="flex flex-wrap justify-center gap-2.5">
              {Array.from({ length: LEADER_PREVIEW_COUNT }, (_, index) => (
                <span key={index} className="empty-slot size-9 rounded-full" />
              ))}
            </span>
          </PendingData>
        </div>
      ) : null}
    </section>
  );
};
