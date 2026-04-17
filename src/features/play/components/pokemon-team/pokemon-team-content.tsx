"use client";

import { PokemonTeamModal } from "@/features/play/components/pokemon-team/pokemon-team-modal";
import type { Play, PlayPokemon } from "@/features/play/types";
import { Icon } from "@/shared/components/icon";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import {
  Tabs,
  TabsContent,
  TabsList,
  TabsTrigger,
} from "@/shared/components/ui/tabs";
import { useState } from "react";
import { PokemonTeamTable } from "./pokemon-team-table";

type PokemonTeamContentProps = {
  play: Play;
  allPokemon: PlayPokemon[];
  teamPokemon: PlayPokemon[];
  boxPokemon: PlayPokemon[];
};

export const PokemonTeamContent = ({
  play,
  allPokemon,
  teamPokemon,
  boxPokemon,
}: PokemonTeamContentProps) => {
  const [activeTab, setActiveTab] = useState("all");
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(null);
  const [openEditDialog, setOpenEditDialog] = useState(false);
  const [addPosition, setAddPosition] = useState<number | null>(null);

  const isRosterFull = allPokemon.length >= 12;

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

  const displayPokemon =
    activeTab === "team"
      ? teamPokemon
      : activeTab === "box"
        ? boxPokemon
        : allPokemon;

  return (
    <>
      <Card className="gap-0 rounded-b-sm p-0">
        <Tabs value={activeTab} onValueChange={setActiveTab}>
          <div className="border-border flex items-center justify-between gap-4 border-b p-4">
            <div>
              <h2 className="text-foreground text-xl font-bold">
                Pokemon Management
              </h2>
              <p className="text-muted-foreground text-sm">
                View and manage all your caught Pokemon
              </p>
            </div>

            <div className="flex items-center gap-2">
              <TabsList>
                <TabsTrigger value="all">All ({allPokemon.length})</TabsTrigger>
                <TabsTrigger value="team">
                  <Icon type="user" />
                  <span className="hidden sm:inline-block">
                    Team ({teamPokemon.length})
                  </span>
                  <span className="sm:hidden">{teamPokemon.length}</span>
                </TabsTrigger>
                <TabsTrigger value="box">
                  <Icon type="box" />
                  <span className="hidden sm:inline-block">
                    Box ({boxPokemon.length})
                  </span>
                  <span className="sm:hidden">{boxPokemon.length}</span>
                </TabsTrigger>
              </TabsList>

              <Button
                size="sm"
                onClick={() => handleAddClick(activeTab !== "box")}
                disabled={
                  isRosterFull ||
                  (activeTab === "team" && teamPokemon.length >= 6)
                }
              >
                <Icon type="add" />
                <span className="hidden sm:inline-block">Add Pokemon</span>
              </Button>
            </div>
          </div>

          <TabsContent value="all" className="m-0">
            <PokemonTeamTable
              pokemon={displayPokemon}
              onEdit={handleEditClick}
              emptyMessage="No Pokemon caught yet. Add your first one."
            />
          </TabsContent>

          <TabsContent value="team" className="m-0">
            <PokemonTeamTable
              pokemon={displayPokemon}
              onEdit={handleEditClick}
              emptyMessage="No Pokemon in your team yet."
            />
          </TabsContent>

          <TabsContent value="box" className="m-0">
            <PokemonTeamTable
              pokemon={displayPokemon}
              onEdit={handleEditClick}
              emptyMessage="No Pokemon in your box yet."
            />
          </TabsContent>
        </Tabs>
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
