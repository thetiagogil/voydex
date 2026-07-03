import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-grid";

type PokemonDetailAbilityItemProps = {
  abilitySlot: PokemonDetailAbilitySlot;
};

export const PokemonDetailAbilityItem = ({
  abilitySlot,
}: PokemonDetailAbilityItemProps) => {
  return (
    <article
      className={`${pokemonDetailSectionTableGridClassName} border-app-surface-border/60 border-t px-4 py-3`}
    >
      <div className="flex min-w-0 items-center gap-3">
        <div className="border-primary/45 bg-primary/10 text-primary flex size-7 shrink-0 items-center justify-center rounded-full border text-xs font-semibold tabular-nums">
          {abilitySlot.token}
        </div>

        <div className="text-muted-foreground truncate text-xs">
          {abilitySlot.label}
        </div>
      </div>

      <div className="text-foreground truncate text-sm font-medium">
        {abilitySlot.ability.name}
      </div>

      <p className="text-muted-foreground min-w-0 text-xs leading-relaxed">
        {abilitySlot.effectSummary ?? "No effect summary available."}
      </p>
    </article>
  );
};
