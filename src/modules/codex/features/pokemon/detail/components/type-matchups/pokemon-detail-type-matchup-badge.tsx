import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import type { PokemonTypeMatchup } from "@/shared/domain/pokemon/type-effectiveness";
import { formatPokemonDetailTypeName } from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-utils";

type PokemonDetailTypeMatchupBadgeProps = {
  matchup: PokemonTypeMatchup;
};

export const PokemonDetailTypeMatchupBadge = ({
  matchup,
}: PokemonDetailTypeMatchupBadgeProps) => {
  const typeName = formatPokemonDetailTypeName(matchup.type);

  return (
    <li className="inline-flex">
      <Tooltip>
        <TooltipTrigger render={<span className="inline-flex" />}>
          <PokemonTypeBadge
            type={matchup.type}
            display="icon"
            label={typeName}
            size="md"
            variant="soft"
          />
        </TooltipTrigger>
        <TooltipContent>{typeName}</TooltipContent>
      </Tooltip>
    </li>
  );
};
