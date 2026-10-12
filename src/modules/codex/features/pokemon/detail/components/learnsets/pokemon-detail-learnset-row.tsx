import { InfoIcon } from "lucide-react";
import Image from "next/image";

import {
  formatPokemonDetailLearnsetValue,
  getPokemonDetailLearnsetAddedContentLabel,
  getPokemonDetailLearnsetMethodDetail,
} from "@/modules/codex/features/pokemon/detail/components/learnsets/pokemon-detail-learnset-table-model";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-section-grid";
import type { PokemonLearnsetSummary } from "@/modules/reference/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

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

const PokemonDetailLearnsetInfoTooltip = ({ label }: { label: string }) => {
  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <span
            tabIndex={0}
            aria-label={label}
            className="text-muted-foreground focus-visible:ring-ring/50 inline-flex shrink-0 rounded-full outline-none focus-visible:ring-2"
          />
        }
      >
        <InfoIcon aria-hidden className="size-3.5" />
      </TooltipTrigger>
      <TooltipContent>{label}</TooltipContent>
    </Tooltip>
  );
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
  const addedContentLabel = getPokemonDetailLearnsetAddedContentLabel(learnset);

  return (
    <article
      className={`${pokemonDetailLearnsetGridClassName} border-line border-t px-4 py-3`}
    >
      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Method</div>
        <div className="truncate text-sm font-medium">{methodDetail}</div>
      </div>

      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Move</div>
        <div className="flex min-w-0 items-center gap-1.5 text-sm font-medium">
          <span className="truncate">{learnset.move.name}</span>
          {addedContentLabel ? (
            <PokemonDetailLearnsetInfoTooltip label={addedContentLabel} />
          ) : null}
        </div>
      </div>

      <div className="grid min-w-0 gap-1">
        <div
          className={`${pokemonDetailLearnsetMetricsGridClassName} text-muted-foreground text-[0.68rem] lg:hidden`}
        >
          <div className="text-center">Type</div>
          <div className="text-center">Category</div>
          <div className="text-center">Power</div>
          <div className="text-center">Acc.</div>
          <div className="text-center">PP</div>
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
      </div>
    </article>
  );
};
