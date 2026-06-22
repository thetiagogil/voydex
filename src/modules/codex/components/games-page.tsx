import { ArrowRightIcon, Gamepad2Icon, SearchIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { getGamesPageData } from "@/modules/codex/data/queries";
import type { GameCard } from "@/modules/codex/types";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { Badge } from "@/shared/components/ui/badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";
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

function GameSummaryCard({ card }: { card: GameCard }) {
  return (
    <Link href={appRoutes.codexGame(card.game.slug)} className="group">
      <Card className="bg-card/88 group-hover:border-primary/50 group-hover:bg-card/95 h-full transition-colors">
        <div className="px-5 pt-5">
          <GameCoverArt imageUrl={card.coverImageUrl} name={card.game.name} />
        </div>
        <CardHeader>
          <div className="flex items-start justify-between gap-3">
            <div>
              <CardDescription>
                {card.generation?.name ?? "Unknown generation"} /{" "}
                {card.game.release_year}
              </CardDescription>
              <CardTitle>{card.game.name}</CardTitle>
            </div>
            <ArrowRightIcon
              className="text-muted-foreground size-4 transition-transform group-hover:translate-x-0.5"
              aria-hidden
            />
          </div>
        </CardHeader>
        <CardContent className="flex flex-col gap-3">
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
        </CardContent>
      </Card>
    </Link>
  );
}

export async function GamesPage({ params }: GamesPageProps) {
  const data = await getGamesPageData(params);
  const hasActiveFilters = data.filters.generation || data.filters.region;

  return (
    <CodexPageShell
      title="Games"
      description="Browse the mainline and Legends games currently supported by Voydex data."
    >
      <form
        action={appRoutes.codexGames}
        className="bg-card/82 grid gap-3 rounded-xl border p-3 backdrop-blur-sm sm:grid-cols-[1fr_1fr_auto_auto]"
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
      </form>

      {data.games.length ? (
        <>
          <div className="text-muted-foreground flex items-center gap-2 text-sm">
            <Gamepad2Icon aria-hidden />
            {data.games.length} games visible
          </div>
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {data.games.map((game) => (
              <GameSummaryCard key={game.game.id} card={game} />
            ))}
          </div>
        </>
      ) : (
        <Empty>
          <EmptyHeader>
            <EmptyTitle>No games found</EmptyTitle>
            <EmptyDescription>
              Try a different generation or region filter.
            </EmptyDescription>
          </EmptyHeader>
          <EmptyContent>
            <Link
              href={appRoutes.codexGames}
              className={buttonVariants({ variant: "outline" })}
            >
              Reset filters
            </Link>
          </EmptyContent>
        </Empty>
      )}
    </CodexPageShell>
  );
}
