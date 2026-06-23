import { SearchIcon } from "lucide-react";
import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { getGamesPageData } from "@/modules/codex/data/queries";
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
import { Badge } from "@/shared/components/ui/badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  NativeSelect,
  NativeSelectOption,
} from "@/shared/components/ui/native-select";
import { cn } from "@/lib/utils";
type GamesPageProps = {
  params?: {
    generation?: string | null;
    region?: string | null;
  };
};
const GameSummaryCard = ({ card }: { card: GameCard }) => {
  return (
    <CodexResourceCard
      href={appRoutes.codexGame(card.game.slug)}
      description={`${card.generation?.name ?? "Unknown generation"} / ${card.game.release_year}`}
      title={card.game.name}
      media={
        <GameCoverArt imageUrl={card.coverImageUrl} name={card.game.name} />
      }
    >
      <div className="flex flex-wrap gap-2">
        {card.region ? (
          <Badge variant="outline">{card.region.name}</Badge>
        ) : null}
        {card.gameType ? (
          <Badge variant="secondary">{card.gameType.name}</Badge>
        ) : null}
      </div>
      {card.platforms.length ? (
        <p className="text-muted-foreground text-sm">
          {card.platforms.map((platform) => platform.name).join(", ")}
        </p>
      ) : null}
    </CodexResourceCard>
  );
};
export const GamesPage = async ({ params }: GamesPageProps) => {
  const data = await getGamesPageData(params);
  const hasActiveFilters = data.filters.generation || data.filters.region;
  return (
    <CodexPageShell
      title="Games"
      description="Browse the mainline and Legends games currently supported by Voydex data."
    >
      <CodexFilterPanel
        action={appRoutes.codexGames}
        className="sm:grid-cols-[1fr_1fr_auto_auto]"
      >
        <NativeSelect
          name="generation"
          aria-label="Filter games by generation"
          defaultValue={data.filters.generation}
          className="w-full"
        >
          <NativeSelectOption value="">All generations</NativeSelectOption>
          {data.generations.map((generation) => (
            <NativeSelectOption key={generation.id} value={generation.slug}>
              {generation.name}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <NativeSelect
          name="region"
          aria-label="Filter games by region"
          defaultValue={data.filters.region}
          className="w-full"
        >
          <NativeSelectOption value="">All regions</NativeSelectOption>
          {data.regions.map((region) => (
            <NativeSelectOption key={region.id} value={region.slug}>
              {region.name}
            </NativeSelectOption>
          ))}
        </NativeSelect>
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
