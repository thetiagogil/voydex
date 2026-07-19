import { cn } from "@/shared/utils/cn";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
  pokemonTypeSoftBorderClassName,
  pokemonTypeSolidBackgroundClassName,
  pokemonTypeTextClassName,
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
      className={cn("opacity-95", className)}
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
    badge: "h-6 gap-1.5 px-1.5 text-xs",
    icon: "size-2.5",
    iconFrame: "size-4",
    iconOnly: "size-6 p-0",
  },
  md: {
    badge: "h-7 gap-1.5 px-2 text-xs",
    icon: "size-3",
    iconFrame: "size-5",
    iconOnly: "size-7 p-0",
  },
  lg: {
    badge: "h-8 gap-2 px-2.5 text-sm",
    icon: "size-3.5",
    iconFrame: "size-6",
    iconOnly: "size-8 p-0",
  },
} as const;

export type PokemonTypeBadgeDisplay = "icon" | "icon-label" | "label";
export type PokemonTypeBadgeSize = keyof typeof pokemonTypeBadgeSizeClassNames;
export type PokemonTypeBadgeVariant = "field-guide" | "outline" | "soft";

type PokemonTypeBadgeProps = PokemonTypeIconProps & {
  display?: PokemonTypeBadgeDisplay;
  label?: string;
  size?: PokemonTypeBadgeSize;
  type: PokemonTypeSlug;
  variant?: PokemonTypeBadgeVariant;
};

export const PokemonTypeBadge = ({
  className,
  display = "icon-label",
  label,
  size = "md",
  type,
  variant = "soft",
}: PokemonTypeBadgeProps) => {
  const displayLabel = label ?? type;
  const sizeClassNames = pokemonTypeBadgeSizeClassNames[size];
  const showIcon = display !== "label";
  const showLabel = display !== "icon";

  return (
    <span
      style={getPokemonTypeCssVariables(type)}
      className={cn(
        "inline-flex shrink-0 items-center justify-center rounded-full border leading-none font-medium whitespace-nowrap capitalize",
        display === "icon" ? sizeClassNames.iconOnly : sizeClassNames.badge,
        variant === "field-guide"
          ? "border-app-surface-border/80 bg-background/70 text-foreground/75"
          : [pokemonTypeSoftBorderClassName, pokemonTypeTextClassName],
        variant === "soft" && pokemonTypeSoftBackgroundClassName,
        className,
      )}
    >
      {showIcon ? (
        <PokemonTypeMark
          type={type}
          className={sizeClassNames.iconFrame}
          iconClassName={sizeClassNames.icon}
        />
      ) : null}
      {showLabel ? (
        displayLabel
      ) : (
        <span className="sr-only">{displayLabel}</span>
      )}
    </span>
  );
};
