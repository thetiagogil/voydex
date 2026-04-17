"use client";

import { filterPokemonByScope, type PokemonTeamScope } from "@/features/play/utils/pokemon-team-display";
import type { PlayPokemon } from "@/features/play/types";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { Tabs } from "@/shared/components/ui/tabs";
import { useMemo, useState } from "react";
import { PokemonTeamScopeTabs } from "./pokemon-team-scope-tabs";
import { PokemonTeamAnalysisPanel } from "./pokemon-team-analysis-panel";

type PokemonTeamAnalysisDialogProps = {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  generationId: number;
  pokemon: PlayPokemon[];
  title?: string;
  description?: string;
};

export const PokemonTeamAnalysisDialog = ({
  open,
  onOpenChange,
  generationId,
  pokemon,
  title = "Team Analysis",
  description = "Review offensive coverage, defensive weaknesses, and the type chart for this roster.",
}: PokemonTeamAnalysisDialogProps) => {
  const [scope, setScope] = useState<PokemonTeamScope>("team");

  const filteredPokemon = useMemo(
    () => filterPokemonByScope(pokemon, scope),
    [pokemon, scope],
  );

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="flex h-[min(90vh,860px)] max-w-[min(96vw,1280px)] flex-col gap-0 overflow-hidden p-0">
        <DialogHeader className="border-border border-b p-6">
          <DialogTitle>{title}</DialogTitle>
          <DialogDescription>{description}</DialogDescription>
        </DialogHeader>

        <Tabs
          value={scope}
          onValueChange={(value) => setScope(value as PokemonTeamScope)}
          className="flex min-h-0 flex-1 flex-col gap-0"
        >
          <div className="border-border border-b px-6 py-4">
            <PokemonTeamScopeTabs
              counts={{
                all: pokemon.length,
                team: pokemon.filter((member) => member.position <= 6).length,
                box: pokemon.filter((member) => member.position > 6).length,
              }}
            />
          </div>

          <div className="min-h-0 flex-1 overflow-y-auto">
            <PokemonTeamAnalysisPanel
              pokemon={filteredPokemon}
              generationId={generationId}
            />
          </div>
        </Tabs>
      </DialogContent>
    </Dialog>
  );
};
