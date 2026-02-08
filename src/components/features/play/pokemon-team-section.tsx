"use client";

import { Icon } from "@/components/shared/icon";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import Link from "next/link";
import { useState } from "react";
import { PokemonCard } from "./pokemon-card";
import { PokemonEmpty } from "./pokemon-empty";
import { PokemonTeamModal } from "./pokemon-team-modal";

interface PokemonTeamSectionProps {
  play: Play;
  genId: string;
  gameSlug: string;
  pokemonTeam?: PlayPokemon[];
}

export const PokemonTeamSection = ({
  play,
  genId,
  gameSlug,
  pokemonTeam,
}: PokemonTeamSectionProps) => {
  const [openDialog, setOpenDialog] = useState<boolean>(false);
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );

  const allPokemon: PlayPokemon[] = pokemonTeam || [];

  const teamPokemon = allPokemon
    .filter((p) => p.position <= 6)
    .sort((a, b) => a.position - b.position);
  const boxPokemon = allPokemon
    .filter((p) => p.position > 6)
    .sort((a, b) => a.position - b.position);

  const hasNatureAndAbility = play.game?.generation?.id >= 3;
  const shinyCount = allPokemon.filter((p) => p.is_shiny).length;
  const teamSlots = Array.from({ length: 6 }, (_, i) => teamPokemon[i] || null);
  const boxSlots = Array.from({ length: 6 }, (_, i) => boxPokemon[i] || null);

  const handleEditClick = (pokemon: PlayPokemon) => {
    setEditingPokemon(pokemon);
    setOpenDialog(true);
  };

  const handleAddClick = () => {
    setEditingPokemon(null);
    setOpenDialog(true);
  };

  const handleCloseEdit = () => {
    setOpenDialog(false);
    setEditingPokemon(null);
  };

  return (
    <Card className="gap-0 p-0">
      <Tabs defaultValue="team">
        {/* Header */}
        <div className="border-border flex items-center justify-between gap-2 border-b p-4">
          <div>
            <h2 className="text-foreground text-xl font-bold">Pokémon</h2>
            <p className="text-muted-foreground flex gap-1 text-xs">
              <span>{teamPokemon.length}/6 team </span>
              <span>•</span>
              <span>{boxPokemon.length} in box</span>
              {shinyCount > 0 && (
                <>
                  <span>•</span>
                  <span>{shinyCount} shiny</span>
                </>
              )}
            </p>
          </div>

          <div className="flex items-center gap-2">
            <TabsList>
              <TabsTrigger value="team">
                <Icon type="user" />
                Team
              </TabsTrigger>
              <TabsTrigger value="box">
                <Icon type="box" />
                Box
              </TabsTrigger>
            </TabsList>

            <Button variant="outline" onClick={handleAddClick}>
              <Icon type="add" /> Add pokémon
            </Button>

            <Button variant="outline" asChild>
              <Link
                href={`/adventures/gen/${genId}/game/${gameSlug}/play/${play?.id}/pokemon-team`}
              >
                <Icon type="edit" />
                Manage
              </Link>
            </Button>
          </div>
        </div>

        <TabsContent value="team" className="p-4">
          <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-6">
            {teamSlots.map((pokemon, i) =>
              pokemon ? (
                <PokemonCard
                  key={i}
                  pokemon={pokemon}
                  onEditClick={() => handleEditClick(pokemon)}
                  hasNatureAndAbility={hasNatureAndAbility}
                />
              ) : (
                <PokemonEmpty key={i} index={i} />
              ),
            )}
          </div>
        </TabsContent>

        <TabsContent value="box" className="p-4">
          <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-6">
            {boxSlots.map((pokemon, i) =>
              pokemon ? (
                <PokemonCard
                  key={i}
                  pokemon={pokemon}
                  onEditClick={() => handleEditClick(pokemon)}
                  hasNatureAndAbility={hasNatureAndAbility}
                />
              ) : (
                <PokemonEmpty key={i} index={i} />
              ),
            )}
          </div>
        </TabsContent>
      </Tabs>

      <PokemonTeamModal
        openDialog={openDialog}
        setOpenDialog={setOpenDialog}
        play={play}
        pokemon={editingPokemon}
        position={null}
        team={allPokemon}
        onClose={handleCloseEdit}
      />
    </Card>
  );
};
