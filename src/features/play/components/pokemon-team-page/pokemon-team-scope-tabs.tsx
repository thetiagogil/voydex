"use client";

import { Icon } from "@/shared/components/icon";
import { TabsList, TabsTrigger } from "@/shared/components/ui/tabs";

type PokemonTeamScopeTabsProps = {
  counts: {
    all: number;
    team: number;
    box: number;
  };
  compact?: boolean;
};

export const PokemonTeamScopeTabs = ({
  counts,
  compact = false,
}: PokemonTeamScopeTabsProps) => {
  return (
    <TabsList>
      <TabsTrigger value="all">
        {compact ? (
          <span>{counts.all}</span>
        ) : (
          <>
            <span>All</span>
            <span className="hidden sm:inline">({counts.all})</span>
          </>
        )}
      </TabsTrigger>
      <TabsTrigger value="team">
        <Icon type="user" />
        {compact ? (
          <span>{counts.team}</span>
        ) : (
          <>
            <span className="hidden sm:inline">Team ({counts.team})</span>
            <span className="sm:hidden">{counts.team}</span>
          </>
        )}
      </TabsTrigger>
      <TabsTrigger value="box">
        <Icon type="box" />
        {compact ? (
          <span>{counts.box}</span>
        ) : (
          <>
            <span className="hidden sm:inline">Box ({counts.box})</span>
            <span className="sm:hidden">{counts.box}</span>
          </>
        )}
      </TabsTrigger>
    </TabsList>
  );
};
