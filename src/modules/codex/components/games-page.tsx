import { SearchIcon } from "lucide-react";
import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { getGamesPageData } from "@/modules/codex/data/game-queries";
import type { GameCard } from "@/modules/codex/types";
import {
  CodexBrowseMeta,
  CodexEmptyState,
  CodexFilterPanel,
  CodexResourceCard,
  CodexResourceGrid,
} from "@/modules/codex/components/codex-browse";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { SelectControl } from "@/shared/components/select-control";
import { Badge } from "@/shared/components/ui/badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { formatPokemonDisplayText } from "@/shared/domain/pokemon/display-text";
import { cn } from "@/lib/utils";

type GamesPageProps = {
  params?: {
    generation?: string | null;
    region?: string | null;
  };
};

const GameSummaryCard = ({ card }: { card: GameCard }) => {
  const gameName = formatPokemonDisplayText(card.game.name);

  return (
    <CodexResourceCard
      href={appRoutes.codexGame(card.game.slug)}
      description={`${card.generation?.name ?? "Unknown generation"} / ${card.game.release_year}`}
      title={gameName}
      media={<GameCoverArt imageUrl={card.coverImageUrl} name={gameName} />}
    >
      <div className="flex flex-wrap gap-2">
        {card.region ? (
          <Badge variant="outline">
            {formatPokemonDisplayText(card.region.name)}
          </Badge>
        ) : null}
        {card.gameType ? (
          <Badge variant="secondary">
            {formatPokemonDisplayText(card.gameType.name)}
          </Badge>
        ) : null}
      </div>
      {card.platforms.length ? (
        <p className="text-muted-foreground text-sm">
          {card.platforms
            .map((platform) => formatPokemonDisplayText(platform.name))
            .join(", ")}
        </p>
      ) : null}
    </CodexResourceCard>
  );
};

export const GamesPage = async ({ params }: GamesPageProps) => {
  const data = await getGamesPageData(params);
  const hasActiveFilters = data.filters.generation || data.filters.region;
  const generationOptions = [
    { label: "All generations", value: "" },
    ...data.generations.map((generation) => ({
      label: generation.name,
      value: generation.slug,
    })),
  ];
  const regionOptions = [
    { label: "All regions", value: "" },
    ...data.regions.map((region) => ({
      label: region.name,
      value: region.slug,
    })),
  ];

  return (
    <CodexPageShell
      title="Games"
      description="Browse the mainline and Legends games currently supported by Voydex data."
    >
      <CodexFilterPanel
        action={appRoutes.codexGames}
        className="sm:grid-cols-[1fr_1fr_auto_auto]"
      >
        <SelectControl
          name="generation"
          ariaLabel="Filter games by generation"
          defaultValue={data.filters.generation}
          options={generationOptions}
          placeholder="All generations"
          className="w-full"
        />
        <SelectControl
          name="region"
          ariaLabel="Filter games by region"
          defaultValue={data.filters.region}
          options={regionOptions}
          placeholder="All regions"
          className="w-full"
        />
        <Button type="submit">
          <SearchIcon data-icon="inline-start" />
          Filter
        </Button>
        {hasActiveFilters ? (
          <Link
            href={appRoutes.codexGames}
            className={cn(buttonVariants({ variant: "outline" }), "sm:w-auto")}
          >
            Clear
          </Link>
        ) : null}
      </CodexFilterPanel>

      {data.games.length ? (
        <>
          <CodexBrowseMeta>{data.games.length} games visible</CodexBrowseMeta>
          <CodexResourceGrid>
            {data.games.map((game) => (
              <GameSummaryCard key={game.game.id} card={game} />
            ))}
          </CodexResourceGrid>
        </>
      ) : (
        <CodexEmptyState
          title="No games found"
          description="Try a different generation or region filter."
          action={
            <Link
              href={appRoutes.codexGames}
              className={buttonVariants({ variant: "outline" })}
            >
              Reset filters
            </Link>
          }
        />
      )}
    </CodexPageShell>
  );
};
