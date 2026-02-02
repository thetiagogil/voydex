"use client";

import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { cn } from "@/lib/utils/cn";
import { Archive, ExternalLink, Plus, Sparkles, Users } from "lucide-react";
import Link from "next/link";
import { useState } from "react";
import { PokemonTeamCard } from "./pokemon-team-card";
import { PokemonTeamModal } from "./pokemon-team-modal";

interface PokemonTeamProps {
  playId: string;
  generationId: number;
  genId: string;
  gameSlug: string;
  pokemonTeam?: PlayPokemon[];
}

export const PokemonTeam = ({
  playId,
  generationId,
  genId,
  gameSlug,
  pokemonTeam,
}: PokemonTeamProps) => {
  const [activeTab, setActiveTab] = useState("team");
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );
  const [openEditDialog, setOpenEditDialog] = useState<boolean>(false);
  const [addPosition, setAddPosition] = useState<number | null>(null);
  const [addToTeam, setAddToTeam] = useState<boolean>(true);

  const allPokemon: PlayPokemon[] = pokemonTeam || [];

  // Split into team (position <= 6) and box (position > 6)
  const teamPokemon = allPokemon
    .filter((p) => p.position <= 6)
    .sort((a, b) => a.position - b.position);
  const boxPokemon = allPokemon
    .filter((p) => p.position > 6)
    .sort((a, b) => a.position - b.position);

  const shinyCount = allPokemon.filter((p) => p.is_shiny).length;

  // Create 6 team slots (filled sequentially)
  const teamSlots = Array.from({ length: 6 }, (_, i) => teamPokemon[i] || null);

  const handleEditClick = (pokemon: PlayPokemon) => {
    setEditingPokemon(pokemon);
    setAddPosition(null);
    setOpenEditDialog(true);
  };

  const handleAddClick = (toTeam: boolean) => {
    setEditingPokemon(null);
    setAddToTeam(toTeam);
    if (toTeam) {
      // Next position in team
      const nextPosition = teamPokemon.length + 1;
      setAddPosition(nextPosition <= 6 ? nextPosition : 7);
    } else {
      // Add to box - find max position and add 1
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

  return (
    <section className="rounded-xl border">
      <Tabs value={activeTab} onValueChange={setActiveTab}>
        {/* Header */}
        <div className="flex items-center justify-between gap-4 border-b p-4">
          <div className="flex items-center gap-3">
            <div className="bg-primary/10 flex h-10 w-10 items-center justify-center rounded-lg">
              {activeTab === "team" ? (
                <Users className="text-primary h-5 w-5" />
              ) : (
                <Archive className="text-primary h-5 w-5" />
              )}
            </div>
            <div>
              <h2 className="text-foreground text-xl font-bold">Pokémon</h2>
              <p className="text-muted-foreground text-xs">
                {teamPokemon.length}/6 team · {boxPokemon.length} in box
                {shinyCount > 0 && (
                  <span className="text-warning ml-2 inline-flex items-center gap-1">
                    <Sparkles className="h-3 w-3" />
                    {shinyCount} shiny
                  </span>
                )}
              </p>
            </div>
          </div>

          <div className="flex items-center gap-2">
            <TabsList className="h-9">
              <TabsTrigger value="team" className="px-3 text-xs">
                <Users className="mr-1.5 h-3.5 w-3.5" />
                Team
              </TabsTrigger>
              <TabsTrigger value="box" className="px-3 text-xs">
                <Archive className="mr-1.5 h-3.5 w-3.5" />
                Box
              </TabsTrigger>
            </TabsList>

            <Button
              size="sm"
              onClick={() => handleAddClick(activeTab === "team")}
              disabled={activeTab === "team" && teamPokemon.length >= 6}
              className="bg-primary/10 text-primary hover:bg-primary hover:text-primary-foreground"
            >
              <Plus className="mr-1 h-4 w-4" />
              Add
            </Button>

            <Button size="sm" variant="outline-secondary" asChild>
              <Link
                href={`/adventures/gen/${genId}/game/${gameSlug}/play/${playId}/pokemon-team`}
              >
                <ExternalLink className="mr-1 h-4 w-4" />
                Manage
              </Link>
            </Button>
          </div>
        </div>

        {/* Team Tab Content */}
        <TabsContent value="team" className="mt-0 p-4">
          <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-6">
            {teamSlots.map((pokemon, index) =>
              pokemon ? (
                <PokemonTeamCard
                  key={pokemon.id}
                  pokemon={pokemon}
                  onEditClick={() => handleEditClick(pokemon)}
                />
              ) : (
                <button
                  key={`empty-${index}`}
                  onClick={() => handleAddClick(true)}
                  className={cn(
                    "flex aspect-[4/5] w-full flex-col items-center justify-center gap-2 rounded-xl border-2 border-dashed p-3",
                    "border-muted-foreground/30 hover:border-primary/50",
                    "transition-all duration-200",
                  )}
                >
                  <div className="bg-muted flex h-12 w-12 items-center justify-center rounded-full">
                    <Plus className="text-muted-foreground h-6 w-6" />
                  </div>
                  <span className="text-muted-foreground text-sm">
                    Slot {index + 1}
                  </span>
                </button>
              ),
            )}
          </div>
        </TabsContent>

        {/* Box Tab Content */}
        <TabsContent value="box" className="mt-0 p-4">
          {boxPokemon.length === 0 ? (
            <div className="py-12 text-center">
              <div className="bg-muted mx-auto mb-3 flex h-14 w-14 items-center justify-center rounded-2xl">
                <Archive className="text-muted-foreground h-7 w-7" />
              </div>
              <p className="text-muted-foreground mb-3 text-sm">
                No Pokémon in the box yet.
              </p>
              <Button
                size="sm"
                variant="outline-secondary"
                onClick={() => handleAddClick(false)}
              >
                <Plus className="mr-1 h-4 w-4" />
                Add to Box
              </Button>
            </div>
          ) : (
            <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6">
              {boxPokemon.map((pokemon) => (
                <PokemonTeamCard
                  key={pokemon.id}
                  pokemon={pokemon}
                  onEditClick={() => handleEditClick(pokemon)}
                />
              ))}
            </div>
          )}
        </TabsContent>
      </Tabs>

      <PokemonTeamModal
        openDialog={openEditDialog}
        setOpenDialog={setOpenEditDialog}
        playId={playId}
        generationId={generationId}
        pokemon={editingPokemon}
        position={addPosition}
        team={allPokemon}
        onClose={handleCloseEdit}
      />
    </section>
  );
};
