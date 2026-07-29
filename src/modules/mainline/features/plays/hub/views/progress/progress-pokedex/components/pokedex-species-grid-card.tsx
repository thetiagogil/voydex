import { cva } from "class-variance-authority";

import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { Card, CardContent } from "@/shared/components/ui/card";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

import {
  formatPokedexNumber,
  PokedexCodexLink,
  type PokedexSpeciesPresentationProps,
  PokedexStateIcon,
} from "./pokedex-species-item-shared";

const speciesCardVariants = cva(
  "relative min-w-0 cursor-pointer gap-0 py-0 shadow-none transition-colors",
  {
    variants: {
      state: {
        caught: "bg-primary/8 ring-primary/45",
        missing: "bg-card ring-app-surface-border",
        seen: "bg-secondary/35 ring-secondary-foreground/25",
      },
    },
  },
);

export const PokedexSpeciesGridCard = ({
  entry,
  gameSlug,
  isPending,
  isPressed,
  onToggle,
  state,
  toggleLabel,
}: PokedexSpeciesPresentationProps) => {
  return (
    <Card
      size="sm"
      aria-busy={isPending}
      className={cn(
        speciesCardVariants({ state }),
        rowInteractionVariants({ interaction: "action" }),
      )}
    >
      <CardContent className="pointer-events-none relative z-10 flex min-h-0 flex-1 flex-col p-0">
        <PokedexStateIcon className="absolute top-3 right-3" state={state} />

        <PokemonPortrait
          alt={entry.imageAlt}
          imageUrl={entry.imageUrl}
          fallbackOnError
          sizes="(min-width: 1280px) 190px, (min-width: 1024px) 170px, 25vw"
          className="aspect-4/3 w-full rounded-none border-0 bg-transparent"
          glowClassName="hidden"
          imageClassName="p-3 sm:p-4"
        />

        <span className="mt-auto flex min-w-0 items-end justify-between gap-2 px-3 pb-3">
          <span className="grid min-w-0 gap-0.5">
            <span className="text-muted-foreground text-[0.68rem] leading-4 font-semibold tracking-[0.08em] uppercase tabular-nums">
              {formatPokedexNumber(entry.pokedexNumber)}
            </span>
            <span className="truncate font-serif text-sm leading-snug font-semibold">
              {entry.speciesName}
            </span>
            {entry.displayFormName ? (
              <span className="text-muted-foreground truncate text-xs">
                {entry.displayFormName}
              </span>
            ) : null}
          </span>
          <span className="pointer-events-auto shrink-0">
            <PokedexCodexLink entry={entry} gameSlug={gameSlug} />
          </span>
        </span>
      </CardContent>

      <button
        type="button"
        aria-label={toggleLabel}
        aria-pressed={isPressed}
        disabled={isPending}
        className="focus-visible:ring-ring absolute inset-0 rounded-[inherit] outline-none focus-visible:ring-3 focus-visible:ring-inset disabled:cursor-default"
        onClick={onToggle}
      />
    </Card>
  );
};
