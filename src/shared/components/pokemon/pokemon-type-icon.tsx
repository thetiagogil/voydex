import Image from "next/image";

import { Badge } from "@/shared/components/ui/badge";
import type { PokemonTypeSlug } from "@/shared/pokemon/constants";
import { cn } from "@/lib/utils";

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
    <Badge variant="secondary" className={cn("capitalize", className)}>
      <PokemonTypeIcon type={type} />
      {label ?? type}
    </Badge>
  );
}
