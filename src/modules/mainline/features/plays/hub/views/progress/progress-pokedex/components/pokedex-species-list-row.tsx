import { cva } from "class-variance-authority";

import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

import {
  formatPokedexNumber,
  PokedexCodexLink,
  type PokedexSpeciesPresentationProps,
  PokedexStateLabel,
} from "./pokedex-species-item-shared";

/* A list row keeps its state as a small mark; the art shows it too. */
const speciesListRowVariants = cva("", {
  variants: {
    state: {
      caught: "",
      missing:
        "[&_[data-slot=pokedex-art]_img]:opacity-15 [&_[data-slot=pokedex-art]_img]:brightness-0",
      seen: "",
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
        <span className="text-ink-3 text-12 font-extrabold tabular-nums">
          {formatPokedexNumber(entry.pokedexNumber)}
        </span>

        <span data-slot="pokedex-art">
          <PokemonPortrait
            alt={entry.imageAlt}
            imageUrl={entry.imageUrl}
            fallbackOnError
            sizes="3rem"
            type={
              state !== "missing" &&
              entry.primaryType &&
              isPokemonTypeSlug(entry.primaryType.slug)
                ? entry.primaryType.slug
                : null
            }
            className={cn(
              "size-12 shrink-0",
              state === "missing" &&
                "border-dash border-[1.5px] border-dashed bg-transparent",
            )}
            imageClassName="p-1"
          />
        </span>

        <span className="grid min-w-0 gap-1">
          <span className="text-15 truncate font-extrabold">
            {entry.speciesName}
          </span>
          {entry.displayFormName ? (
            <span className="text-ink-3 text-12 truncate font-semibold">
              {entry.displayFormName}
            </span>
          ) : null}
          <span className="flex min-w-0 flex-wrap items-center gap-x-3 gap-y-1 lg:hidden">
            <PokemonTypeList
              badgeDisplay="icon-label"
              badgeSize="sm"
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
