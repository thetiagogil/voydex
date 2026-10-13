import { PokemonRender } from "@/features/site/components/stills/pokemon-render";
import { TypeIconDot } from "@/features/site/components/stills/type-icon-dot";
import type { SiteArt, SitePokemon, SiteTypeSlug } from "@/features/site/types";
import { getTypeColourStyle } from "@/features/site/utils/type-colour";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type PokemonCardStillState = "caught" | "missing" | "plain" | "seen";

type PokemonCardStillProps = {
  art: SiteArt;
  className?: string;
  number: string;
  pokemon: SitePokemon;
  /* `sm` fits three cards in a narrow card. */
  size?: "md" | "sm";
  state: PokemonCardStillState;
  types: readonly SiteTypeSlug[];
};

const stateClassNames: Record<PokemonCardStillState, string> = {
  caught:
    "type-tint border-4 border-white px-1 pt-1 pb-2 shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip)),var(--shadow-soft-value)]",
  missing: "border-[2.5px] border-dashed border-dash",
  plain: "border border-line bg-surface",
  seen: "border border-line bg-surface",
};

/*
 * A drawing of the one Pokémon card: caught is a sticker with a Poké Ball,
 * seen a plain card with an eye, missing a dashed outline and a silhouette.
 */
export const PokemonCardStill = ({
  art,
  className,
  number,
  pokemon,
  size = "md",
  state,
  types,
}: PokemonCardStillProps) => (
  <span
    style={getTypeColourStyle(pokemon.type)}
    className={cn(
      "relative flex min-w-0 flex-col items-center rounded-lg text-center",
      size === "md" ? "px-1.5 pt-2 pb-3" : "px-1 pt-1.5 pb-2.5",
      stateClassNames[state],
      className,
    )}
  >
    <span
      className={cn(
        "text-12 w-full px-1 text-left font-extrabold tabular-nums",
        state === "caught" ? "text-ink-tint" : "text-ink-3",
      )}
    >
      {number}
    </span>
    {state === "caught" || state === "seen" ? (
      <span
        className={cn(
          "absolute top-[7px] right-[7px] grid size-[22px] place-items-center rounded-full sm:size-[26px]",
          state === "caught" ? "text-ball bg-white" : "bg-surface-2 text-ink-2",
        )}
      >
        <AppIcon
          icon={
            state === "caught" ? appIcons.product.caught : appIcons.product.seen
          }
          className="size-3.5 sm:size-4"
        />
      </span>
    ) : null}
    <span
      className={cn(
        "mt-0.5 mb-1.5 grid place-items-center rounded-full",
        size === "md" ? "size-[62px] sm:size-[84px]" : "size-14",
        state === "caught" && "bg-white/55",
        (state === "plain" || state === "seen") &&
          "bg-[color-mix(in_oklab,var(--t)_13%,var(--surface))]",
      )}
    >
      <PokemonRender
        art={art}
        pokemon={pokemon}
        className={cn(
          size === "md" ? "size-[58px] sm:size-[78px]" : "size-[52px]",
          state === "missing" && "opacity-10 brightness-0",
        )}
      />
    </span>
    <span
      className={cn(
        "w-full truncate text-[12.5px] font-extrabold",
        size === "md" && "sm:text-14",
        state === "missing" && "text-ink-3",
      )}
    >
      {pokemon.name}
    </span>
    <span className="mt-1 flex items-center gap-1">
      {types.map((type) => (
        <TypeIconDot key={type} type={type} />
      ))}
    </span>
  </span>
);
