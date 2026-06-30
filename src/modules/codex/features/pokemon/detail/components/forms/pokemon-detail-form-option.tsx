import { cn } from "@/lib/utils";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type PokemonDetailFormOptionContentProps = {
  className?: string;
  form: PokemonGenerationFormSummary;
  nationalNumber: number;
};

export const PokemonDetailFormOptionContent = ({
  className,
  form,
  nationalNumber,
}: PokemonDetailFormOptionContentProps) => {
  return (
    <span className={cn("flex w-full min-w-0 items-center gap-3", className)}>
      <PokemonPortrait
        alt={getPokemonDetailFormImageAlt(form)}
        imageUrl={getPokemonDetailFormImageUrl(form)}
        type={getPokemonDetailFormTypeSlug(form)}
        fallbackOnError
        sizes="44px"
        className="size-11 shrink-0 rounded-lg"
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
        className="ml-auto shrink-0 gap-1"
      />
    </span>
  );
};
