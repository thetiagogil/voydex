import { ArrowLeftIcon } from "lucide-react";
import Link from "next/link";
import { notFound } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { getPokemonDetailData } from "@/modules/codex/data/queries";
import type {
  PokemonAvailabilitySummary,
  PokemonFormSummary,
} from "@/modules/codex/types";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type PokemonDetailPageProps = {
  speciesSlug: string;
};

const statLabels = [
  ["base_hp", "HP"],
  ["base_attack", "Attack"],
  ["base_defense", "Defense"],
  ["base_special_attack", "Sp. Atk"],
  ["base_special_defense", "Sp. Def"],
  ["base_speed", "Speed"],
] as const;

function formatNationalNumber(number: number) {
  return `#${number.toString().padStart(4, "0")}`;
}

function PokemonFormCard({ form }: { form: PokemonFormSummary }) {
  return (
    <Card>
      <CardHeader>
        <CardDescription>
          {form.introducedGeneration?.name ?? "Unknown generation"}
        </CardDescription>
        <CardTitle>{form.form.name}</CardTitle>
      </CardHeader>
      <CardContent className="flex flex-col gap-4">
        <PokemonTypeList
          primaryType={form.typePair.primaryType}
          secondaryType={form.typePair.secondaryType}
        />

        {form.latestAttributes ? (
          <div className="grid grid-cols-2 gap-2 text-sm sm:grid-cols-3">
            {statLabels.map(([key, label]) => (
              <div key={key} className="bg-background/60 rounded-lg border p-3">
                <div className="text-muted-foreground text-xs">{label}</div>
                <div className="font-semibold">
                  {form.latestAttributes?.[key]}
                </div>
              </div>
            ))}
          </div>
        ) : (
          <p className="text-muted-foreground text-sm">
            No battle attributes are seeded yet.
          </p>
        )}
      </CardContent>
    </Card>
  );
}

function AvailabilityRow({ row }: { row: PokemonAvailabilitySummary }) {
  return (
    <div className="grid gap-2 border-b py-3 last:border-b-0 sm:grid-cols-[1fr_1fr_auto]">
      <div>
        <div className="font-medium">{row.game?.name ?? "Unknown game"}</div>
        <div className="text-muted-foreground text-sm">
          {row.targetVersionGroup?.name ?? "Unknown version group"}
        </div>
      </div>
      <div className="flex flex-wrap items-center gap-2">
        {row.method ? (
          <Badge variant="secondary">{row.method.name}</Badge>
        ) : null}
        {row.sourceVersionGroup &&
        row.sourceVersionGroup.id !== row.targetVersionGroup?.id ? (
          <Badge variant="outline">From {row.sourceVersionGroup.name}</Badge>
        ) : null}
      </div>
      {row.availability.notes ? (
        <div className="text-muted-foreground text-sm">
          {row.availability.notes}
        </div>
      ) : null}
    </div>
  );
}

export async function PokemonDetailPage({
  speciesSlug,
}: PokemonDetailPageProps) {
  const data = await getPokemonDetailData(speciesSlug);

  if (!data) {
    notFound();
  }

  return (
    <CodexPageShell
      title={data.species.name}
      description={`${formatNationalNumber(data.species.national_number)} in the National Pokedex.`}
    >
      <div>
        <Link
          href={appRoutes.codexPokemon}
          className={buttonVariants({ variant: "ghost", size: "sm" })}
        >
          <ArrowLeftIcon className="size-4" aria-hidden />
          Back to Pokedex
        </Link>
      </div>

      <div className="grid gap-4 lg:grid-cols-[2fr_1fr]">
        <div className="flex flex-col gap-4">
          <section className="grid gap-4 md:grid-cols-2">
            {data.forms.map((form) => (
              <PokemonFormCard key={form.form.id} form={form} />
            ))}
          </section>

          <Card>
            <CardHeader>
              <CardTitle>Game availability</CardTitle>
              <CardDescription>
                First entries from the resolved availability view.
              </CardDescription>
            </CardHeader>
            <CardContent>
              {data.availability.length ? (
                <div>
                  {data.availability.map((row) => (
                    <AvailabilityRow
                      key={`${row.availability.game_id}-${row.availability.form_id}-${row.availability.availability_method_id}-${row.availability.target_version_group_id}`}
                      row={row}
                    />
                  ))}
                </div>
              ) : (
                <p className="text-muted-foreground text-sm">
                  No availability rows are seeded for this Pokemon yet.
                </p>
              )}
            </CardContent>
          </Card>
        </div>

        <Card>
          <CardHeader>
            <CardTitle>Pokedex entries</CardTitle>
            <CardDescription>
              Seeded dex appearances for this species.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-3">
            {data.pokedexEntries.length ? (
              data.pokedexEntries.map(({ entry, pokedex }) => (
                <div
                  key={`${entry.pokedex_id}-${entry.species_id}`}
                  className="rounded-lg border p-3"
                >
                  <div className="font-medium">
                    {pokedex?.name ?? "Unknown Pokedex"}
                  </div>
                  <div className="text-muted-foreground text-sm">
                    Number {entry.pokedex_number}
                  </div>
                </div>
              ))
            ) : (
              <p className="text-muted-foreground text-sm">
                No Pokedex entries are seeded for this Pokemon yet.
              </p>
            )}
          </CardContent>
        </Card>
      </div>
    </CodexPageShell>
  );
}
