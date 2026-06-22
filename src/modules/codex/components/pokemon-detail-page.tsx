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
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { getPokemonDetailData } from "@/modules/codex/data/queries";
import type {
  PokemonAvailabilitySummary,
  PokemonFormSummary,
} from "@/modules/codex/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/shared/pokemon/constants";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/pokemon/pokemon-images";

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
  const primaryTypeSlug = form.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;

  return (
    <CodexSectionCard
      title={form.form.name}
      description={form.introducedGeneration?.name ?? "Unknown generation"}
      media={
        <PokemonPortrait
          alt={getPokemonFormImageAlt(form.form)}
          imageUrl={getPokemonFormImageUrl(form.form)}
          type={portraitType}
          className="mx-auto"
        />
      }
      contentClassName="flex flex-col gap-4"
    >
      <PokemonTypeList
        primaryType={form.typePair.primaryType}
        secondaryType={form.typePair.secondaryType}
      />

      {form.latestAttributes ? (
        <CodexInfoGrid className="grid-cols-2 sm:grid-cols-3">
          {statLabels.map(([key, label]) => (
            <CodexInfoTile key={key} label={label}>
              {form.latestAttributes?.[key]}
            </CodexInfoTile>
          ))}
        </CodexInfoGrid>
      ) : (
        <CodexInlineEmpty>
          No battle attributes are seeded yet.
        </CodexInlineEmpty>
      )}
    </CodexSectionCard>
  );
}

function AvailabilityRow({ row }: { row: PokemonAvailabilitySummary }) {
  return (
    <div className="border-app-surface-border grid gap-2 border-b py-3 last:border-b-0 sm:grid-cols-[1fr_1fr_auto]">
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

  const defaultForm =
    data.forms.find((form) => form.form.is_default) ?? data.forms[0] ?? null;
  const defaultPrimaryTypeSlug = defaultForm?.typePair.primaryType?.slug;
  const portraitType =
    defaultPrimaryTypeSlug && isPokemonTypeSlug(defaultPrimaryTypeSlug)
      ? defaultPrimaryTypeSlug
      : null;

  return (
    <CodexPageShell
      title={data.species.name}
      description={`${formatNationalNumber(data.species.national_number)} in the National Pokedex.`}
    >
      <CodexBackLink href={appRoutes.codexPokemon}>
        Back to Pokedex
      </CodexBackLink>

      <CodexDetailHero
        media={
          defaultForm ? (
            <PokemonPortrait
              alt={getPokemonFormImageAlt(defaultForm.form)}
              imageUrl={getPokemonFormImageUrl(defaultForm.form)}
              type={portraitType}
              className="mx-auto w-full max-w-56"
              priority
            />
          ) : null
        }
      >
        <div className="flex flex-col gap-4">
          <div>
            <p className="text-muted-foreground text-sm">
              {formatNationalNumber(data.species.national_number)}
            </p>
            <h2 className="mt-1 text-3xl font-semibold tracking-normal">
              {data.species.name}
            </h2>
          </div>
          {defaultForm ? (
            <PokemonTypeList
              primaryType={defaultForm.typePair.primaryType}
              secondaryType={defaultForm.typePair.secondaryType}
            />
          ) : null}
          <div className="flex flex-wrap gap-2">
            <Badge variant="secondary">{data.forms.length} forms</Badge>
            <Badge variant="outline">
              {data.availability.length} availability rows
            </Badge>
            {data.species.is_legendary ? (
              <Badge variant="secondary">Legendary</Badge>
            ) : null}
            {data.species.is_mythical ? (
              <Badge variant="secondary">Mythical</Badge>
            ) : null}
          </div>
        </div>
      </CodexDetailHero>

      <div className="grid gap-4 lg:grid-cols-[2fr_1fr]">
        <div className="flex flex-col gap-4">
          <section className="grid gap-4 md:grid-cols-2">
            {data.forms.map((form) => (
              <PokemonFormCard key={form.form.id} form={form} />
            ))}
          </section>

          <CodexSectionCard
            title="Game availability"
            description="First entries from the resolved availability view."
          >
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
              <CodexInlineEmpty>
                No availability rows are seeded for this Pokemon yet.
              </CodexInlineEmpty>
            )}
          </CodexSectionCard>
        </div>

        <CodexSectionCard
          title="Pokedex entries"
          description="Seeded dex appearances for this species."
          contentClassName="flex flex-col gap-3"
        >
          {data.pokedexEntries.length ? (
            data.pokedexEntries.map(({ entry, pokedex }) => (
              <CodexInfoTile
                key={`${entry.pokedex_id}-${entry.species_id}`}
                label={pokedex?.name ?? "Unknown Pokedex"}
              >
                Number {entry.pokedex_number}
              </CodexInfoTile>
            ))
          ) : (
            <CodexInlineEmpty>
              No Pokedex entries are seeded for this Pokemon yet.
            </CodexInlineEmpty>
          )}
        </CodexSectionCard>
      </div>
    </CodexPageShell>
  );
}
