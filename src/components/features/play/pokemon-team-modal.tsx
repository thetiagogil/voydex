"use client";

import { PlayTeamFormContent } from "@/components/forms/pokemon-team-form-content";
import type { PokemonTeamFormValues } from "@/components/forms/schemas/pokemon-team-schemas";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  useAddPokemonToTeam,
  useUpdatePokemonInTeam,
} from "@/hooks/gameplay/usePlayPokemonTeam";
import { toastPromise } from "@/lib/utils/toast-promise";
import type { Play, PlayPokemon } from "@/types/play";

interface PokemonTeamModalProps {
  openDialog: boolean;
  setOpenDialog: (open: boolean) => void;
  play: Play;
  pokemon: PlayPokemon | null;
  position: number | null;
  team?: PlayPokemon[];
  onClose: () => void;
}

export const PokemonTeamModal = ({
  openDialog,
  setOpenDialog,
  play,
  pokemon,
  position,
  team = [],
  onClose,
}: PokemonTeamModalProps) => {
  const addPokemon = useAddPokemonToTeam();
  const updatePokemon = useUpdatePokemonInTeam();
  const isEditing = !!pokemon;

  const handleSubmit = async (data: PokemonTeamFormValues) => {
    try {
      if (isEditing && pokemon) {
        await toastPromise(
          updatePokemon.mutateAsync({
            playId: play.id,
            pokemonId: pokemon.id,
            updates: {
              species_id: data.species_id,
              form_id: data.form_id,
              nickname: data.nickname || undefined,
              level: data.level || 5,
              position: data.position,
              gender: data.gender,
              is_shiny: data.is_shiny,
              nature_id: data.nature_id,
              ability_id: data.ability_id,
              move1_id: data.move1_id,
              move2_id: data.move2_id,
              move3_id: data.move3_id,
              move4_id: data.move4_id,
            },
          }),
          {
            loading: "Updating Pokémon...",
            success: "Pokémon updated successfully!",
            error: (err) => err?.message || "Failed to update Pokémon",
          },
        );
      } else {
        await toastPromise(
          addPokemon.mutateAsync({
            playId: play.id,
            pokemon: {
              species_id: data.species_id,
              form_id: data.form_id,
              nickname: data.nickname || undefined,
              level: data.level || 5,
              position: data.position,
              gender: data.gender,
              is_shiny: data.is_shiny,
              nature_id: data.nature_id,
              ability_id: data.ability_id,
              move1_id: data.move1_id,
              move2_id: data.move2_id,
              move3_id: data.move3_id,
              move4_id: data.move4_id,
            },
          }),
          {
            loading: "Adding Pokémon...",
            success: "Pokémon added successfully!",
            error: (err) => err?.message || "Failed to add Pokémon",
          },
        );
      }
      onClose();
    } catch (error) {
      console.error("Failed to save pokemon:", error);
    }
  };

  return (
    <Dialog open={openDialog} onOpenChange={setOpenDialog}>
      <DialogContent className="max-w-3xl gap-0 p-0">
        <DialogHeader className="border-border border-b p-6">
          <DialogTitle>
            {isEditing ? "Edit Pokémon" : "Add Pokémon"}
          </DialogTitle>
          <DialogDescription>
            {isEditing
              ? "Update the details of your Pokémon"
              : "Add a new Pokémon to your team"}
          </DialogDescription>
        </DialogHeader>

        <PlayTeamFormContent
          generationId={play.game?.generation?.id}
          versionGroupId={play.game?.versionGroupId}
          gameId={play.game?.id}
          team={team}
          pokemon={pokemon}
          position={position}
          isPending={addPokemon.isPending || updatePokemon.isPending}
          onSubmit={handleSubmit}
          onCancel={onClose}
        />
      </DialogContent>
    </Dialog>
  );
};
