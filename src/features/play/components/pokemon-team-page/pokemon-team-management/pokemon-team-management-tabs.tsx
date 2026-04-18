"use client";

import type { PokemonTeamScope } from "@/features/play/utils/pokemon-team-display";
import { Icon } from "@/shared/components/icon";
import { TabsList, TabsTrigger } from "@/shared/components/ui/tabs";
import { LayoutPanelLeft, TableProperties } from "lucide-react";

export type PokemonTeamManagementViewMode = "party" | "table";

export type PokemonTeamScopeCounts = {
  all: number;
  team: number;
  box: number;
};

type CountLabelProps = {
  label: string;
  count: number;
  compact?: boolean;
};

type PokemonTeamManagementScopeTabsProps = {
  counts: PokemonTeamScopeCounts;
  includeAll?: boolean;
  compact?: boolean;
};

const CountLabel = ({ label, count, compact = false }: CountLabelProps) => {
  if (compact) {
    return <span>{count}</span>;
  }

  return (
    <>
      <span className="hidden sm:inline">
        {label} ({count})
      </span>
      <span className="sm:hidden">{count}</span>
    </>
  );
};

const scopeCountByValue = (
  scope: PokemonTeamScope,
  counts: PokemonTeamScopeCounts,
) => {
  if (scope === "team") {
    return counts.team;
  }

  if (scope === "box") {
    return counts.box;
  }

  return counts.all;
};

export const PokemonTeamManagementScopeTabs = ({
  counts,
  includeAll = true,
  compact = false,
}: PokemonTeamManagementScopeTabsProps) => {
  const scopes: Array<{
    value: PokemonTeamScope;
    label: string;
    icon?: "user" | "box";
  }> = includeAll
    ? [
        { value: "all", label: "All" },
        { value: "team", label: "Team", icon: "user" },
        { value: "box", label: "Box", icon: "box" },
      ]
    : [
        { value: "team", label: "Team", icon: "user" },
        { value: "box", label: "Box", icon: "box" },
      ];

  return (
    <TabsList>
      {scopes.map((scope) => (
        <TabsTrigger key={scope.value} value={scope.value}>
          {scope.icon ? <Icon type={scope.icon} /> : null}
          <CountLabel
            label={scope.label}
            count={scopeCountByValue(scope.value, counts)}
            compact={compact}
          />
        </TabsTrigger>
      ))}
    </TabsList>
  );
};

export const PokemonTeamManagementViewTabs = () => {
  return (
    <TabsList>
      <TabsTrigger value="party" title="Party view" aria-label="Party view">
        <LayoutPanelLeft className="h-4 w-4" />
        <span>Party</span>
      </TabsTrigger>
      <TabsTrigger value="table" title="Table view" aria-label="Table view">
        <TableProperties className="h-4 w-4" />
        <span>Table</span>
      </TabsTrigger>
    </TabsList>
  );
};
