import { cn } from "@/lib/utils";
import type {
  PokedexPokemonBrowseReference,
  Type,
} from "@/modules/codex/shared/types";
import {
  PokemonTypeBadge,
  type PokemonTypeBadgeDisplay,
  type PokemonTypeBadgeSize,
  type PokemonTypeBadgeVariant,
} from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokemonTypeDisplay = Pick<Type, "name" | "slug"> &
  Partial<Pick<PokedexPokemonBrowseReference, "id">>;

type PokemonTypeListProps = {
  badgeDisplay?: PokemonTypeBadgeDisplay;
  badgeSize?: PokemonTypeBadgeSize;
  badgeVariant?: PokemonTypeBadgeVariant;
  className?: string;
  primaryType: PokemonTypeDisplay | null;
  secondaryType: PokemonTypeDisplay | null;
};

type TypeBadgeProps = {
  display: PokemonTypeBadgeDisplay;
  size: PokemonTypeBadgeSize;
  type: PokemonTypeDisplay | null;
  variant: PokemonTypeBadgeVariant;
};

const TypeBadge = ({ display, size, type, variant }: TypeBadgeProps) => {
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
      variant={variant}
      className="py-4"
    />
  );
};

export const PokemonTypeList = ({
  badgeDisplay = "icon-label",
  badgeSize = "md",
  badgeVariant = "soft",
  className,
  primaryType,
  secondaryType,
}: PokemonTypeListProps) => {
  return (
    <div className={cn("grid grid-cols-2 gap-2", className)}>
      <TypeBadge
        type={primaryType}
        display={badgeDisplay}
        size={badgeSize}
        variant={badgeVariant}
      />
      {secondaryType ? (
        <TypeBadge
          type={secondaryType}
          display={badgeDisplay}
          size={badgeSize}
          variant={badgeVariant}
        />
      ) : null}
    </div>
  );
};
