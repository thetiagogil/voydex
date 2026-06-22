import { ArrowLeftIcon } from "lucide-react";
import Link from "next/link";
import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { getGameDetailData } from "@/modules/codex/data/queries";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type GameDetailPageProps = {
  gameSlug: string;
};

export async function GameDetailPage({ gameSlug }: GameDetailPageProps) {
  const data = await getGameDetailData(gameSlug);

  if (!data) {
    notFound();
  }

  return (
    <CodexPageShell
      title={data.game.name}
      description={`${data.generation?.name ?? "Unknown generation"} reference data for ${data.game.release_year}.`}
    >
      <div>
        <Link
          href={appRoutes.codexGames}
          className={buttonVariants({ variant: "ghost", size: "sm" })}
        >
          <ArrowLeftIcon data-icon="inline-start" aria-hidden />
          Back to games
        </Link>
      </div>

      <div className="grid gap-4 lg:grid-cols-[2fr_1fr]">
        <Card className="bg-card/88">
          <div className="px-6 pt-6">
            <GameCoverArt imageUrl={data.coverImageUrl} name={data.game.name} />
          </div>
          <CardHeader>
            <CardTitle>Game overview</CardTitle>
            <CardDescription>
              Core reference metadata for this game.
            </CardDescription>
          </CardHeader>
          <CardContent className="grid gap-3 sm:grid-cols-2">
            <div className="rounded-lg border p-3">
              <div className="text-muted-foreground text-sm">Version group</div>
              <div className="font-medium">
                {data.versionGroup?.name ?? "Unknown"}
              </div>
            </div>
            <div className="rounded-lg border p-3">
              <div className="text-muted-foreground text-sm">Region</div>
              <div className="font-medium">
                {data.region?.name ?? "Unknown"}
              </div>
            </div>
            <div className="rounded-lg border p-3">
              <div className="text-muted-foreground text-sm">Game type</div>
              <div className="font-medium">
                {data.gameType?.name ?? "Unknown"}
              </div>
            </div>
            <div className="rounded-lg border p-3">
              <div className="text-muted-foreground text-sm">
                Available Pokemon rows
              </div>
              <div className="font-medium">{data.availablePokemonCount}</div>
            </div>
          </CardContent>
        </Card>

        <Card className="bg-card/88">
          <CardHeader>
            <CardTitle>Platforms</CardTitle>
            <CardDescription>
              Native and enhanced platform support.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-wrap gap-2">
            {data.platforms.length ? (
              data.platforms.map((platform) => (
                <Badge key={platform.id} variant="secondary">
                  {platform.name}
                </Badge>
              ))
            ) : (
              <p className="text-muted-foreground text-sm">
                No platform rows are seeded.
              </p>
            )}
          </CardContent>
        </Card>
      </div>

      <div className="grid gap-4 lg:grid-cols-2">
        <Card className="bg-card/88">
          <CardHeader>
            <CardTitle>Pokedexes</CardTitle>
            <CardDescription>
              Dex definitions attached to this version group.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-2">
            {data.pokedexes.length ? (
              data.pokedexes.map((pokedex) => (
                <div
                  key={pokedex.id}
                  className="rounded-lg border px-3 py-2 text-sm"
                >
                  {pokedex.name}
                </div>
              ))
            ) : (
              <p className="text-muted-foreground text-sm">
                No Pokedex rows are seeded.
              </p>
            )}
          </CardContent>
        </Card>

        <Card className="bg-card/88">
          <CardHeader>
            <CardTitle>Content scopes</CardTitle>
            <CardDescription>
              Base game and optional content scope definitions.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-2">
            {data.contentScopes.length ? (
              data.contentScopes.map((scope) => (
                <div
                  key={`${scope.game?.id}-${scope.versionGroup?.id}`}
                  className="flex items-center justify-between gap-3 rounded-lg border px-3 py-2 text-sm"
                >
                  <span>{scope.versionGroup?.name ?? "Unknown scope"}</span>
                  <Badge variant={scope.isBaseScope ? "default" : "outline"}>
                    {scope.isBaseScope ? "Base" : "Optional"}
                  </Badge>
                </div>
              ))
            ) : (
              <p className="text-muted-foreground text-sm">
                No content scopes are seeded.
              </p>
            )}
          </CardContent>
        </Card>
      </div>
    </CodexPageShell>
  );
}
