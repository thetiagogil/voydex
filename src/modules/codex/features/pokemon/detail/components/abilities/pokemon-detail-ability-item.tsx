import { cn } from "@/lib/utils";
import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-utils";

type PokemonDetailAbilityItemProps = {
  abilitySlot: PokemonDetailAbilitySlot;
};

export const PokemonDetailAbilityItem = ({
  abilitySlot,
}: PokemonDetailAbilityItemProps) => {
  return (
    <article className="border-app-surface-border/70 bg-background/30 grid min-w-0 grid-cols-12 items-center gap-3 rounded-lg border p-3">
      <div className="col-span-3 flex min-w-0 items-center gap-3">
        <div
          className={cn(
            "border-primary/45 bg-primary/10 text-primary flex size-7 shrink-0 items-center justify-center rounded-full border text-xs font-semibold tabular-nums",
            abilitySlot.isHidden &&
              "border-amber-400/45 bg-amber-400/10 text-amber-300",
          )}
        >
          {abilitySlot.token}
        </div>

        <div className="min-w-0">
          <div className="text-foreground truncate text-sm font-medium">
            {abilitySlot.ability.name}
          </div>
          <div className="text-muted-foreground text-xs">
            {abilitySlot.label}
          </div>
        </div>
      </div>

      <p className="text-muted-foreground col-span-9 min-w-0 text-xs leading-relaxed">
        {abilitySlot.effectSummary ?? "No effect summary available."}
      </p>
    </article>
  );
};
