import { cn } from "@/shared/utils/cn";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSolidBackgroundClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import Image from "next/image";

type PokemonIconSlug = PokemonTypeSlug | "pokeball";

type PokemonTypeIconProps = {
  className?: string;
  type: PokemonIconSlug;
};

export const PokemonTypeIcon = ({ className, type }: PokemonTypeIconProps) => {
  return (
    <Image
      src={`/icons/types/${type}.svg`}
      alt=""
      width={12}
      height={12}
      aria-hidden
      className={cn("brightness-0 invert", className)}
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
        "flex items-center justify-center rounded-full",
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
    badge: "h-6 gap-[5px] py-0.5 pr-2.5 pl-0.5 text-12",
    icon: "size-[11px]",
    iconFrame: "size-[18px]",
    iconOnly: "size-[18px]",
  },
  md: {
    badge: "h-7 gap-1.5 py-[3px] pr-3 pl-[3px] text-13",
    icon: "size-3",
    iconFrame: "size-[22px]",
    iconOnly: "size-[22px]",
  },
  lg: {
    badge: "h-[34px] gap-[7px] py-[5px] pr-3.5 pl-[5px] text-14",
    icon: "size-3.5",
    iconFrame: "size-6",
    iconOnly: "size-7",
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
 * TypeChip and TypeDot. A chip is the type colour with a white label; the four
 * palest types (Electric, Ice, Ground, Steel) deepen so the label reads. A
 * dot keeps the official colour.
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
        title={displayLabel}
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
      style={getPokemonTypeCssVariables(type)}
      className={cn(
        "type-chip inline-flex shrink-0 items-center rounded-full leading-none font-extrabold whitespace-nowrap text-white capitalize",
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
