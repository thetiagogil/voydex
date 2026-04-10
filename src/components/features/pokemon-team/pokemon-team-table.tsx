"use client";

import { TypeDisplay } from "@/components/shared/type-display";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { cn } from "@/lib/utils/cn";
import { getPokemonSpriteUrl } from "@/shared/utils";
import type { PokemonType } from "@/types/common";
import type { PlayPokemon } from "@/types/play";
import { Pencil, Sparkles } from "lucide-react";
import Image from "next/image";

interface PokemonTeamTableProps {
  pokemon: PlayPokemon[];
  onEdit: (pokemon: PlayPokemon) => void;
  emptyMessage?: string;
}

export const PokemonTeamTable = ({
  pokemon,
  onEdit,
  emptyMessage = "No Pokémon found",
}: PokemonTeamTableProps) => {
  if (pokemon.length === 0) {
    return (
      <div className="flex flex-col items-center justify-center py-12 text-center">
        <p className="text-muted-foreground mb-4">{emptyMessage}</p>
      </div>
    );
  }

  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>Pokémon</TableHead>
          <TableHead>Pokémon</TableHead>
          <TableHead>Type</TableHead>
          <TableHead className="text-center">Level</TableHead>
          <TableHead className="text-center">Gender</TableHead>
          <TableHead>Ability</TableHead>
          <TableHead>Nature</TableHead>
          <TableHead className="text-center">Position</TableHead>
          <TableHead className="text-right">Actions</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {pokemon.map((p) => {
          const displayName = p.nickname || p.species?.name || "Unknown";
          const spriteUrl =
            getPokemonSpriteUrl(p.isShiny, p.form?.slug || "unknown") || "";
          const genderSymbol =
            p.gender === "male" ? "♂" : p.gender === "female" ? "♀" : "—";
          const genderColor =
            p.gender === "male"
              ? "text-blue-500"
              : p.gender === "female"
                ? "text-pink-400"
                : "text-muted-foreground";
          const isInTeam = p.position <= 6;

          return (
            <TableRow key={p.id}>
              <TableCell>
                <div className="relative h-12 w-12 shrink-0">
                  {p.isShiny && (
                    <Sparkles className="text-warning absolute -top-1 -right-1 z-10 h-3.5 w-3.5" />
                  )}
                  {spriteUrl ? (
                    <Image
                      src={spriteUrl}
                      alt={displayName}
                      width={48}
                      height={48}
                      className={cn(
                        "h-full w-full object-contain",
                        p.isShiny && "drop-shadow-[0_0_8px_hsl(45,100%,50%)]",
                      )}
                    />
                  ) : (
                    <div className="bg-muted flex h-full w-full items-center justify-center rounded-full">
                      <span className="text-muted-foreground text-lg">?</span>
                    </div>
                  )}
                </div>
              </TableCell>

              {/* Pokemon Name & Sprite */}
              <TableCell>
                <div>
                  <div className="flex items-center gap-2">
                    <span className="text-foreground font-semibold">
                      {displayName}
                    </span>
                    {p.nickname && (
                      <span className="text-muted-foreground text-xs">
                        ({p.species?.name})
                      </span>
                    )}
                  </div>
                </div>
              </TableCell>

              {/* Types */}
              <TableCell>
                <div className="flex gap-1">
                  {p.types.map((type) => (
                    <TypeDisplay
                      key={type.id}
                      type={type.name as PokemonType}
                      size="sm"
                    />
                  ))}
                </div>
              </TableCell>

              {/* Level */}
              <TableCell className="text-center">
                <Badge variant="outline">{p.level}</Badge>
              </TableCell>

              {/* Gender */}
              <TableCell className="text-center">
                <span className={cn("text-lg font-semibold", genderColor)}>
                  {genderSymbol}
                </span>
              </TableCell>

              {/* Ability */}
              <TableCell>
                <span className="text-muted-foreground text-sm">
                  {p.ability?.name || "—"}
                </span>
              </TableCell>

              {/* Nature */}
              <TableCell>
                <span className="text-muted-foreground text-sm">
                  {p.nature?.name || "—"}
                </span>
              </TableCell>

              {/* Position Badge */}
              <TableCell className="text-center">
                <Badge variant={isInTeam ? "default" : "secondary"}>
                  {isInTeam ? `Team #${p.position}` : `Box #${p.position - 6}`}
                </Badge>
              </TableCell>

              {/* Actions */}
              <TableCell className="text-right">
                <Button
                  variant="ghost"
                  size="icon"
                  onClick={() => onEdit(p)}
                  className="h-8 w-8"
                >
                  <Pencil className="h-4 w-4" />
                </Button>
              </TableCell>
            </TableRow>
          );
        })}
      </TableBody>
    </Table>
  );
};
