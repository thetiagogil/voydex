import type {
  MainlinePlayPokemonType,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type TeamTypeBadgeProps = {
  type: MainlinePlayPokemonType;
};

type TeamTypeListProps = Pick<
  MainlinePlayTeamMember,
  "primaryType" | "secondaryType"
>;

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
      variant="soft"
    />
  );
};

export const TeamTypeList = ({
  primaryType,
  secondaryType,
}: TeamTypeListProps) => {
  const types = [primaryType, secondaryType].filter(
    (type): type is MainlinePlayPokemonType => Boolean(type),
  );

  if (!types.length) {
    return null;
  }

  return (
    <div className="flex items-center justify-center gap-1">
      {types.map((type) => (
        <TeamTypeBadge key={type.id} type={type} />
      ))}
    </div>
  );
};
