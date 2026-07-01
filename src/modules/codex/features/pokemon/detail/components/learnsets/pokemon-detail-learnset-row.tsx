import Image from "next/image";

import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-grid";
import {
  formatPokemonDetailLearnsetValue,
  getPokemonDetailLearnsetMethodDetail,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnsets-utils";
import type { PokemonLearnsetSummary } from "@/modules/codex/shared/types";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";

export const pokemonDetailLearnsetGridClassName =
  pokemonDetailSectionTableGridClassName;

export const pokemonDetailLearnsetMetricsGridClassName =
  "grid min-w-0 grid-cols-5 items-center gap-3";

const pokemonDetailLearnsetCategories = {
  physical: "Physical",
  special: "Special",
  status: "Status",
} as const;

type PokemonDetailLearnsetCategory =
  keyof typeof pokemonDetailLearnsetCategories;

type PokemonDetailLearnsetRowProps = {
  learnset: PokemonLearnsetSummary;
};

const PokemonDetailLearnsetType = ({
  learnset,
}: PokemonDetailLearnsetRowProps) => {
  if (!learnset.type || !isPokemonTypeSlug(learnset.type.slug)) {
    return (
      <Badge variant="outline" className="justify-self-center">
        Unknown
      </Badge>
    );
  }

  return (
    <div className="justify-self-center">
      <Tooltip>
        <TooltipTrigger
          render={
            <span
              tabIndex={0}
              role="img"
              aria-label={learnset.type.name}
              className="focus-visible:ring-ring/50 inline-flex rounded-full outline-none focus-visible:ring-2"
            />
          }
        >
          <PokemonTypeBadge
            type={learnset.type.slug}
            label={learnset.type.name}
            display="icon"
            size="sm"
          />
        </TooltipTrigger>
        <TooltipContent>{learnset.type.name}</TooltipContent>
      </Tooltip>
    </div>
  );
};

const isPokemonDetailLearnsetCategory = (
  category: string,
): category is PokemonDetailLearnsetCategory => {
  return category in pokemonDetailLearnsetCategories;
};

const PokemonDetailLearnsetCategoryIcon = ({
  learnset,
}: PokemonDetailLearnsetRowProps) => {
  const damageClass = learnset.attributes?.damage_class;

  if (!damageClass || !isPokemonDetailLearnsetCategory(damageClass)) {
    return (
      <Badge variant="outline" className="justify-self-center">
        Unknown
      </Badge>
    );
  }

  const label = pokemonDetailLearnsetCategories[damageClass];

  return (
    <div className="justify-self-center">
      <Tooltip>
        <TooltipTrigger
          render={
            <span
              tabIndex={0}
              role="img"
              aria-label={label}
              className="focus-visible:ring-ring/50 inline-flex size-6 items-center justify-center rounded-full outline-none focus-visible:ring-2"
            />
          }
        >
          <Image
            src={`/icons/categories/${damageClass}.webp`}
            alt=""
            width={20}
            height={20}
            aria-hidden
            className="max-h-5 w-auto"
          />
        </TooltipTrigger>
        <TooltipContent>{label}</TooltipContent>
      </Tooltip>
    </div>
  );
};

export const PokemonDetailLearnsetRow = ({
  learnset,
}: PokemonDetailLearnsetRowProps) => {
  const methodDetail = getPokemonDetailLearnsetMethodDetail(learnset);

  return (
    <article
      className={`${pokemonDetailLearnsetGridClassName} border-app-surface-border/60 border-t px-4 py-3`}
    >
      <div className="truncate text-sm font-medium">{methodDetail}</div>

      <div className="min-w-0">
        <div className="truncate text-sm font-medium">{learnset.move.name}</div>
        {learnset.learnset.condition_summary ? (
          <div className="text-muted-foreground truncate text-xs">
            {learnset.learnset.condition_summary}
          </div>
        ) : null}
      </div>

      <div className={pokemonDetailLearnsetMetricsGridClassName}>
        <PokemonDetailLearnsetType learnset={learnset} />
        <PokemonDetailLearnsetCategoryIcon learnset={learnset} />
        <div className="text-center text-sm tabular-nums">
          {formatPokemonDetailLearnsetValue(learnset.attributes?.power)}
        </div>
        <div className="text-center text-sm tabular-nums">
          {formatPokemonDetailLearnsetValue(
            learnset.attributes?.accuracy,
            "%",
          )}
        </div>
        <div className="text-center text-sm tabular-nums">
          {formatPokemonDetailLearnsetValue(learnset.attributes?.pp)}
        </div>
      </div>
    </article>
  );
};
