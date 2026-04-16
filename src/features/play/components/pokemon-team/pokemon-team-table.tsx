"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { TypeDisplay } from "@/shared/components/type-display";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import type { PokemonType } from "@/shared/constants/reference";
import { getPokemonSpriteUrl } from "@/shared/utils";
import { Pencil } from "lucide-react";
import Image from "next/image";
import type { PlayPokemon } from "../../types";

type PokemonTeamTableProps = {
  pokemon: PlayPokemon[];
  onEdit: (pokemon: PlayPokemon) => void;
  emptyMessage?: string;
};

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
          <TableHead className="w-20"></TableHead>
          <TableHead className="w-20">Pokémon</TableHead>
          <TableHead className="text-center">Position</TableHead>
          <TableHead>Type</TableHead>
          <TableHead className="text-center">Level</TableHead>
          <TableHead className="text-center">Gender</TableHead>
          <TableHead>Ability</TableHead>
          <TableHead>Nature</TableHead>
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
              <TableCell className="flex items-center justify-center">
                {spriteUrl ? (
                  <Image
                    src={spriteUrl}
                    alt={displayName}
                    width={40}
                    height={40}
                    className={cn("object-contain")}
                  />
                ) : (
                  <span className="text-muted-foreground text-lg">?</span>
                )}
              </TableCell>

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

                    {p.isShiny && <Icon type="shiny" size={12} />}
                  </div>
                </div>
              </TableCell>

              <TableCell className="text-center">
                <Badge variant={isInTeam ? "default" : "secondary"}>
                  {isInTeam ? `Team #${p.position}` : `Box #${p.position - 6}`}
                </Badge>
              </TableCell>

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

              <TableCell className="text-center">
                <Badge variant="outline">{p.level}</Badge>
              </TableCell>

              <TableCell className="text-center">
                <span className={cn("text-lg font-semibold", genderColor)}>
                  {genderSymbol}
                </span>
              </TableCell>

              <TableCell>
                <span className="text-muted-foreground text-sm">
                  {p.ability?.name || "—"}
                </span>
              </TableCell>

              <TableCell>
                <span className="text-muted-foreground text-sm">
                  {p.nature?.name || "—"}
                </span>
              </TableCell>

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
