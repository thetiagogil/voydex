"use client";

import { TypeBadge } from "@/components/shared/type-badge";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { cn } from "@/lib/utils/cn";
import { Pencil, Sparkles } from "lucide-react";

interface PokemonTeamTableRowProps {
  pokemon: PlayPokemon;
  onEdit: () => void;
}

export const PokemonTeamTableRow = ({
  pokemon,
  onEdit,
}: PokemonTeamTableRowProps) => {
  const displayName = pokemon.nickname || pokemon.species?.name || "Unknown";
  const spriteUrl = pokemon.form?.sprite_url;

  const genderSymbol =
    pokemon.gender === "male" ? "♂" : pokemon.gender === "female" ? "♀" : "—";
  const genderColor =
    pokemon.gender === "male"
      ? "text-blue-500"
      : pokemon.gender === "female"
        ? "text-pink-400"
        : "text-muted-foreground";

  const moves = pokemon.moves.filter(Boolean);
  const isInTeam = pokemon.position <= 6;

  return (
    <div
      className="hover:bg-muted/50 group grid cursor-pointer grid-cols-[1fr_auto_auto_auto_auto_auto_auto] items-center gap-4 border-b px-4 py-3"
      onClick={onEdit}
    >
      {/* Sprite + Name */}
      <div className="flex items-center gap-3">
        <div className="relative h-12 w-12 shrink-0">
          {pokemon.is_shiny && (
            <Sparkles className="text-warning absolute -top-1 -right-1 z-10 h-3.5 w-3.5" />
          )}
          {spriteUrl ? (
            <img
              src={spriteUrl}
              alt={displayName}
              className={cn(
                "h-full w-full object-contain",
                pokemon.is_shiny && "drop-shadow-[0_0_8px_hsl(45,100%,50%)]",
              )}
              style={{ imageRendering: "pixelated" }}
            />
          ) : (
            <div className="bg-muted flex h-full w-full items-center justify-center rounded-full">
              <span className="text-muted-foreground text-lg">?</span>
            </div>
          )}
        </div>
        <div>
          <div className="flex items-center gap-2">
            <span className="text-foreground font-semibold">{displayName}</span>
            {pokemon.nickname && (
              <span className="text-muted-foreground text-xs">
                ({pokemon.species?.name})
              </span>
            )}
          </div>
          <div className="flex gap-1">
            {pokemon.types.map((type) => (
              <TypeBadge
                key={type.id}
                type={type.name as PokemonType}
                size="sm"
              />
            ))}
          </div>
        </div>
      </div>

      {/* Level */}
      <Badge variant="secondary" className="font-mono">
        Lv. {pokemon.level}
      </Badge>

      {/* Gender */}
      <span className={cn("text-lg font-bold", genderColor)}>
        {genderSymbol}
      </span>

      {/* Nature */}
      <span className="text-sm">{pokemon.nature?.name || "—"}</span>

      {/* Ability */}
      <span className="text-sm">{pokemon.ability?.name || "—"}</span>

      {/* Status */}
      <Badge
        variant={isInTeam ? "default" : "outline"}
        className={
          isInTeam ? "border-primary/30 bg-primary/10 text-primary" : ""
        }
      >
        {isInTeam ? "Team" : "Box"}
      </Badge>

      {/* Actions */}
      <Button
        size="sm"
        variant="ghost"
        className="opacity-0 transition-opacity group-hover:opacity-100"
        onClick={(e) => {
          e.stopPropagation();
          onEdit();
        }}
      >
        <Pencil className="h-4 w-4" />
      </Button>
    </div>
  );
};

interface PokemonTeamTableProps {
  pokemon: PlayPokemon[];
  onEdit: (pokemon: PlayPokemon) => void;
  emptyMessage?: string;
}

export const PokemonTeamTable = ({
  pokemon,
  onEdit,
  emptyMessage = "No Pokémon yet.",
}: PokemonTeamTableProps) => {
  if (pokemon.length === 0) {
    return (
      <div className="py-16 text-center">
        <p className="text-muted-foreground">{emptyMessage}</p>
      </div>
    );
  }

  return (
    <div className="overflow-x-auto">
      {/* Header */}
      <div className="text-muted-foreground bg-muted/30 grid grid-cols-[1fr_auto_auto_auto_auto_auto_auto] items-center gap-4 border-b px-4 py-2 text-sm font-medium">
        <span>Pokémon</span>
        <span className="w-16">Level</span>
        <span className="w-10">Gender</span>
        <span className="w-20">Nature</span>
        <span className="w-20">Ability</span>
        <span className="w-16">Status</span>
        <span className="w-10"></span>
      </div>
      {/* Rows */}
      {pokemon.map((p) => (
        <PokemonTeamTableRow key={p.id} pokemon={p} onEdit={() => onEdit(p)} />
      ))}
    </div>
  );
};
