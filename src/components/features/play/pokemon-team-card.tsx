"use client";

import { TypeBadge } from "@/components/shared/type-badge";
import {
  HoverCard,
  HoverCardContent,
  HoverCardTrigger,
} from "@/components/ui/hover-card";
import { Separator } from "@/components/ui/separator";
import { cn } from "@/lib/utils/cn";
import { Heart, Shield, Sparkles, Zap } from "lucide-react";

interface PokemonTeamCardProps {
  pokemon: PlayPokemon;
  onEditClick: () => void;
}

export const PokemonTeamCard = ({
  pokemon,
  onEditClick,
}: PokemonTeamCardProps) => {
  const displayName = pokemon.nickname || pokemon.species?.name || "Unknown";
  const spriteUrl = pokemon.form?.sprite_url;

  const genderSymbol =
    pokemon.gender === "male"
      ? "♂"
      : pokemon.gender === "female"
        ? "♀"
        : null;
  const genderColor =
    pokemon.gender === "male"
      ? "text-blue-500"
      : pokemon.gender === "female"
        ? "text-pink-400"
        : "";

  const movesCount = pokemon.moves?.filter(Boolean).length || 0;

  return (
    <HoverCard openDelay={200} closeDelay={100}>
      <HoverCardTrigger asChild>
        <div
          className={cn(
            "relative flex aspect-[4/5] w-full cursor-pointer flex-col overflow-hidden rounded-xl border p-3",
            "hover:border-primary transition-all duration-200 hover:scale-[1.02] hover:shadow-lg",
          )}
          onClick={onEditClick}
        >
          {/* Background gradient based on primary type */}
          {pokemon.types?.[0] && (
            <div
              className="absolute inset-0 opacity-10"
              style={{
                background: `linear-gradient(135deg, var(--color-${pokemon.types[0].name?.toLowerCase()}) 0%, transparent 60%)`,
              }}
            />
          )}

          {/* Top bar - shiny + gender + level */}
          <div className="relative mb-1 flex items-center justify-between">
            <div className="flex items-center gap-1">
              {pokemon.is_shiny && (
                <Sparkles className="h-3 w-3 animate-pulse text-yellow-500" />
              )}
              {genderSymbol && (
                <span className={cn("text-xs font-bold", genderColor)}>
                  {genderSymbol}
                </span>
              )}
            </div>
            <span className="bg-muted/80 text-muted-foreground rounded px-1.5 py-0.5 text-[10px] font-semibold">
              Lv.{pokemon.level}
            </span>
          </div>

          {/* Pokémon sprite */}
          <div className="relative flex min-h-0 flex-1 items-center justify-center">
            {spriteUrl ? (
              <img
                src={spriteUrl}
                alt={displayName}
                className={cn(
                  "h-full max-h-[64px] w-full max-w-[64px] object-contain",
                  pokemon.is_shiny && "drop-shadow-[0_0_8px_hsl(45,100%,50%)]",
                )}
                style={{ imageRendering: "pixelated" }}
              />
            ) : (
              <div className="bg-muted flex h-12 w-12 items-center justify-center rounded-full">
                <span className="text-muted-foreground text-lg font-bold">
                  ?
                </span>
              </div>
            )}
          </div>

          {/* Name */}
          <h3 className="text-foreground relative mt-1 truncate text-center text-xs font-bold">
            {displayName}
          </h3>

          {/* Types row */}
          <div className="relative mt-1 flex justify-center gap-1">
            {pokemon.types.map((type) => (
              <TypeBadge
                key={type.id}
                type={type.name as PokemonType}
                size="sm"
              />
            ))}
          </div>
        </div>
      </HoverCardTrigger>

      <HoverCardContent className="w-72 p-0" align="center" side="top">
        <div className="p-4">
          {/* Header */}
          <div className="mb-3 flex items-start gap-3">
            <div
              className="flex h-14 w-14 shrink-0 items-center justify-center rounded-lg"
              style={{
                backgroundColor: pokemon.types?.[0]
                  ? `var(--color-${pokemon.types[0].name?.toLowerCase()})15`
                  : "hsl(var(--muted) / 0.5)",
              }}
            >
              {spriteUrl && (
                <img
                  src={spriteUrl}
                  alt={displayName}
                  className={cn(
                    "h-12 w-12 object-contain",
                    pokemon.is_shiny &&
                      "drop-shadow-[0_0_8px_hsl(45,100%,50%)]",
                  )}
                  style={{ imageRendering: "pixelated" }}
                />
              )}
            </div>
            <div className="min-w-0 flex-1">
              <div className="mb-1 flex items-center gap-2">
                <h4 className="text-foreground truncate font-bold">
                  {displayName}
                </h4>
                {pokemon.is_shiny && (
                  <Sparkles className="h-4 w-4 shrink-0 text-yellow-500" />
                )}
                {genderSymbol && (
                  <span className={cn("font-bold", genderColor)}>
                    {genderSymbol}
                  </span>
                )}
              </div>
              <p className="text-muted-foreground text-sm">
                Level {pokemon.level}
              </p>
              <div className="mt-1.5 flex gap-1">
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

          <Separator className="my-3" />

          {/* Details */}
          <div className="space-y-2">
            {pokemon.ability && (
              <div className="text-muted-foreground flex items-center gap-2 text-sm">
                <Shield className="text-primary/70 h-4 w-4 shrink-0" />
                <span className="truncate">{pokemon.ability.name}</span>
              </div>
            )}
            {pokemon.nature && (
              <div className="text-muted-foreground flex items-center gap-2 text-sm">
                <Heart className="text-accent/70 h-4 w-4 shrink-0" />
                <span className="truncate">{pokemon.nature.name}</span>
              </div>
            )}
            <div className="text-muted-foreground flex items-center gap-2 text-sm">
              <Zap className="text-warning/70 h-4 w-4 shrink-0" />
              <span>{movesCount}/4 moves</span>
            </div>
          </div>

          {/* Moves */}
          {pokemon.moves && pokemon.moves.length > 0 && (
            <>
              <Separator className="my-3" />
              <div className="space-y-1">
                <p className="text-muted-foreground text-xs font-medium uppercase">
                  Moves
                </p>
                <div className="grid grid-cols-2 gap-1.5">
                  {pokemon.moves.map((move) =>
                    move ? (
                      <div
                        key={move.id}
                        className="bg-muted/50 rounded px-2 py-1"
                      >
                        <span className="truncate text-xs">{move.name}</span>
                      </div>
                    ) : null,
                  )}
                </div>
              </div>
            </>
          )}
        </div>

        <div className="bg-muted/30 border-t px-4 py-2">
          <p className="text-muted-foreground text-center text-xs">
            Click to edit
          </p>
        </div>
      </HoverCardContent>
    </HoverCard>
  );
};
