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
} & (
  | {
      primaryType: PokemonTypeDisplay | null;
      secondaryType: PokemonTypeDisplay | null;
      types?: never;
    }
  | {
      primaryType?: never;
      secondaryType?: never;
      /* The types in slot order; an empty list renders nothing. */
      types: readonly PokemonTypeDisplay[];
    }
);

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

/*
 * A Pokémon's types as chips or dots. Pass `types` in slot order, or the
 * `primaryType` and `secondaryType` pair (a missing primary shows "Unknown").
 */
export const PokemonTypeList = ({
  badgeDisplay = "icon-label",
  badgeSize = "md",
  className,
  primaryType,
  secondaryType,
  types,
}: PokemonTypeListProps) => {
  const entries: (PokemonTypeDisplay | null)[] = types
    ? [...types]
    : [primaryType ?? null, ...(secondaryType ? [secondaryType] : [])];

  if (entries.length === 0) {
    return null;
  }

  return (
    <div className={cn("flex gap-1.5", className)}>
      {entries.map((type, index) => (
        <TypeBadge
          key={type?.slug ?? `unknown-${index}`}
          type={type}
          display={badgeDisplay}
          size={badgeSize}
        />
      ))}
    </div>
  );
};
