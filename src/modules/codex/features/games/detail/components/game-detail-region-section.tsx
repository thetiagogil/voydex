import type {
  CodexGameDetailData,
  CodexGameLeader,
} from "@/modules/codex/features/games/detail/types";
import { OpponentAvatar } from "@/modules/reference/features/trainers/components/opponent-avatar";
import { PokemonTile } from "@/modules/reference/features/pokemon/components/pokemon-tile";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

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
    <span className="copy-strong text-ink block w-full truncate">
      {leader.name}
    </span>
    {leader.place ? (
      <span className="copy-meta text-ink-2 block w-full truncate">
        {leader.place}
      </span>
    ) : null}
    {leader.type ? (
      <PokemonTypeList types={[leader.type]} badgeSize="sm" />
    ) : null}
  </li>
);

/*
 * The region the picked game is set in, in a few lines, with its first
 * partners beside it; then, as a section of their own, the leaders you
 * battle on the way to the Champion, each with the ace of your first battle
 * and where you face them. A game without them (the Legends games) leaves
 * the leaders out.
 */
export const GameDetailRegionSection = ({
  data,
}: GameDetailRegionSectionProps) => {
  const { firstPartners, leaders, version } = data;

  return (
    <>
      <DetailSectionCard
        title={
          version.region ? `The ${version.region.name} region` : "The region"
        }
        className="mt-8 sm:mt-10"
        contentClassName="grid gap-6 md:grid-cols-[minmax(0,1fr)_auto] md:items-center md:gap-8"
      >
        {version.region ? (
          <p className="copy-body text-ink-2 max-w-[60ch]">
            {version.region.description}
          </p>
        ) : null}

        {firstPartners.pokemon.length ? (
          <div className="min-w-0">
            <h3
              id="game-first-partners-title"
              className="copy-label text-ink-2 mb-2.5 font-sans tracking-normal"
            >
              {firstPartners.isSolo ? "First partner" : "First partners"}
            </h3>
            <ul
              aria-labelledby="game-first-partners-title"
              className="grid grid-cols-3 gap-2 md:flex"
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
      </DetailSectionCard>

      {leaders.length ? (
        <DetailSectionCard
          title={getLeadersTitle(leaders)}
          aside="In the order you meet them, with the ace of your first battle"
          className="mt-8 sm:mt-10"
        >
          <ul
            aria-label={getLeadersTitle(leaders)}
            className="grid grid-cols-3 gap-x-2 gap-y-4 sm:grid-cols-5 lg:grid-cols-9"
          >
            {leaders.map((leader) => (
              <LeaderTile key={leader.key} leader={leader} />
            ))}
          </ul>
        </DetailSectionCard>
      ) : null}
    </>
  );
};
