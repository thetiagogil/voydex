import { cn } from "@/shared/utils/cn";
import type {
  PokedexPokemonBrowseReference,
  Type,
} from "@/modules/reference/types";
import {
  PokemonTypeBadge,
  type PokemonTypeBadgeDisplay,
  type PokemonTypeBadgeSize,
} from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

type PokemonTypeDisplay = Pick<Type, "name" | "slug"> &
  Partial<Pick<PokedexPokemonBrowseReference, "id">>;

type PokemonTypeListProps = {
  badgeDisplay?: PokemonTypeBadgeDisplay;
  badgeSize?: PokemonTypeBadgeSize;
  className?: string;
  primaryType: PokemonTypeDisplay | null;
  secondaryType: PokemonTypeDisplay | null;
};

type TypeBadgeProps = {
  display: PokemonTypeBadgeDisplay;
  size: PokemonTypeBadgeSize;
  type: PokemonTypeDisplay | null;
};

const TypeBadge = ({ display, size, type }: TypeBadgeProps) => {
  if (!type) {
    return <Badge variant="outline">Unknown</Badge>;
  }
  if (!isPokemonTypeSlug(type.slug)) {
    return <Badge variant="secondary">{type.name}</Badge>;
  }
  return (
    <PokemonTypeBadge
      type={type.slug}
      label={type.name}
      display={display}
      size={size}
    />
  );
};

export const PokemonTypeList = ({
  badgeDisplay = "icon-label",
  badgeSize = "md",
  className,
  primaryType,
  secondaryType,
}: PokemonTypeListProps) => {
  return (
    <div className={cn("flex gap-1.5", className)}>
      <TypeBadge
        type={primaryType}
        display={badgeDisplay}
        size={badgeSize}
      />
      {secondaryType ? (
        <TypeBadge
          type={secondaryType}
          display={badgeDisplay}
          size={badgeSize}
        />
      ) : null}
    </div>
  );
};
