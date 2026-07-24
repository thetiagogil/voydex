import type { Type } from "@/modules/reference/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { Badge } from "@/shared/components/ui/badge";

export const TeamAnalysisTypeLabel = ({
  compact = false,
  type,
}: {
  compact?: boolean;
  type: Type;
}) => {
  if (!isPokemonTypeSlug(type.slug)) {
    return <Badge variant="outline">{type.name}</Badge>;
  }

  return (
    <PokemonTypeBadge
      display="icon-label"
      label={type.name}
      size="sm"
      type={type.slug}
      variant="field-guide"
      className={compact ? "h-5 px-1.5 text-[0.68rem]" : undefined}
    />
  );
};
