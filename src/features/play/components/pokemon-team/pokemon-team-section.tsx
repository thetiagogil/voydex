"use client";

import { PokemonTeamManagementScopeTabs } from "@/features/play/components/pokemon-team-page/pokemon-team-management/pokemon-team-management-tabs";
import type { Play, PlayPokemon } from "@/features/play/types";
import { Icon } from "@/shared/components/icon";
import { PokemonCard } from "@/shared/components/pokemon-card";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { Tabs, TabsContent } from "@/shared/components/ui/tabs";
import { getPlaysPokemonTeamRoute } from "@/shared/constants/routes";
import Link from "next/link";
import { useState } from "react";
import { PokemonTeamModal } from "../shared/pokemon-team-modal";
import { PokemonEmpty } from "./pokemon-empty";

type PokemonTeamSectionProps = {
  play: Play;
  pokemonTeam?: PlayPokemon[];
};

export const PokemonTeamSection = ({
  play,
  pokemonTeam,
}: PokemonTeamSectionProps) => {
  const [openDialog, setOpenDialog] = useState(false);
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );

  const allPokemon: PlayPokemon[] = pokemonTeam || [];
  const teamPokemon = allPokemon
    .filter((pokemon) => pokemon.position <= 6)
    .sort((left, right) => left.position - right.position);
  const boxPokemon = allPokemon
    .filter((pokemon) => pokemon.position > 6)
    .sort((left, right) => left.position - right.position);

  const shinyCount = allPokemon.filter((pokemon) => pokemon.isShiny).length;
  const teamSlots = Array.from(
    { length: 6 },
    (_, index) => teamPokemon[index] || null,
  );
  const boxSlots = Array.from(
    { length: 6 },
    (_, index) => boxPokemon[index] || null,
  );
  const isRosterFull = allPokemon.length >= 12;

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
        <div className="border-border flex justify-between gap-2 border-b p-4 sm:items-center">
          <div>
            <h2 className="text-foreground text-xl font-bold">Pokemon</h2>
            <p className="text-muted-foreground flex gap-1 text-xs">
              <span>{teamPokemon.length}/6 team</span>
              <span>&middot;</span>
              <span>{boxPokemon.length} in box</span>
              {shinyCount > 0 ? (
                <>
                  <span>&middot;</span>
                  <span>{shinyCount} shiny</span>
                </>
              ) : null}
            </p>
          </div>

          <div className="flex items-center gap-2">
            <PokemonTeamManagementScopeTabs
              counts={{
                all: allPokemon.length,
                team: teamPokemon.length,
                box: boxPokemon.length,
              }}
              includeAll={false}
            />

            <Button variant="outline" asChild>
              <Link href={getPlaysPokemonTeamRoute(play.id)}>
                <Icon type="details" />
                <span className="hidden sm:inline-block">Manage</span>
              </Link>
            </Button>

            <Button
              variant="outline"
              onClick={handleAddClick}
              disabled={isRosterFull}
            >
              <Icon type="add" />
              <span className="hidden sm:inline-block">Add</span>
            </Button>
          </div>
        </div>

        <TabsContent value="team" className="p-4">
          <div className="grid grid-cols-2 gap-3 md:grid-cols-3 xl:grid-cols-6">
            {teamSlots.map((pokemon, index) =>
              pokemon ? (
                <PokemonCard
                  key={index}
                  pokemon={pokemon}
                  onClick={() => handleEditClick(pokemon)}
                  hasCardHover
                />
              ) : (
                <PokemonEmpty key={index} index={index} />
              ),
            )}
          </div>
        </TabsContent>

        <TabsContent value="box" className="p-4">
          <div className="grid grid-cols-2 gap-3 md:grid-cols-3 xl:grid-cols-6">
            {boxSlots.map((pokemon, index) =>
              pokemon ? (
                <PokemonCard
                  key={index}
                  pokemon={pokemon}
                  onClick={() => handleEditClick(pokemon)}
                  hasCardHover
                />
              ) : (
                <PokemonEmpty key={index} index={index} isBox />
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
