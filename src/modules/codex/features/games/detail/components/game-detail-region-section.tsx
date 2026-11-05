import type {
  CodexGameDetailData,
  CodexGameLeader,
} from "@/modules/codex/features/games/detail/types";
import { OpponentAvatar } from "@/modules/reference/features/trainers/components/opponent-avatar";
import { PokemonTile } from "@/modules/reference/features/pokemon/components/pokemon-tile";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { SectionHead } from "@/shared/components/section-head";
import { cardVariants } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type GameDetailRegionSectionProps = {
  data: CodexGameDetailData;
};

/* "Gym Leaders and Champion", or Alola's kahunas. */
const getLeadersTitle = (leaders: CodexGameLeader[]) =>
  leaders.some((leader) => leader.role === "kahuna")
    ? "Island Kahunas and Champion"
    : "Gym Leaders and Champion";

/*
 * One leader: their portrait on a disc tinted by their type, with the ace
 * of your first battle as a small sticker on its corner (named in its tip);
 * a leader without a portrait shows their initials on the disc. Then the
 * name, the place you face them, and the type.
 */
const LeaderTile = ({ leader }: { leader: CodexGameLeader }) => (
  <li className="flex min-w-0 flex-col items-center gap-1.5 text-center">
    <OpponentAvatar
      ace={leader.ace}
      className="size-14"
      name={leader.name}
      portraitUrl={leader.portraitUrl}
      typeSlug={leader.type?.slug ?? null}
    />
    <span className="text-14 text-ink block w-full truncate font-extrabold">
      {leader.name}
    </span>
    {leader.place ? (
      <span className="text-12 text-ink-2 block w-full truncate font-semibold">
        {leader.place}
      </span>
    ) : null}
    {leader.type ? (
      <PokemonTypeList types={[leader.type]} badgeSize="sm" />
    ) : null}
  </li>
);

/*
 * v3's world card: the region the picked game is set in, in a few lines,
 * with its first partners beside it, then the leaders you battle on the way
 * to the Champion, each with the ace of your first battle and where you
 * face them. A game without them (the Legends games) leaves the leaders
 * out.
 */
export const GameDetailRegionSection = ({
  data,
}: GameDetailRegionSectionProps) => {
  const { firstPartners, leaders, version } = data;

  return (
    <section
      data-slot="card"
      aria-labelledby="game-region-title"
      className={cn(
        cardVariants(),
        "mt-8 gap-0 px-5 py-5 sm:mt-10 sm:px-6 sm:py-6",
      )}
    >
      <div className="grid gap-6 md:grid-cols-[minmax(0,1fr)_auto] md:gap-8">
        <div className="min-w-0">
          <p className="text-13 text-ink-2 font-bold">The region</p>
          <h2 id="game-region-title" className="title-page mt-0.5 mb-3">
            {version.region?.name ?? "Region"}
          </h2>
          {version.region ? (
            <p className="text-15 text-ink-2 max-w-[60ch] font-semibold">
              {version.region.description}
            </p>
          ) : null}
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
                  />
                </li>
              ))}
            </ul>
          </div>
        ) : null}
      </div>

      {leaders.length ? (
        <div className="mt-8">
          <SectionHead
            title={getLeadersTitle(leaders)}
            titleId="game-leaders-title"
            aside="In the order you meet them, with the ace of your first battle"
            headingLevel={3}
            titleClassName="text-20"
          />
          <ul
            aria-labelledby="game-leaders-title"
            className="mt-4 grid grid-cols-3 gap-x-2.5 gap-y-5 sm:grid-cols-5 lg:grid-cols-9"
          >
            {leaders.map((leader) => (
              <LeaderTile key={leader.key} leader={leader} />
            ))}
          </ul>
        </div>
      ) : null}
    </section>
  );
};
