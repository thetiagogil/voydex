import { cva } from "class-variance-authority";

import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

import {
  formatPokedexNumber,
  PokedexCodexLink,
  type PokedexSpeciesPresentationProps,
  PokedexStateLabel,
} from "./pokedex-species-item-shared";

const speciesListRowVariants = cva("", {
  variants: {
    state: {
      caught: "bg-primary/8",
      missing: "bg-card",
      seen: "bg-secondary/35",
    },
  },
});

export const PokedexSpeciesListRow = ({
  entry,
  gameSlug,
  isPending,
  isPressed,
  onToggle,
  state,
  toggleLabel,
}: PokedexSpeciesPresentationProps) => {
  return (
    <div
      role="listitem"
      aria-busy={isPending}
      className={cn(
        "group relative min-w-0",
        speciesListRowVariants({ state }),
        rowInteractionVariants({ interaction: "action" }),
      )}
    >
      <div className="pointer-events-none relative z-10 grid min-w-0 grid-cols-[3rem_3rem_minmax(0,1fr)_2.25rem] items-center gap-x-3 px-3 py-2.5 lg:grid-cols-[3.5rem_3rem_minmax(9rem,1fr)_minmax(11rem,1.2fr)_minmax(7rem,0.75fr)_2.25rem]">
        <span className="text-muted-foreground text-xs font-semibold tracking-[0.05em] tabular-nums">
          {formatPokedexNumber(entry.pokedexNumber)}
        </span>

        <PokemonPortrait
          alt={entry.imageAlt}
          imageUrl={entry.imageUrl}
          fallbackOnError
          sizes="3rem"
          className="border-app-surface-border bg-muted/30 size-12 shrink-0 rounded-lg"
          glowClassName="opacity-0"
          imageClassName="p-1"
        />

        <span className="grid min-w-0 gap-1">
          <span className="truncate font-serif text-sm font-semibold">
            {entry.speciesName}
          </span>
          {entry.displayFormName ? (
            <span className="text-muted-foreground truncate text-xs">
              {entry.displayFormName}
            </span>
          ) : null}
          <span className="flex min-w-0 flex-wrap items-center gap-x-3 gap-y-1 lg:hidden">
            <PokemonTypeList
              badgeDisplay="icon-label"
              badgeSize="sm"
              badgeVariant="field-guide"
              className="flex-wrap gap-1"
              primaryType={entry.primaryType}
              secondaryType={entry.secondaryType}
            />
            <PokedexStateLabel state={state} />
          </span>
        </span>

        <PokemonTypeList
          badgeDisplay="icon-label"
          badgeSize="sm"
          badgeVariant="field-guide"
          className="hidden flex-wrap justify-start gap-1 lg:flex"
          primaryType={entry.primaryType}
          secondaryType={entry.secondaryType}
        />

        <span className="hidden lg:block">
          <PokedexStateLabel state={state} />
        </span>

        <span className="pointer-events-auto justify-self-end">
          <PokedexCodexLink entry={entry} gameSlug={gameSlug} />
        </span>
      </div>

      <button
        type="button"
        aria-label={toggleLabel}
        aria-pressed={isPressed}
        disabled={isPending}
        className="focus-visible:ring-ring absolute inset-0 z-0 outline-none focus-visible:ring-3 focus-visible:ring-inset disabled:cursor-default"
        onClick={onToggle}
      />
    </div>
  );
};
