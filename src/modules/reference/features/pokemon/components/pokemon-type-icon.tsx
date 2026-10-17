import { cn } from "@/shared/utils/cn";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSolidBackgroundClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

type PokemonIconSlug = PokemonTypeSlug | "pokeball";

type PokemonTypeIconProps = {
  className?: string;
  type: PokemonIconSlug;
};

/*
 * A type's icon in the current text colour, so it always matches the label
 * beside it: white or deep ink on a type colour, quiet ink on paper.
 */
export const PokemonTypeIcon = ({ className, type }: PokemonTypeIconProps) => {
  return (
    <span
      aria-hidden
      style={{ maskImage: `url(/icons/types/${type}.svg)` }}
      className={cn(
        "inline-block size-3 shrink-0 bg-current mask-contain mask-center mask-no-repeat",
        className,
      )}
    />
  );
};

type PokemonTypeMarkProps = {
  className?: string;
  iconClassName?: string;
  type: PokemonTypeSlug;
};

export const PokemonTypeMark = ({
  className,
  iconClassName,
  type,
}: PokemonTypeMarkProps) => {
  return (
    <span
      style={getPokemonTypeCssVariables(type)}
      aria-hidden
      className={cn(
        "flex items-center justify-center rounded-full text-white",
        pokemonTypeSolidBackgroundClassName,
        className,
      )}
    >
      <PokemonTypeIcon type={type} className={iconClassName} />
    </span>
  );
};

const pokemonTypeBadgeSizeClassNames = {
  sm: {
    badge: "h-6 gap-1.25 py-0.5 pr-2.5 pl-0.5 text-12",
    icon: "size-2.75",
    iconFrame: "size-4.5",
    iconOnly: "size-4.5",
  },
  md: {
    badge: "h-7 gap-1.5 py-0.75 pr-3 pl-0.75 text-13",
    icon: "size-3",
    iconFrame: "size-5.5",
    iconOnly: "size-5.5",
  },
  lg: {
    badge: "h-8.5 gap-1.75 py-1.25 pr-3.5 pl-1.25 text-14",
    icon: "size-3.5",
    iconFrame: "size-6",
    iconOnly: "size-7",
  },
  /* Beside a Pokémon's name in the entry hero. */
  xl: {
    badge: "h-10 gap-2 py-1.5 pr-4 pl-1.5 text-16",
    icon: "size-4.5",
    iconFrame: "size-7",
    iconOnly: "size-10",
  },
} as const;

export type PokemonTypeBadgeDisplay = "icon" | "icon-label" | "label";
export type PokemonTypeBadgeSize = keyof typeof pokemonTypeBadgeSizeClassNames;

type PokemonTypeBadgeProps = PokemonTypeIconProps & {
  display?: PokemonTypeBadgeDisplay;
  label?: string;
  size?: PokemonTypeBadgeSize;
  type: PokemonTypeSlug;
};

/*
 * TypeChip and TypeDot, both in the type's official colour with a white
 * label and icon, so a chip, a dot and a tile always show the same colour.
 * The chip is marked `data-type-chip`: its white label on the pale types is
 * below 4.5:1 by choice, so the accessibility check leaves it out.
 */
export const PokemonTypeBadge = ({
  className,
  display = "icon-label",
  label,
  size = "md",
  type,
}: PokemonTypeBadgeProps) => {
  const displayLabel = label ?? type;
  const sizeClassNames = pokemonTypeBadgeSizeClassNames[size];

  if (display === "icon") {
    return (
      <span
        role="img"
        aria-label={displayLabel}
        className={cn("inline-flex shrink-0", className)}
      >
        <PokemonTypeMark
          type={type}
          className={sizeClassNames.iconOnly}
          iconClassName={sizeClassNames.icon}
        />
      </span>
    );
  }

  return (
    <span
      data-type-chip
      style={getPokemonTypeCssVariables(type)}
      className={cn(
        "type-chip inline-flex shrink-0 items-center rounded-full leading-none font-extrabold whitespace-nowrap capitalize",
        sizeClassNames.badge,
        display === "label" && "pl-2.5",
        className,
      )}
    >
      {display === "icon-label" ? (
        <span
          aria-hidden
          className={cn(
            "flex items-center justify-center rounded-full bg-white/25",
            sizeClassNames.iconFrame,
          )}
        >
          <PokemonTypeIcon type={type} className={sizeClassNames.icon} />
        </span>
      ) : null}
      {displayLabel}
    </span>
  );
};
