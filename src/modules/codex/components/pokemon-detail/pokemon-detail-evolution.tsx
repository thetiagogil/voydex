import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  CodexInlineEmpty,
  CodexSectionCard,
} from "@/modules/codex/components/codex-detail";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
} from "@/modules/codex/types";
import { cn } from "@/lib/utils";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

type PokemonEvolutionSectionProps = {
  currentSpeciesId: number;
  edges: PokemonEvolutionEdgeSummary[];
  species: PokemonEvolutionSpeciesSummary[];
};

type EvolutionSpeciesCardProps = {
  currentSpeciesId: number;
  summary: PokemonEvolutionSpeciesSummary;
};

type EvolutionMethodListProps = {
  edges: PokemonEvolutionEdgeSummary[];
};

const getEvolutionCondition = ({
  edge,
  method,
}: PokemonEvolutionEdgeSummary) => {
  if (edge.condition_summary) {
    return edge.condition_summary;
  }

  if (edge.minimum_level) {
    return `Level ${edge.minimum_level}`;
  }

  return method?.description ?? "Evolution method details are not seeded.";
};

const EvolutionSpeciesCard = ({
  currentSpeciesId,
  summary,
}: EvolutionSpeciesCardProps) => {
  const primaryTypeSlug = summary.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;
  const isCurrentSpecies = summary.species.id === currentSpeciesId;

  return (
    <Link
      href={appRoutes.codexPokemonSpecies(summary.species.slug)}
      className={cn(
        "bg-background/42 ring-app-surface-border focus-visible:ring-ring focus-visible:ring-offset-background group hover:bg-muted/45 flex items-center gap-3 rounded-lg p-3 ring-1 transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
        isCurrentSpecies && "bg-muted/55 ring-primary/60",
      )}
      aria-current={isCurrentSpecies ? "page" : undefined}
    >
      <PokemonPortrait
        alt={getPokemonFormImageAlt(summary.defaultForm)}
        imageUrl={getPokemonFormImageUrl(summary.defaultForm)}
        type={portraitType}
        className="size-16 shrink-0"
        imageClassName="p-1.5"
      />
      <div className="min-w-0 flex-1">
        <div className="text-muted-foreground text-xs font-medium">
          {formatPokemonNationalNumber(summary.species.national_number)}
        </div>
        <div className="truncate font-semibold">{summary.species.name}</div>
        <PokemonTypeList
          primaryType={summary.typePair.primaryType}
          secondaryType={summary.typePair.secondaryType}
          badgeSize="sm"
          className="mt-2"
        />
      </div>
    </Link>
  );
};

const EvolutionMethodList = ({ edges }: EvolutionMethodListProps) => {
  if (!edges.length) {
    return null;
  }

  return (
    <div className="grid gap-2">
      {edges.map((edge) => (
        <div
          key={edge.edge.id}
          className="bg-background/35 ring-app-surface-border grid gap-2 rounded-lg p-3 ring-1 sm:grid-cols-[minmax(0,12rem)_auto_minmax(0,1fr)] sm:items-center"
        >
          <div className="min-w-0 text-sm font-medium">
            {edge.fromSpecies?.name ?? "Unknown Pokémon"}
            <span className="text-muted-foreground mx-2">to</span>
            {edge.toSpecies?.name ?? "Unknown Pokémon"}
          </div>
          <Badge variant="secondary">{edge.method?.name ?? "Evolution"}</Badge>
          <p className="text-muted-foreground text-sm">
            {getEvolutionCondition(edge)}
          </p>
        </div>
      ))}
    </div>
  );
};

export const PokemonEvolutionSection = ({
  currentSpeciesId,
  edges,
  species,
}: PokemonEvolutionSectionProps) => {
  return (
    <CodexSectionCard
      title="Evolution line"
      description="Species in the same seeded evolution family."
      contentClassName="grid gap-4"
    >
      {species.length ? (
        <>
          <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {species.map((summary) => (
              <EvolutionSpeciesCard
                key={summary.species.id}
                currentSpeciesId={currentSpeciesId}
                summary={summary}
              />
            ))}
          </div>
          <EvolutionMethodList edges={edges} />
        </>
      ) : (
        <CodexInlineEmpty>No evolution data is seeded yet.</CodexInlineEmpty>
      )}
    </CodexSectionCard>
  );
};
