"use client";

import { Loading } from "@/components/shared/loading";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import { usePlayPokemonTeam, useRemovePokemonFromTeam } from "@/hooks/usePlay";
import { BookPlus, Plus } from "lucide-react";
import { useState } from "react";
import { PlayPokemonTeamForm } from "./play-pokemon-team-form";
import { PlayPokemonTeamSheetCard } from "./play-pokemon-team-sheet-card";

interface PlayPokemonTeamProps {
  team: PlayPokemonTeam[];
  openDetails: boolean;
  isBox?: boolean;
  handleAdd: (position: number) => void;
  handleEdit: (pokemon: PlayPokemonTeam) => void;
  handleDelete: (pokemonId: string) => void;
}

interface PlayPokemonTeamSheetProps {
  openSheet?: boolean;
  setOpenSheet?: (open: boolean) => void;
  playId: string;
  generationId: number;
}

const PlayPokemonTeamInternal = ({
  team,
  openDetails,
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
          <PlayPokemonTeamSheetCard
            key={pokemon.id}
            pokemon={pokemon}
            openDetails={openDetails}
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

export const PlayPokemonTeamSheet = ({
  openSheet,
  setOpenSheet,
  playId,
  generationId,
}: PlayPokemonTeamSheetProps) => {
  const { data: pokemonTeam, isLoading } = usePlayPokemonTeam(playId);
  const removePokemon = useRemovePokemonFromTeam();
  const [openDetails, setOpenDetails] = useState(false);
  const [openDialog, setOpenDialog] = useState(false);
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
    setOpenDialog(true);
  };

  const handleEdit = (pokemon: PlayPokemonTeam) => {
    setEditingPokemon(pokemon);
    setAddPosition(null);
    setOpenDialog(true);
  };

  const handleDelete = async (pokemonId: string) => {
    if (
      confirm("Are you sure you want to remove this Pokémon from the team?")
    ) {
      await removePokemon.mutateAsync({ playId, pokemonId });
    }
  };

  const handleCloseDialog = () => {
    setOpenDialog(false);
    setEditingPokemon(null);
    setAddPosition(null);
  };

  return (
    <Sheet open={openSheet} onOpenChange={setOpenSheet}>
      <SheetContent className={openDetails ? "sm:w-[900px]" : undefined}>
        <SheetHeader>
          <div className="flex justify-between">
            <div>
              <SheetTitle className="flex items-center gap-2">
                Team Management ({team.length}/12)
              </SheetTitle>
              <SheetDescription>
                Manage your active team and boxed Pokémon
              </SheetDescription>
            </div>

            <Button
              variant={openDetails ? "outline-primary" : "outline-secondary"}
              size="sm"
              onClick={() => setOpenDetails(!openDetails)}
            >
              <BookPlus className="h-4 w-4" />
            </Button>
          </div>
        </SheetHeader>

        <div className="overflow-y-auto px-4">
          {isLoading ? (
            <Loading />
          ) : (
            <div className="space-y-6 pb-4">
              {/* Active Team */}
              <PlayPokemonTeamInternal
                team={activeTeam}
                openDetails={openDetails}
                handleEdit={handleEdit}
                handleAdd={handleAdd}
                handleDelete={handleDelete}
              />

              {/* Box */}
              <PlayPokemonTeamInternal
                team={boxTeam}
                openDetails={openDetails}
                isBox
                handleEdit={handleEdit}
                handleAdd={handleAdd}
                handleDelete={handleDelete}
              />
            </div>
          )}
        </div>

        <SheetFooter>
          <SheetClose asChild>
            <Button variant="outline-secondary">Close</Button>
          </SheetClose>
        </SheetFooter>

        {/* Edit/Add Dialog */}
        <PlayPokemonTeamForm
          openDialog={openDialog}
          setOpenDialog={setOpenDialog}
          playId={playId}
          generationId={generationId}
          pokemon={editingPokemon}
          position={addPosition}
          onClose={handleCloseDialog}
        />
      </SheetContent>
    </Sheet>
  );
};
