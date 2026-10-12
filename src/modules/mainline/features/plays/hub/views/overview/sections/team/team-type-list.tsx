import type { MainlinePlayTeamPreviewType } from "@/modules/mainline/features/plays/hub/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

type TeamTypeBadgeProps = {
  type: MainlinePlayTeamPreviewType;
};

type TeamTypeListProps = {
  className?: string;
  primaryType: MainlinePlayTeamPreviewType | null;
  secondaryType: MainlinePlayTeamPreviewType | null;
};

const TeamTypeBadge = ({ type }: TeamTypeBadgeProps) => {
  if (!isPokemonTypeSlug(type.slug)) {
    return (
      <Badge variant="outline" className="h-6 px-1.5 text-[0.6875rem]">
        {type.name}
      </Badge>
    );
  }

  return (
    <PokemonTypeBadge
      type={type.slug}
      label={type.name}
      display="icon"
      size="sm"
    />
  );
};

export const TeamTypeList = ({
  className,
  primaryType,
  secondaryType,
}: TeamTypeListProps) => {
  const types = [primaryType, secondaryType].filter(
    (type): type is MainlinePlayTeamPreviewType => Boolean(type),
  );

  if (!types.length) {
    return null;
  }

  return (
    <div
      className={cn(
        "flex flex-wrap items-center justify-center gap-1",
        className,
      )}
    >
      {types.map((type) => (
        <TeamTypeBadge key={type.id} type={type} />
      ))}
    </div>
  );
};
