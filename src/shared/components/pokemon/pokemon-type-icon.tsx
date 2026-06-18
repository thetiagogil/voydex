import Image from "next/image";

import { Badge } from "@/shared/components/ui/badge";
import type { PokemonTypeSlug } from "@/shared/pokemon/constants";
import { pokemonTypeClassNames } from "@/shared/pokemon/type-styles";
import { cn } from "@/lib/utils";

type PokemonIconSlug = PokemonTypeSlug | "pokeball";

type PokemonTypeIconProps = {
  className?: string;
  type: PokemonIconSlug;
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
  type: PokemonTypeSlug;
};

export function PokemonTypeBadge({
  className,
  label,
  type,
}: PokemonTypeBadgeProps) {
  return (
    <Badge
      variant="outline"
      className={cn(
        "capitalize",
        pokemonTypeClassNames[type].background,
        pokemonTypeClassNames[type].border,
        pokemonTypeClassNames[type].foreground,
        className,
      )}
    >
      <span
        className={cn(
          "flex size-5 items-center justify-center rounded-full",
          pokemonTypeClassNames[type].solidBackground,
        )}
      >
        <PokemonTypeIcon type={type} className="size-3.5" />
      </span>
      {label ?? type}
    </Badge>
  );
}
