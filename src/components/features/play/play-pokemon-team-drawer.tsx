"use client";

import { Loading } from "@/components/shared/loading";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import {
  Drawer,
  DrawerClose,
  DrawerContent,
  DrawerDescription,
  DrawerFooter,
  DrawerHeader,
  DrawerTitle,
} from "@/components/ui/drawer";
import { usePlayPokemonTeam, useRemovePokemonFromTeam } from "@/hooks/usePlay";
import { BookPlus, Plus, Users } from "lucide-react";
import { useState } from "react";
import { PlayPokemonTeamDrawerCard } from "./play-pokemon-team-drawer-card";
import { PlayPokemonTeamForm } from "./play-pokemon-team-form";

interface PlayPokemonTeamProps {
  team: PlayPokemonTeam[];
  viewDetails: boolean;
  isBox?: boolean;
  handleAdd: (position: number) => void;
  handleEdit: (pokemon: PlayPokemonTeam) => void;
  handleDelete: (pokemonId: string) => void;
}

interface PlayPokemonTeamDrawerProps {
  playId: string;
  generationId: number;
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

const PlayPokemonTeamInternal = ({
  team,
  viewDetails,
  isBox,
  handleAdd,
  handleEdit,
  handleDelete,
}: PlayPokemonTeamProps) => {
  return (
    <div className="space-y-2">
      <div className="flex items-center justify-between">
        <h3 className="text-sm font-semibold">Active Team ({team.length}/6)</h3>
      </div>
      <div className="space-y-2">
        {team.map((pokemon) => (
          <PlayPokemonTeamDrawerCard
            key={pokemon.id}
            pokemon={pokemon}
            viewDetails={viewDetails}
            onEdit={() => handleEdit(pokemon)}
            onDelete={() => handleDelete(pokemon.id)}
          />
        ))}

        {/* Empty slots */}
        {Array.from({ length: 6 - team.length }).map((_, i) => (
          <Card
            key={i}
            onClick={() => handleAdd(team.length + i + 1 + (isBox ? 6 : 0))}
          >
            <CardContent className="flex items-center justify-center gap-2 p-3">
              <Plus className="text-muted-foreground h-4 w-4" />
              <span className="text-muted-foreground text-sm">Add Pokémon</span>
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  );
};

export const PlayPokemonTeamDrawer = ({
  playId,
  generationId,
  open,
  onOpenChange,
}: PlayPokemonTeamDrawerProps) => {
  const { data: pokemonTeam, isLoading } = usePlayPokemonTeam(playId);
  const removePokemon = useRemovePokemonFromTeam();
  const [viewDetails, setViewDetails] = useState(false);
  const [viewDialog, setViewDialog] = useState(false);
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemonTeam | null>(
    null,
  );
  const [addPosition, setAddPosition] = useState<number | null>(null);

  const team: PlayPokemonTeam[] = pokemonTeam || [];
  const activeTeam = team.filter((p) => p.position <= 6);
  const boxTeam = team.filter((p) => p.position > 6);

  const handleAdd = (position: number) => {
    setEditingPokemon(null);
    setAddPosition(position);
    setViewDialog(true);
  };

  const handleEdit = (pokemon: PlayPokemonTeam) => {
    setEditingPokemon(pokemon);
    setAddPosition(null);
    setViewDialog(true);
  };

  const handleDelete = async (pokemonId: string) => {
    if (
      confirm("Are you sure you want to remove this Pokémon from the team?")
    ) {
      await removePokemon.mutateAsync({ playId, pokemonId });
    }
  };

  const handleCloseDialog = () => {
    setViewDialog(false);
    setEditingPokemon(null);
    setAddPosition(null);
  };

  return (
    <>
      <Drawer open={open} onOpenChange={onOpenChange}>
        <DrawerContent className={viewDetails ? "w-[900px]" : "w-3/4 max-w-sm"}>
          <DrawerHeader>
            <div className="flex items-center justify-between">
              <div>
                <DrawerTitle className="flex items-center gap-2">
                  <Users className="h-5 w-5" />
                  Team Management ({team.length}/12)
                </DrawerTitle>
                <DrawerDescription>
                  Manage your active team and boxed Pokémon
                </DrawerDescription>
              </div>
              <Button
                variant={viewDetails ? "outline" : "outline-secondary"}
                size="sm"
                onClick={() => setViewDetails(!viewDetails)}
              >
                <BookPlus className="h-4 w-4" />
              </Button>
            </div>
          </DrawerHeader>

          <div className="overflow-y-auto px-4">
            {isLoading ? (
              <Loading />
            ) : (
              <div className="space-y-6 pb-4">
                {/* Active Team */}
                <PlayPokemonTeamInternal
                  team={activeTeam}
                  viewDetails={viewDetails}
                  handleEdit={handleEdit}
                  handleAdd={handleAdd}
                  handleDelete={handleDelete}
                />

                {/* Box */}
                <PlayPokemonTeamInternal
                  team={boxTeam}
                  viewDetails={viewDetails}
                  isBox
                  handleEdit={handleEdit}
                  handleAdd={handleAdd}
                  handleDelete={handleDelete}
                />
              </div>
            )}
          </div>

          <DrawerFooter>
            <DrawerClose asChild>
              <Button variant="outline-secondary">Close</Button>
            </DrawerClose>
          </DrawerFooter>
        </DrawerContent>
      </Drawer>

      {/* Edit/Add Dialog */}
      <PlayPokemonTeamForm
        open={viewDialog}
        openOnChange={setViewDialog}
        playId={playId}
        generationId={generationId}
        pokemon={editingPokemon}
        position={addPosition}
        onClose={handleCloseDialog}
      />
    </>
  );
};
