"use client";

import { PokemonTeamAnalysis } from "@/features/play/components/pokemon-team-page/pokemon-team-analysis/pokemon-team-analysis";
import { PokemonTeamModal } from "@/features/play/components/shared/pokemon-team-modal";
import type { Play, PlayPokemon } from "@/features/play/types";
import {
  filterPokemonByScope,
  type PokemonTeamScope,
} from "@/features/play/utils/pokemon-team-display";
import { Icon } from "@/shared/components/icon";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { Tabs } from "@/shared/components/ui/tabs";
import { useEffect, useMemo, useState } from "react";
import {
  PokemonTeamManagementScopeTabs,
  PokemonTeamManagementViewTabs,
  type PokemonTeamManagementViewMode,
} from "./pokemon-team-management-tabs";
import { PokemonTeamPartyTab } from "./pokemon-team-party-tab";
import { PokemonTeamTableTab } from "./pokemon-team-table-tab";

type PokemonTeamManagementProps = {
  play: Play;
  allPokemon: PlayPokemon[];
  teamPokemon: PlayPokemon[];
  boxPokemon: PlayPokemon[];
};

const getScopeTitle = (scope: PokemonTeamScope) => {
  if (scope === "team") {
    return "Team";
  }

  if (scope === "box") {
    return "Box";
  }

  return "All Pokemon";
};

export const PokemonTeamManagement = ({
  play,
  allPokemon,
  teamPokemon,
  boxPokemon,
}: PokemonTeamManagementProps) => {
  const [activeScope, setActiveScope] = useState<PokemonTeamScope>("team");
  const [viewMode, setViewMode] =
    useState<PokemonTeamManagementViewMode>("party");
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );
  const [openEditDialog, setOpenEditDialog] = useState(false);
  const [addPosition, setAddPosition] = useState<number | null>(null);
  const [selectedPokemonId, setSelectedPokemonId] = useState<string | null>(
    teamPokemon[0]?.id ?? allPokemon[0]?.id ?? null,
  );

  const isRosterFull = allPokemon.length >= 12;
  const displayPokemon = useMemo(
    () => filterPokemonByScope(allPokemon, activeScope),
    [activeScope, allPokemon],
  );

  useEffect(() => {
    if (displayPokemon.length === 0) {
      setSelectedPokemonId(null);
      return;
    }

    if (
      !selectedPokemonId ||
      !displayPokemon.some((member) => member.id === selectedPokemonId)
    ) {
      setSelectedPokemonId(displayPokemon[0].id);
    }
  }, [displayPokemon, selectedPokemonId]);

  const handleEditClick = (pokemon: PlayPokemon) => {
    setEditingPokemon(pokemon);
    setAddPosition(null);
    setOpenEditDialog(true);
  };

  const handleAddClick = (toTeam: boolean) => {
    setEditingPokemon(null);

    if (toTeam) {
      const nextPosition = teamPokemon.length + 1;
      setAddPosition(nextPosition <= 6 ? nextPosition : 7);
    } else {
      const maxBoxPosition =
        boxPokemon.length > 0
          ? Math.max(...boxPokemon.map((pokemon) => pokemon.position))
          : 6;
      setAddPosition(maxBoxPosition + 1);
    }

    setOpenEditDialog(true);
  };

  const handleCloseEdit = () => {
    setOpenEditDialog(false);
    setEditingPokemon(null);
    setAddPosition(null);
  };

  return (
    <>
      <Card className="gap-0 overflow-hidden p-0">
        <div className="border-border flex flex-col gap-4 border-b p-4">
          <div className="flex flex-col gap-4 xl:flex-row xl:items-start xl:justify-between">
            <div>
              <h2 className="text-foreground text-xl font-bold">
                Pokemon Team Management
              </h2>
              <p className="text-muted-foreground mt-1 text-sm">
                Switch between party and table views while filtering your active
                team, box, or full roster.
              </p>
            </div>

            <div className="flex flex-wrap items-center justify-end gap-2">
              <Tabs
                value={viewMode}
                onValueChange={(value) =>
                  setViewMode(value as PokemonTeamManagementViewMode)
                }
                className="gap-0"
              >
                <PokemonTeamManagementViewTabs />
              </Tabs>

              <Tabs
                value={activeScope}
                onValueChange={(value) =>
                  setActiveScope(value as PokemonTeamScope)
                }
                className="gap-0"
              >
                <PokemonTeamManagementScopeTabs
                  counts={{
                    all: allPokemon.length,
                    team: teamPokemon.length,
                    box: boxPokemon.length,
                  }}
                />
              </Tabs>

              <Button
                variant="outline"
                onClick={() => handleAddClick(activeScope !== "box")}
                disabled={
                  isRosterFull ||
                  (activeScope === "team" && teamPokemon.length >= 6)
                }
              >
                <Icon type="add" />
                Add
              </Button>
            </div>
          </div>
        </div>

        {viewMode === "party" ? (
          <PokemonTeamPartyTab
            pokemon={displayPokemon}
            scopeTitle={getScopeTitle(activeScope)}
            slotCount={
              activeScope === "all" ? Math.max(6, displayPokemon.length) : 6
            }
            selectedPokemonId={selectedPokemonId}
            onSelect={setSelectedPokemonId}
            onEdit={handleEditClick}
            emptyMessage="No Pokemon in this group yet."
          />
        ) : (
          <PokemonTeamTableTab
            pokemon={displayPokemon}
            onEdit={handleEditClick}
            emptyMessage="No Pokemon in this group yet."
          />
        )}
      </Card>

      <Card className="gap-0 overflow-hidden p-0">
        <div className="border-border flex flex-col gap-4 border-b p-4 md:flex-row md:items-start md:justify-between">
          <div>
            <h2 className="text-foreground text-xl font-bold">Team Analysis</h2>
            <p className="text-muted-foreground mt-1 text-sm">
              This section follows the current Pokemon Team Management filter.
            </p>
          </div>
        </div>

        <PokemonTeamAnalysis
          pokemon={displayPokemon}
          generationId={play.game.generation.id}
        />
      </Card>

      <PokemonTeamModal
        openDialog={openEditDialog}
        setOpenDialog={setOpenEditDialog}
        play={play}
        pokemon={editingPokemon}
        position={addPosition}
        team={allPokemon}
        onClose={handleCloseEdit}
      />
    </>
  );
};
