import { ArrowLeftIcon, ArrowRightIcon } from "lucide-react";
import Link from "next/link";
import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { getGenerationDetailData } from "@/modules/codex/data/queries";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type GenerationDetailPageProps = {
  generationId: string;
};

export async function GenerationDetailPage({
  generationId,
}: GenerationDetailPageProps) {
  const data = await getGenerationDetailData(generationId);

  if (!data) {
    notFound();
  }

  return (
    <CodexPageShell
      title={data.generation.name}
      description={`Mainline Pokemon data seeded for games that started in ${data.generation.start_year}.`}
    >
      <div>
        <Link
          href={appRoutes.codexGenerations}
          className={buttonVariants({ variant: "ghost", size: "sm" })}
        >
          <ArrowLeftIcon aria-hidden />
          Back to generations
        </Link>
      </div>

      <div className="grid gap-4 lg:grid-cols-[2fr_1fr]">
        <Card>
          <CardHeader>
            <CardTitle>Games</CardTitle>
            <CardDescription>
              Games and version groups in this generation.
            </CardDescription>
          </CardHeader>
          <CardContent className="grid gap-3 sm:grid-cols-2">
            {data.games.map(({ coverImageUrl, game, region, versionGroup }) => (
              <Link
                key={game.id}
                href={appRoutes.codexGame(game.slug)}
                className="group flex flex-col gap-3 rounded-lg border p-3"
              >
                <GameCoverArt
                  imageUrl={coverImageUrl}
                  name={game.name}
                  className="rounded-lg"
                />
                <div className="flex items-start justify-between gap-3">
                  <div>
                    <div className="font-medium">{game.name}</div>
                    <div className="text-muted-foreground text-sm">
                      {versionGroup?.name ?? "Unknown version group"}
                    </div>
                  </div>
                  <ArrowRightIcon
                    className="text-muted-foreground size-4 transition-transform group-hover:translate-x-0.5"
                    aria-hidden
                  />
                </div>
                <div className="mt-3 flex flex-wrap gap-2">
                  {region ? (
                    <Badge variant="outline">{region.name}</Badge>
                  ) : null}
                  <Badge variant="secondary">{game.release_year}</Badge>
                </div>
              </Link>
            ))}
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle>Version groups</CardTitle>
            <CardDescription>
              Reference grouping used for mechanics and data.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-2">
            {data.versionGroups.map((versionGroup) => (
              <div
                key={versionGroup.id}
                className="rounded-lg border px-3 py-2 text-sm"
              >
                {versionGroup.name}
              </div>
            ))}
          </CardContent>
        </Card>
      </div>

      <Card>
        <CardHeader>
          <CardTitle>Introduced Pokemon</CardTitle>
          <CardDescription>
            Species first introduced in this generation.
          </CardDescription>
        </CardHeader>
        <CardContent className="grid gap-2 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
          {data.introducedSpecies.map((species) => (
            <Link
              key={species.id}
              href={appRoutes.codexPokemonSpecies(species.slug)}
              className="hover:bg-muted rounded-lg border px-3 py-2 text-sm transition-colors"
            >
              #{species.national_number.toString().padStart(4, "0")}{" "}
              {species.name}
            </Link>
          ))}
        </CardContent>
      </Card>
    </CodexPageShell>
  );
}
