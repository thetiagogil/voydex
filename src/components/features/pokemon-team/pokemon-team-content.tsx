"use client";

import { Icon } from "@/components/shared/icon";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { useState } from "react";
import { PokemonTeamModal } from "../play/pokemon-team-modal";
import { PokemonTeamTable } from "./pokemon-team-table";

interface PokemonTeamContentProps {
  play: Play;
  allPokemon: PlayPokemon[];
  teamPokemon: PlayPokemon[];
  boxPokemon: PlayPokemon[];
}

export const PokemonTeamContent = ({
  play,
  allPokemon,
  teamPokemon,
  boxPokemon,
}: PokemonTeamContentProps) => {
  const [activeTab, setActiveTab] = useState("all");
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );
  const [openEditDialog, setOpenEditDialog] = useState(false);
  const [addPosition, setAddPosition] = useState<number | null>(null);

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
          ? Math.max(...boxPokemon.map((p) => p.position))
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
                Pokémon Management
              </h2>
              <p className="text-muted-foreground text-sm">
                View and manage all your caught Pokémon
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
                disabled={activeTab === "team" && teamPokemon.length >= 6}
              >
                <Icon type="add" />
                <span className="hidden sm:inline-block">Add Pokémon</span>
              </Button>
            </div>
          </div>

          <TabsContent value="all" className="m-0">
            <PokemonTeamTable
              pokemon={displayPokemon}
              onEdit={handleEditClick}
              emptyMessage="No Pokémon caught yet. Add your first one!"
            />
          </TabsContent>

          <TabsContent value="team" className="m-0">
            <PokemonTeamTable
              pokemon={displayPokemon}
              onEdit={handleEditClick}
              emptyMessage="No Pokémon in your team yet."
            />
          </TabsContent>

          <TabsContent value="box" className="m-0">
            <PokemonTeamTable
              pokemon={displayPokemon}
              onEdit={handleEditClick}
              emptyMessage="No Pokémon in your box yet."
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
