import { Fragment } from "react";

import type {
  PokemonDetailTypeMatchupGroupData,
  PokemonDetailTypeMatchupSectionData,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Separator } from "@/shared/components/ui/separator";

type PokemonDetailTypeMatchupSectionProps = {
  section: PokemonDetailTypeMatchupSectionData;
};

const getPokemonDetailTypeMatchupSectionTitle = (
  section: PokemonDetailTypeMatchupSectionData,
) => {
  if (!section.groups.length) {
    return section.title;
  }

  const multiplierLabels = section.groups
    .map((group) => group.multiplierLabel)
    .join(" / ");

  return `${section.title} (${multiplierLabels})`;
};

const PokemonDetailTypeMatchupGroup = ({
  group,
}: {
  group: PokemonDetailTypeMatchupGroupData;
}) => {
  return (
    <div className="min-w-0">
      <ul className="flex min-h-0 flex-wrap gap-2">
        {group.matchups.map((matchup) => (
          <PokemonTypeBadge
            key={matchup.type}
            type={matchup.type}
            label={matchup.type}
            size="sm"
            variant="soft"
          />
        ))}
      </ul>
    </div>
  );
};

export const PokemonDetailTypeMatchupSection = ({
  section,
}: PokemonDetailTypeMatchupSectionProps) => {
  if (!section.groups.length) return;

  return (
    <div className="flex min-h-0 flex-1 flex-col justify-center gap-2 px-4 py-3">
      <div className="text-muted-foreground text-xs">
        {getPokemonDetailTypeMatchupSectionTitle(section)}
      </div>
      <div className="flex min-h-0 items-center gap-3">
        {section.groups.map((group, index) => (
          <Fragment key={group.id}>
            {index > 0 ? (
              <Separator
                orientation="vertical"
                className="bg-app-surface-border/80 h-6 w-px"
              />
            ) : null}
            <PokemonDetailTypeMatchupGroup group={group} />
          </Fragment>
        ))}
      </div>
    </div>
  );
};
