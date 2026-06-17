import type { CSSProperties } from "react";
import Image from "next/image";

import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

export const pokemonTypeSlugs = [
  "normal",
  "fire",
  "water",
  "electric",
  "grass",
  "ice",
  "fighting",
  "poison",
  "ground",
  "flying",
  "psychic",
  "bug",
  "rock",
  "ghost",
  "dragon",
  "dark",
  "steel",
  "fairy",
] as const;

export type PokemonTypeSlug = (typeof pokemonTypeSlugs)[number];

type PokemonTypeIconProps = {
  className?: string;
  type: PokemonTypeSlug;
};

export function PokemonTypeIcon({ className, type }: PokemonTypeIconProps) {
  return (
    <Image
      src={`/icons/types/${type}.svg`}
      alt=""
      width={18}
      height={18}
      aria-hidden
      className={className}
    />
  );
}

type PokemonTypeBadgeProps = PokemonTypeIconProps & {
  label?: string;
};

export function PokemonTypeBadge({
  className,
  label,
  type,
}: PokemonTypeBadgeProps) {
  return (
    <Badge
      variant="secondary"
      className={cn(
        "text-foreground border-[color-mix(in_oklch,var(--type-color),transparent_58%)] bg-[color-mix(in_oklch,var(--type-color),transparent_86%)]",
        className,
      )}
      style={
        {
          "--type-color": `var(--type-${type})`,
        } as CSSProperties
      }
    >
      <PokemonTypeIcon type={type} />
      {label ?? type}
    </Badge>
  );
}
