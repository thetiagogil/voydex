import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";

type PokemonDetailFormSelectorTriggerProps = {
  activeForm: PokemonGenerationFormSummary | null;
  forms: PokemonGenerationFormSummary[];
};

export const pokemonDetailFormSelectorTriggerClassName =
  "h-auto min-h-12 w-full min-w-0 justify-between gap-2 overflow-hidden px-2 py-1.5 text-left";

export const PokemonDetailFormSelectorTrigger = ({
  activeForm,
  forms,
}: PokemonDetailFormSelectorTriggerProps) => {
  const selectedForm = activeForm ?? forms[0] ?? null;

  if (!selectedForm) {
    return (
      <span className="text-muted-foreground min-w-0 truncate text-sm">
        Choose form
      </span>
    );
  }

  return (
    <span className="flex min-w-0 flex-1 items-center gap-2 overflow-hidden">
      <PokemonPortrait
        alt={getPokemonDetailFormImageAlt(selectedForm)}
        imageUrl={getPokemonDetailFormImageUrl(selectedForm)}
        type={getPokemonDetailFormTypeSlug(selectedForm)}
        fallbackOnError
        loading="eager"
        sizes="36px"
        className="border-app-surface-border/70 bg-background/30 size-9 shrink-0 rounded-full"
        glowClassName="opacity-20"
        imageClassName="p-1.5"
      />
      <span className="block min-w-0 flex-1 truncate font-medium">
        {selectedForm.form.name}
      </span>
    </span>
  );
};
