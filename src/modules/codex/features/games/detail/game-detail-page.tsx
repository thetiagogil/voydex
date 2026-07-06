import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { GameDetailPanels } from "@/modules/codex/features/games/detail/components/game-detail-panels";
import { getGameDetailData } from "@/modules/codex/features/games/detail/server/game-detail-query";
import {
  CodexBackLink,
  CodexInlineEmpty,
} from "@/modules/codex/shared/components/codex-detail";
import type { GameCard, GameDetailData } from "@/modules/codex/shared/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import {
  getPokemonGameColorCssVariables,
  pokemonGameCardSurfaceClassName,
} from "@/shared/components/game/pokemon-game-color-styles";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { formatPokedexName } from "@/shared/domain/pokemon/pokemon-formatters";

type GameDetailPageProps = {
  gameSlug: string;
};

const getGameInitials = (name: string) => {
  const displayName = name.replace(/^Pokémon\s+/i, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];

  return (words.length ? words : [displayName])
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};

const getHeroMetadata = (data: GameDetailData) => {
  return [
    data.game.release_year,
    data.region?.name,
    data.generation?.name ?? "Unknown generation",
  ]
    .filter(Boolean)
    .join(" · ");
};

const GameDetailCoverArt = ({ data }: { data: GameDetailData }) => {
  const initials = getGameInitials(data.game.name);

  return (
    <div className="relative flex h-72 w-full justify-center sm:h-80 md:h-84 md:justify-end lg:h-86">
      <div className="relative flex h-full max-w-full justify-center md:justify-end">
        <div
          aria-hidden
          className="absolute -inset-4 rounded-2xl bg-(--pokemon-game-color)/10 blur-xl"
        />
        {data.coverImageUrl ? (
          <Image
            src={data.coverImageUrl}
            alt={`${data.game.name} cover art`}
            width={640}
            height={640}
            priority
            sizes="(min-width: 1024px) 21.5rem, (min-width: 768px) 21rem, 90vw"
            className="relative z-10 h-full w-auto max-w-full rounded-lg border border-(--pokemon-game-color)/70 object-contain object-right shadow-sm"
          />
        ) : (
          <div className="via-card to-secondary/35 relative z-10 flex aspect-square h-full items-center justify-center rounded-lg border border-(--pokemon-game-color)/70 bg-linear-to-br from-(--pokemon-game-color)/40 shadow-sm">
            <div className="flex size-20 items-center justify-center rounded-2xl bg-(--pokemon-game-color)/16 text-2xl font-black text-(--pokemon-game-color) ring-1 ring-(--pokemon-game-color)/35 backdrop-blur-md">
              {initials}
            </div>
          </div>
        )}
        <div
          aria-hidden
          className="pointer-events-none absolute inset-0 z-20 rounded-lg ring-1 ring-white/10 ring-inset"
        />
      </div>
    </div>
  );
};

const GameDetailHeroBackdrop = ({ data }: { data: GameDetailData }) => {
  if (!data.coverImageUrl) {
    return (
      <div
        aria-hidden
        className="from-background/30 via-card/50 to-card/80 absolute inset-0 bg-linear-to-r"
      />
    );
  }

  return (
    <>
      <Image
        src={data.coverImageUrl}
        alt=""
        fill
        aria-hidden
        priority
        sizes="100vw"
        className="scale-110 object-cover opacity-25 blur-2xl saturate-125"
      />
      <div
        aria-hidden
        className="from-background/24 via-card/68 to-card/94 absolute inset-0 bg-linear-to-r"
      />
      <div
        aria-hidden
        className="absolute inset-0 bg-radial-[at_34%_44%] from-(--pokemon-game-color)/22 via-transparent to-transparent"
      />
    </>
  );
};

const GameDetailSummary = ({ data }: { data: GameDetailData }) => {
  if (!data.gameType?.description) {
    return null;
  }

  return (
    <div className="max-w-2xl">
      <p className="text-muted-foreground text-sm leading-6">
        {data.gameType.description}
      </p>
    </div>
  );
};

const GameDetailFactList = ({ data }: { data: GameDetailData }) => {
  return (
    <dl className="border-app-surface-border grid gap-4 border-t pt-5 sm:grid-cols-3">
      <GameDetailFact
        icon={appIcons.product.game}
        label="Platforms"
        value={<GameDetailPlatformsValue data={data} />}
      />
      <GameDetailFact
        icon={appIcons.product.pokedex}
        label="Available Pokémon"
        value={data.availablePokemonCount.toLocaleString()}
      />
      <GameDetailFact
        icon={appIcons.product.game}
        label="Game type"
        value={data.gameType?.name ?? "Unknown"}
      />
    </dl>
  );
};

const GameDetailPlatformsValue = ({ data }: { data: GameDetailData }) => {
  const [firstPlatform, ...extraPlatforms] = data.platforms;

  if (!firstPlatform) {
    return "Unknown";
  }

  return (
    <span className="flex min-w-0 items-center gap-1.5">
      <span className="truncate">{firstPlatform.name}</span>
      {extraPlatforms.length ? (
        <Tooltip>
          <TooltipTrigger
            render={
              <Badge
                tabIndex={0}
                variant="outline"
                aria-label={`Other platforms: ${extraPlatforms.map((platform) => platform.name).join(", ")}`}
                className="h-5 shrink-0 border-(--pokemon-game-color)/30 bg-(--pokemon-game-color)/12 px-1.5 text-[0.6875rem] leading-none text-(--pokemon-game-color) outline-none focus-visible:ring-(--pokemon-game-color)/70"
              />
            }
          >
            +{extraPlatforms.length}
          </TooltipTrigger>
          <TooltipContent className="max-w-56 flex-col items-start text-left">
            {extraPlatforms.map((platform) => (
              <span key={platform.id}>{platform.name}</span>
            ))}
          </TooltipContent>
        </Tooltip>
      ) : null}
    </span>
  );
};

const GameDetailActions = () => {
  return (
    <div className="flex flex-wrap gap-3">
      <Link
        href={appRoutes.codexPokemon}
        className={cn(
          buttonVariants({ variant: "default", size: "lg" }),
          "text-background h-10 bg-(--pokemon-game-color) px-4 hover:bg-(--pokemon-game-color)/90 has-data-[icon=inline-start]:pl-3",
        )}
      >
        <AppIcon icon={appIcons.product.pokedex} inline="start" aria-hidden />
        Browse Pokémon
      </Link>
    </div>
  );
};

const GameDetailHeading = ({ data }: { data: GameDetailData }) => {
  return (
    <div>
      <h1 className="text-foreground text-3xl leading-tight font-semibold tracking-normal sm:text-4xl lg:text-5xl">
        {data.game.name}
      </h1>
      <p className="text-muted-foreground mt-4 text-base leading-7">
        {getHeroMetadata(data)}
      </p>
    </div>
  );
};

const GameDetailHeroContent = ({ data }: { data: GameDetailData }) => {
  return (
    <div className="flex min-w-0 flex-col justify-center gap-6">
      <div className="flex min-w-0 flex-col gap-5">
        <GameDetailHeading data={data} />
        <GameDetailSummary data={data} />
      </div>

      <GameDetailActions />
    </div>
  );
};

const GameDetailFact = ({
  icon,
  label,
  value,
}: {
  icon: AppIconComponent;
  label: string;
  value: React.ReactNode;
}) => {
  return (
    <div className="flex min-w-0 items-stretch gap-3">
      <div className="flex size-11 shrink-0 items-center justify-center rounded-lg bg-(--pokemon-game-color)/10 text-(--pokemon-game-color) ring-1 ring-(--pokemon-game-color)/24">
        <AppIcon icon={icon} size="sm" />
      </div>
      <div className="min-w-0">
        <dt className="text-muted-foreground text-xs leading-5">{label}</dt>
        <dd className="text-foreground truncate text-sm leading-6 font-medium">
          {value}
        </dd>
      </div>
    </div>
  );
};

const GameDetailHero = ({ data }: { data: GameDetailData }) => {
  return (
    <section
      style={getPokemonGameColorCssVariables(data.game.slug)}
      className="bg-card/30 relative isolate overflow-hidden rounded-xl shadow-(--app-surface-shadow)"
    >
      <GameDetailHeroBackdrop data={data} />
      <div className="relative z-10 flex flex-col gap-6 p-5 sm:p-6 lg:p-8">
        <div className="flex flex-col gap-6 md:flex-row md:items-center lg:gap-8">
          <div className="md:shrink-0">
            <GameDetailCoverArt data={data} />
          </div>
          <div className="flex min-w-0 flex-1 flex-col gap-6">
            <GameDetailHeroContent data={data} />
            <div className="hidden lg:block">
              <GameDetailFactList data={data} />
            </div>
          </div>
        </div>
        <div className="lg:hidden">
          <GameDetailFactList data={data} />
        </div>
      </div>
    </section>
  );
};

const GameDetailSection = ({
  children,
  className,
  contentClassName,
  description,
  id,
  title,
}: {
  children: React.ReactNode;
  className?: string;
  contentClassName?: string;
  description?: string;
  id?: string;
  title: string;
}) => {
  return (
    <Card
      id={id}
      className={cn(
        "h-full gap-0 py-0 backdrop-blur-xl",
        "bg-card/75",
        className,
      )}
    >
      <CardHeader className="px-4 py-3">
        <CardTitle className="text-muted-foreground text-xs font-medium tracking-wider uppercase">
          {title}
        </CardTitle>
        {description ? (
          <CardDescription className="text-sm leading-6 tracking-normal normal-case">
            {description}
          </CardDescription>
        ) : null}
      </CardHeader>
      <Separator className="bg-app-surface-border/60" />
      <CardContent className={cn("px-4 py-4", contentClassName)}>
        {children}
      </CardContent>
    </Card>
  );
};

const GamePokedexesSection = ({ data }: { data: GameDetailData }) => {
  return (
    <GameDetailSection
      id="game-pokedexes"
      title="Game Pokédexes"
      className="h-auto lg:h-full lg:min-h-0"
      contentClassName="p-3 lg:flex lg:min-h-0 lg:flex-1 lg:flex-col lg:overflow-hidden"
    >
      {data.pokedexes.length ? (
        <div className="space-y-2 lg:min-h-0 lg:flex-1 lg:scrollbar-gutter-stable lg:overflow-y-auto lg:px-px lg:py-px lg:pr-2">
          {data.pokedexes.map(({ pokedex, pokemonCount }) => (
            <Link
              key={pokedex.id}
              href={appRoutes.codexGamePokedex(data.game.slug, pokedex.slug)}
              className="bg-background/28 ring-app-surface-border hover:bg-muted/35 focus-visible:ring-ring focus-visible:ring-offset-background group flex min-h-16 items-center gap-3 rounded-lg px-3 py-2.5 ring-1 transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
            >
              <div className="min-w-0 flex-1">
                <h3 className="text-foreground truncate text-sm leading-6 font-medium">
                  {formatPokedexName(pokedex.name)}
                </h3>
                <p className="text-muted-foreground truncate text-xs leading-5">
                  {pokedex.pokedex_kind === "national"
                    ? "National Pokédex"
                    : "Regional Pokédex"}
                </p>
              </div>
              <div className="flex shrink-0 items-baseline gap-1 text-right">
                <span className="text-foreground text-sm leading-6 font-medium">
                  {pokemonCount.toLocaleString()}
                </span>
                <span className="text-muted-foreground hidden text-xs leading-5 sm:inline">
                  Pokémon
                </span>
              </div>
              <AppIcon
                icon={appIcons.actions.continue}
                size="sm"
                aria-hidden
                className="text-muted-foreground group-hover:text-foreground shrink-0 transition-colors"
              />
            </Link>
          ))}
        </div>
      ) : (
        <CodexInlineEmpty>No Pokédex rows are seeded.</CodexInlineEmpty>
      )}
    </GameDetailSection>
  );
};

const RelatedGameCard = ({ card }: { card: GameCard }) => {
  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      style={getPokemonGameColorCssVariables(card.game.slug)}
      className={cn(
        "focus-visible:ring-ring focus-visible:ring-offset-background block min-w-0 rounded-lg focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
      )}
    >
      <article className="min-w-0">
        <div
          className={cn(
            "bg-card/76 relative isolate aspect-square overflow-hidden rounded-lg border",
            pokemonGameCardSurfaceClassName,
          )}
        >
          {card.coverImageUrl ? (
            <Image
              src={card.coverImageUrl}
              alt={`${card.game.name} cover art`}
              fill
              sizes="(min-width: 1280px) 9rem, (min-width: 1024px) 10rem, (min-width: 768px) 7rem, 5.5rem"
              className="object-cover"
            />
          ) : (
            <div className="via-card to-secondary/35 absolute inset-0 bg-linear-to-br from-(--pokemon-game-color)/40" />
          )}
        </div>
        <h3 className="text-foreground mt-2 line-clamp-2 min-h-8 text-center text-xs leading-4 font-medium">
          {card.game.name}
        </h3>
      </article>
    </Link>
  );
};

const RelatedGamesSection = ({ data }: { data: GameDetailData }) => {
  return (
    <GameDetailSection
      title="Related games"
      className="h-auto lg:h-full lg:min-h-0"
      contentClassName="lg:overflow-hidden"
    >
      {data.relatedGames.length ? (
        <div className="-mx-1 overflow-x-auto pb-2 lg:mx-0 lg:overflow-visible lg:pb-0">
          <div className="flex gap-3 px-1 lg:grid lg:grid-cols-4 lg:px-0 xl:grid-cols-5">
            {data.relatedGames.map((card, index) => (
              <div
                key={card.game.id}
                className={cn(
                  "w-22 shrink-0 sm:w-24 md:w-28 lg:w-auto lg:shrink",
                  index >= 4 && "lg:hidden xl:block",
                )}
              >
                <RelatedGameCard card={card} />
              </div>
            ))}
          </div>
        </div>
      ) : (
        <CodexInlineEmpty>No related games are seeded.</CodexInlineEmpty>
      )}
    </GameDetailSection>
  );
};

export const GameDetailPage = async ({ gameSlug }: GameDetailPageProps) => {
  const data = await getGameDetailData(gameSlug);
  if (!data) {
    notFound();
  }

  return (
    <div
      style={getPokemonGameColorCssVariables(data.game.slug)}
      className="flex flex-col gap-4"
    >
      <CodexBackLink href={appRoutes.codexGames}>Back to games</CodexBackLink>

      <GameDetailHero data={data} />

      <GameDetailPanels
        pokedexes={<GamePokedexesSection data={data} />}
        relatedGames={<RelatedGamesSection data={data} />}
      />
    </div>
  );
};
