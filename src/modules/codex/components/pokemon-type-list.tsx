import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import type { Type } from "@/modules/codex/types";
import { isPokemonTypeSlug } from "@/shared/pokemon/constants";

type PokemonTypeListProps = {
  primaryType: Type | null;
  secondaryType: Type | null;
};

function TypeBadge({ type }: { type: Type | null }) {
  if (!type) {
    return <Badge variant="outline">Unknown</Badge>;
  }

  if (!isPokemonTypeSlug(type.slug)) {
    return <Badge variant="secondary">{type.name}</Badge>;
  }

  return <PokemonTypeBadge type={type.slug} label={type.name} />;
}

export function PokemonTypeList({
  primaryType,
  secondaryType,
}: PokemonTypeListProps) {
  return (
    <div className="flex flex-wrap items-center gap-2">
      <TypeBadge type={primaryType} />
      {secondaryType ? <TypeBadge type={secondaryType} /> : null}
    </div>
  );
}
