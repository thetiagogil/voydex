import { notFound } from "next/navigation";
import { appRoutes } from "@/config/routes";
import {
  CodexBackLink,
  CodexDetailHero,
  CodexInfoGrid,
  CodexInfoTile,
  CodexInlineEmpty,
  CodexLinkedPanel,
  CodexSectionCard,
} from "@/modules/codex/components/codex-detail";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { GameCoverArt } from "@/modules/codex/components/game-cover-art";
import { getGenerationDetailData } from "@/modules/codex/data/generation-queries";
import { Badge } from "@/shared/components/ui/badge";

type GenerationDetailPageProps = {
  generationId: string;
};

export const GenerationDetailPage = async ({
  generationId,
}: GenerationDetailPageProps) => {
  const data = await getGenerationDetailData(generationId);
  if (!data) {
    notFound();
  }
  return (
    <CodexPageShell
      title={data.generation.name}
      description={`Mainline Pokémon data seeded for games that started in ${data.generation.start_year}.`}
    >
      <CodexBackLink href={appRoutes.codexGenerations}>
        Back to generations
      </CodexBackLink>

      <CodexDetailHero>
        <div className="flex flex-col gap-4">
          <div>
            <p className="text-muted-foreground text-sm">
              Started in {data.generation.start_year}
            </p>
            <h2 className="mt-1 text-3xl font-semibold tracking-normal">
              {data.generation.name}
            </h2>
          </div>
          <CodexInfoGrid className="sm:grid-cols-3">
            <CodexInfoTile label="Games">{data.games.length}</CodexInfoTile>
            <CodexInfoTile label="Version groups">
              {data.versionGroups.length}
            </CodexInfoTile>
            <CodexInfoTile label="Pokémon introduced">
              {data.introducedSpecies.length}
            </CodexInfoTile>
          </CodexInfoGrid>
        </div>
      </CodexDetailHero>

      <div className="grid gap-4 lg:grid-cols-[2fr_1fr]">
        <CodexSectionCard
          title="Games"
          description="Games and version groups in this generation."
          contentClassName="grid gap-3 sm:grid-cols-2"
        >
          {data.games.length ? (
            data.games.map(({ coverImageUrl, game, region, versionGroup }) => (
              <CodexLinkedPanel
                key={game.id}
                href={appRoutes.codexGame(game.slug)}
                className="flex-col"
                showArrow={false}
              >
                <GameCoverArt
                  imageUrl={coverImageUrl}
                  name={game.name}
                  className="rounded-lg"
                />
                <div>
                  <div className="font-medium">{game.name}</div>
                  <div className="text-muted-foreground text-sm">
                    {versionGroup?.name ?? "Unknown version group"}
                  </div>
                </div>
                <div className="mt-3 flex flex-wrap gap-2">
                  {region ? (
                    <Badge variant="outline">{region.name}</Badge>
                  ) : null}
                  <Badge variant="secondary">{game.release_year}</Badge>
                </div>
              </CodexLinkedPanel>
            ))
          ) : (
            <CodexInlineEmpty>
              No games are seeded for this generation.
            </CodexInlineEmpty>
          )}
        </CodexSectionCard>

        <CodexSectionCard
          title="Version groups"
          description="Reference grouping used for mechanics and data."
          contentClassName="flex flex-col gap-2"
        >
          {data.versionGroups.length ? (
            data.versionGroups.map((versionGroup) => (
              <CodexInfoTile key={versionGroup.id} label="Version group">
                {versionGroup.name}
              </CodexInfoTile>
            ))
          ) : (
            <CodexInlineEmpty>No version groups are seeded.</CodexInlineEmpty>
          )}
        </CodexSectionCard>
      </div>

      <CodexSectionCard
        title="Introduced Pokémon"
        description="Species first introduced in this generation."
        contentClassName="grid gap-2 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4"
      >
        {data.introducedSpecies.length ? (
          data.introducedSpecies.map((species) => (
            <CodexLinkedPanel
              key={species.id}
              href={appRoutes.codexPokemonSpecies(species.slug)}
              className="items-start py-2"
            >
              <span>
                #{species.national_number.toString().padStart(4, "0")}{" "}
                {species.name}
              </span>
            </CodexLinkedPanel>
          ))
        ) : (
          <CodexInlineEmpty>
            No introduced Pokémon are seeded for this generation.
          </CodexInlineEmpty>
        )}
      </CodexSectionCard>
    </CodexPageShell>
  );
};
