import { cn } from "@/shared/utils/cn";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonGenerationFormSummary } from "@/modules/reference/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

type PokemonDetailFormListItemContentProps = {
  className?: string;
  form: PokemonGenerationFormSummary;
  nationalNumber: number;
};

export const PokemonDetailFormListItemContent = ({
  className,
  form,
  nationalNumber,
}: PokemonDetailFormListItemContentProps) => {
  return (
    <span className={cn("flex w-full min-w-0 items-center gap-3", className)}>
      <PokemonPortrait
        alt={getPokemonDetailFormImageAlt(form)}
        imageUrl={getPokemonDetailFormImageUrl(form)}
        type={getPokemonDetailFormTypeSlug(form)}
        fallbackOnError
        sizes="44px"
        className="border-app-surface-border/70 size-11 shrink-0 rounded-lg bg-transparent"
        glowClassName="inset-2 opacity-10"
        imageClassName="p-1"
      />
      <span className="min-w-0 flex-1">
        <span className="text-muted-foreground block text-xs tabular-nums">
          {formatPokemonNationalNumber(nationalNumber)}
        </span>
        <span className="block truncate font-medium">{form.form.name}</span>
      </span>
      <PokemonTypeList
        primaryType={form.typePair.primaryType}
        secondaryType={form.typePair.secondaryType}
        badgeDisplay="icon"
        badgeSize="sm"
        badgeVariant="field-guide"
        className="ml-auto shrink-0 gap-1"
      />
    </span>
  );
};
