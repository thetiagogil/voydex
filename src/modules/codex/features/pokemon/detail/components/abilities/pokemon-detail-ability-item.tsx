import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-section-grid";

type PokemonDetailAbilityItemProps = {
  abilitySlot: PokemonDetailAbilitySlot;
};

export const PokemonDetailAbilityItem = ({
  abilitySlot,
}: PokemonDetailAbilityItemProps) => {
  return (
    <article
      className={`${pokemonDetailSectionTableGridClassName} border-line border-t px-4 py-3`}
    >
      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Slot</div>
        <div className="text-muted-foreground truncate text-xs">
          {abilitySlot.label}
        </div>
      </div>

      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Ability</div>
        <div className="text-foreground truncate text-sm font-medium">
          {abilitySlot.ability.name}
        </div>
      </div>

      <div className="grid min-w-0 gap-1">
        <div className="text-muted-foreground text-xs lg:hidden">Effect</div>
        <p className="text-muted-foreground min-w-0 text-xs leading-relaxed">
          {abilitySlot.effectSummary ?? "No effect summary available."}
        </p>
      </div>
    </article>
  );
};
