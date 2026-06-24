import { notFound } from "next/navigation";
import { appRoutes } from "@/config/routes";
import {
  CodexBackLink,
  CodexDetailHero,
  CodexInfoGrid,
  CodexInfoTile,
  CodexInlineEmpty,
  CodexSectionCard,
} from "@/modules/codex/components/codex-detail";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { getGameDetailData } from "@/modules/codex/data/game-queries";
import { Badge } from "@/shared/components/ui/badge";

type GameDetailPageProps = {
  gameSlug: string;
};

export const GameDetailPage = async ({ gameSlug }: GameDetailPageProps) => {
  const data = await getGameDetailData(gameSlug);
  if (!data) {
    notFound();
  }
  return (
    <CodexPageShell
      title={data.game.name}
      description={`${data.generation?.name ?? "Unknown generation"} reference data for ${data.game.release_year}.`}
    >
      <CodexBackLink href={appRoutes.codexGames}>Back to games</CodexBackLink>

      <CodexDetailHero
        media={
          <GameCoverArt imageUrl={data.coverImageUrl} name={data.game.name} />
        }
      >
        <div className="flex flex-col gap-4">
          <div>
            <p className="text-muted-foreground text-sm">
              {data.generation?.name ?? "Unknown generation"} /{" "}
              {data.game.release_year}
            </p>
            <h2 className="mt-1 text-3xl font-semibold tracking-normal">
              {data.game.name}
            </h2>
          </div>
          <div className="flex flex-wrap gap-2">
            {data.region ? (
              <Badge variant="outline">{data.region.name}</Badge>
            ) : null}
            {data.gameType ? (
              <Badge variant="secondary">{data.gameType.name}</Badge>
            ) : null}
            {data.versionGroup ? (
              <Badge variant="outline">{data.versionGroup.name}</Badge>
            ) : null}
          </div>
        </div>
      </CodexDetailHero>

      <div className="grid gap-4 lg:grid-cols-[2fr_1fr]">
        <CodexSectionCard
          title="Game overview"
          description="Core reference metadata for this game."
        >
          <CodexInfoGrid>
            <CodexInfoTile label="Version group">
              {data.versionGroup?.name ?? "Unknown"}
            </CodexInfoTile>
            <CodexInfoTile label="Region">
              {data.region?.name ?? "Unknown"}
            </CodexInfoTile>
            <CodexInfoTile label="Game type">
              {data.gameType?.name ?? "Unknown"}
            </CodexInfoTile>
            <CodexInfoTile label="Available Pokemon rows">
              {data.availablePokemonCount}
            </CodexInfoTile>
          </CodexInfoGrid>
        </CodexSectionCard>

        <CodexSectionCard
          title="Platforms"
          description="Native and enhanced platform support."
          contentClassName="flex flex-wrap gap-2"
        >
          {data.platforms.length ? (
            data.platforms.map((platform) => (
              <Badge key={platform.id} variant="secondary">
                {platform.name}
              </Badge>
            ))
          ) : (
            <CodexInlineEmpty>No platform rows are seeded.</CodexInlineEmpty>
          )}
        </CodexSectionCard>
      </div>

      <div className="grid gap-4 lg:grid-cols-2">
        <CodexSectionCard
          title="Pokedexes"
          description="Dex definitions attached to this version group."
          contentClassName="flex flex-col gap-2"
        >
          {data.pokedexes.length ? (
            data.pokedexes.map((pokedex) => (
              <CodexInfoTile key={pokedex.id} label="Pokedex">
                {pokedex.name}
              </CodexInfoTile>
            ))
          ) : (
            <CodexInlineEmpty>No Pokedex rows are seeded.</CodexInlineEmpty>
          )}
        </CodexSectionCard>

        <CodexSectionCard
          title="Content scopes"
          description="Base game and optional content scope definitions."
          contentClassName="flex flex-col gap-2"
        >
          {data.contentScopes.length ? (
            data.contentScopes.map((scope) => (
              <div
                key={`${scope.game?.id}-${scope.versionGroup?.id}`}
                className="bg-background/45 ring-app-surface-border flex items-center justify-between gap-3 rounded-lg px-3 py-2 text-sm ring-1"
              >
                <span>{scope.versionGroup?.name ?? "Unknown scope"}</span>
                <Badge variant={scope.isBaseScope ? "default" : "outline"}>
                  {scope.isBaseScope ? "Base" : "Optional"}
                </Badge>
              </div>
            ))
          ) : (
            <CodexInlineEmpty>No content scopes are seeded.</CodexInlineEmpty>
          )}
        </CodexSectionCard>
      </div>
    </CodexPageShell>
  );
};
