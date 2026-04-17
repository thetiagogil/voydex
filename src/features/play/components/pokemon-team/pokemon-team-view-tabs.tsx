"use client";

import { TabsList, TabsTrigger } from "@/shared/components/ui/tabs";
import { LayoutPanelLeft, TableProperties } from "lucide-react";

export type PokemonTeamViewMode = "party" | "table";

export const PokemonTeamViewTabs = () => {
  return (
    <TabsList>
      <TabsTrigger value="party" title="Game view" aria-label="Game view">
        <LayoutPanelLeft className="h-4 w-4" />
        <span className="sr-only">Game view</span>
      </TabsTrigger>
      <TabsTrigger value="table" title="Table view" aria-label="Table view">
        <TableProperties className="h-4 w-4" />
        <span className="sr-only">Table view</span>
      </TabsTrigger>
    </TabsList>
  );
};
