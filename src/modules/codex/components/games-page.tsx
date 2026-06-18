import { ArrowRightIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { getGamesPageData } from "@/modules/codex/data/queries";
import type { GameCard } from "@/modules/codex/types";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { Badge } from "@/shared/components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

function GameSummaryCard({ card }: { card: GameCard }) {
  return (
    <Link href={appRoutes.codexGame(card.game.slug)} className="group">
      <Card className="group-hover:border-primary/40 group-hover:bg-card/90 h-full transition-colors">
        <div className="px-6 pt-6">
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

export async function GamesPage() {
  const data = await getGamesPageData();

  return (
    <CodexPageShell
      title="Games"
      description="Browse the mainline and Legends games currently supported by Voydex data."
    >
      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        {data.games.map((game) => (
          <GameSummaryCard key={game.game.id} card={game} />
        ))}
      </div>
    </CodexPageShell>
  );
}
