import { TypeBadge } from "@/components/shared/type-badge";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
} from "@/components/ui/empty";
import { BookPlus, Edit, Plus, Users } from "lucide-react";
import { useState } from "react";
import { PokemonTeamModal } from "./pokemon-team-modal";

interface PokemonTeamProps {
  playId: string;
  generationId: number;
  pokemonTeam?: PlayPokemon[];
}

export const PokemonTeam = ({
  playId,
  generationId,
  pokemonTeam,
}: PokemonTeamProps) => {
  const [openSheet, setOpenSheet] = useState<boolean>(false);
  const [openPokemonDetails, setOpenPokemonDetails] = useState<boolean>(false);
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );
  const [openEditDialog, setOpenEditDialog] = useState<boolean>(false);
  const [addPosition, setAddPosition] = useState<number | null>(null);

  const team: PlayPokemon[] = pokemonTeam || [];

  const handleQuickEdit = (pokemon: PlayPokemon) => {
    setEditingPokemon(pokemon);
    setAddPosition(null);
    setOpenEditDialog(true);
  };

  const handleQuickAdd = () => {
    setEditingPokemon(null);
    // Calculate next available position in active team
    const activeTeam = team.filter((p) => p.position <= 6);
    const nextPosition = activeTeam.length + 1;
    setAddPosition(nextPosition <= 6 ? nextPosition : 7); // Default to box if active team full
    setOpenEditDialog(true);
  };

  const handleCloseEdit = () => {
    setOpenEditDialog(false);
    setEditingPokemon(null);
    setAddPosition(null);
  };

  // Create slots filled sequentially (no gaps)
  const activeTeam = team
    .filter((p) => p.position <= 6)
    .sort((a, b) => a.position - b.position);
  const pokemonTeamSlots = Array(6)
    .fill(null)
    .map((_, index) => activeTeam[index] || null);

  return (
    <Card>
      <CardHeader>
        <div className="flex items-center justify-between">
          <CardTitle className="flex items-center gap-2">
            <Users className="h-5 w-5" />
            Active Team ({activeTeam.length}/6)
          </CardTitle>
          <div className="flex gap-2">
            <Button
              variant={openSheet ? "outline-primary" : "outline-secondary"}
              size="sm"
              onClick={() => setOpenSheet(true)}
            >
              <Edit className="h-4 w-4" />
            </Button>
            <Button
              variant={
                openPokemonDetails ? "outline-primary" : "outline-secondary"
              }
              size="sm"
              onClick={() => setOpenPokemonDetails(!openPokemonDetails)}
            >
              <BookPlus className="h-4 w-4" />
            </Button>
          </div>
        </div>
      </CardHeader>

      <CardContent className="h-full">
        <div className="grid gap-4 md:grid-cols-3">
          {pokemonTeamSlots.map((pokemon, index) => {
            const showNatureAbility =
              !!pokemon && (!!pokemon.ability || !!pokemon.nature);
            return (
              <Card
                key={index}
                className={`transition-colors ${!pokemon ? "hover:border-primary cursor-pointer border-1 border-dashed" : "hover:border-primary cursor-pointer"}`}
                onClick={() =>
                  pokemon ? handleQuickEdit(pokemon) : handleQuickAdd()
                }
              >
                <CardContent className="flex-1">
                  {pokemon ? (
                    <div className="space-y-4">
                      <div className="flex gap-4">
                        <div className="flex w-50 justify-center">
                          <div className="h-24 w-24">
                            {/* Pokemon sprite */}
                            {pokemon.form?.sprite_url ? (
                              <img
                                src={pokemon.form.sprite_url}
                                alt={pokemon.species.name}
                                className="h-full w-full object-contain"
                              />
                            ) : (
                              <span className="bg-muted border-accent flex h-full w-full items-center justify-center rounded-full border" />
                            )}
                          </div>
                        </div>

                        <div className="flex w-50 flex-col justify-between">
                          {/* Pokemon name */}
                          <div className="flex w-full items-start justify-between">
                            <div>
                              <p className="font-semibold">
                                {pokemon.species.name}
                              </p>
                              <p className="text-muted-foreground text-sm">
                                {pokemon.nickname}
                              </p>
                            </div>
                            <Badge variant="outline">Lv. {pokemon.level}</Badge>
                          </div>

                          {/* Pokemon types */}
                          <div className="flex gap-1">
                            {pokemon.types.map((type) => (
                              <div key={type.id}>
                                <TypeBadge type={type.name as PokemonType} />
                              </div>
                            ))}
                          </div>
                        </div>
                      </div>

                      {openPokemonDetails && (
                        <>
                          {/* Pokemon nature and ability */}
                          {showNatureAbility && (
                            <div className="flex gap-2">
                              <div className="flex w-50 flex-col gap-2">
                                <p className="text-muted-foreground text-xs">
                                  Nature
                                </p>
                                <Badge
                                  variant="outline"
                                  className={`text-muted-foreground w-full py-1 text-xs ${!pokemon.nature?.name ? "border-dashed opacity-50" : ""}`}
                                >
                                  {pokemon.nature?.name || "-"}
                                </Badge>
                              </div>

                              <div className="flex w-50 flex-col gap-2">
                                <p className="text-muted-foreground text-xs">
                                  Ability
                                </p>
                                <Badge
                                  variant="outline"
                                  className={`text-muted-foreground w-full py-1 text-xs ${!pokemon.ability?.name ? "border-dashed opacity-50" : ""}`}
                                >
                                  {pokemon.ability?.name || "-"}
                                </Badge>
                              </div>
                            </div>
                          )}

                          {/* Pokemon moves */}
                          <div className="flex flex-col gap-2">
                            <p className="text-muted-foreground text-xs">
                              Moves
                            </p>
                            {/* Pokemon moves - always render 4 slots, filling with <Empty /> when missing */}
                            <div className="grid grid-cols-2 gap-2">
                              {Array.from({ length: 4 }).map((_, i) => {
                                const move = pokemon.moves[i];
                                return (
                                  <Badge
                                    key={i}
                                    variant="outline"
                                    className={`text-muted-foreground w-full py-1 text-xs ${!move?.name ? "border-dashed opacity-50" : ""}`}
                                  >
                                    {move?.name || "-"}
                                  </Badge>
                                );
                              })}
                            </div>
                          </div>
                        </>
                      )}
                    </div>
                  ) : (
                    <Empty className="flex h-full flex-col items-center justify-center p-0 opacity-50">
                      <EmptyHeader>
                        <EmptyMedia variant="icon">
                          <Plus />
                        </EmptyMedia>
                        <EmptyDescription>
                          Click to add Pokémon
                        </EmptyDescription>
                      </EmptyHeader>
                    </Empty>
                  )}
                </CardContent>
              </Card>
            );
          })}
        </div>
      </CardContent>

      <PokemonTeamModal
        openDialog={openEditDialog}
        setOpenDialog={setOpenEditDialog}
        playId={playId}
        generationId={generationId}
        pokemon={editingPokemon}
        position={addPosition}
        team={team}
        onClose={handleCloseEdit}
      />
    </Card>
  );
};
