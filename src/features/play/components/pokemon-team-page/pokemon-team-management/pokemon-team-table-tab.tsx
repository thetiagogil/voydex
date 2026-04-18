"use client";

import type { PlayPokemon } from "@/features/play/types";
import {
  getPlayPokemonDisplayName,
  getPlayPokemonPositionLabel,
} from "@/features/play/utils/pokemon-team-display";
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
import { getPokemonSpriteUrl } from "@/shared/utils";
import { ArrowDown, ArrowUp, ArrowUpDown, Pencil } from "lucide-react";
import Image from "next/image";
import { useMemo, useState } from "react";

type PokemonTeamTableTabProps = {
  pokemon: PlayPokemon[];
  onEdit: (pokemon: PlayPokemon) => void;
  emptyMessage?: string;
};

type SortColumn =
  | "name"
  | "position"
  | "types"
  | "level"
  | "gender"
  | "ability"
  | "nature";

type SortDirection = "asc" | "desc";

const GENDER_ORDER: Record<string, number> = {
  male: 0,
  female: 1,
  genderless: 2,
  unknown: 3,
};

const SORTABLE_COLUMNS: Array<{ key: SortColumn; label: string }> = [
  { key: "name", label: "Pokemon" },
  { key: "position", label: "Position" },
  { key: "types", label: "Types" },
  { key: "level", label: "Level" },
  { key: "gender", label: "Gender" },
  { key: "ability", label: "Ability" },
  { key: "nature", label: "Nature" },
];

const compareStrings = (left: string, right: string) => {
  return left.localeCompare(right, undefined, { sensitivity: "base" });
};

const comparePokemon = (
  left: PlayPokemon,
  right: PlayPokemon,
  column: SortColumn,
) => {
  switch (column) {
    case "name":
      return compareStrings(
        getPlayPokemonDisplayName(left),
        getPlayPokemonDisplayName(right),
      );
    case "position":
      return left.position - right.position;
    case "types":
      return compareStrings(
        left.types.map((type) => type.name).join(", "),
        right.types.map((type) => type.name).join(", "),
      );
    case "level":
      return left.level - right.level;
    case "gender":
      return (
        (GENDER_ORDER[left.gender ?? "unknown"] ?? 99) -
        (GENDER_ORDER[right.gender ?? "unknown"] ?? 99)
      );
    case "ability":
      return compareStrings(
        left.ability?.name || "",
        right.ability?.name || "",
      );
    case "nature":
      return compareStrings(left.nature?.name || "", right.nature?.name || "");
    default:
      return 0;
  }
};

const SortHeader = ({
  column,
  label,
  activeColumn,
  direction,
  onSort,
  align = "left",
}: {
  column: SortColumn;
  label: string;
  activeColumn: SortColumn;
  direction: SortDirection;
  onSort: (column: SortColumn) => void;
  align?: "left" | "center";
}) => {
  const isActive = activeColumn === column;
  const icon = !isActive ? (
    <ArrowUpDown className="h-3.5 w-3.5" />
  ) : direction === "asc" ? (
    <ArrowUp className="h-3.5 w-3.5" />
  ) : (
    <ArrowDown className="h-3.5 w-3.5" />
  );

  return (
    <Button
      type="button"
      variant="ghost"
      size="sm"
      onClick={() => onSort(column)}
      className={cn(
        "text-foreground hover:text-foreground h-auto px-0 py-0 font-medium",
        align === "center" && "mx-auto",
      )}
    >
      <span>{label}</span>
      {icon}
    </Button>
  );
};

export const PokemonTeamTableTab = ({
  pokemon,
  onEdit,
  emptyMessage = "No Pokemon found",
}: PokemonTeamTableTabProps) => {
  const [sortColumn, setSortColumn] = useState<SortColumn>("position");
  const [sortDirection, setSortDirection] = useState<SortDirection>("asc");

  const sortedPokemon = useMemo(() => {
    return [...pokemon].sort((left, right) => {
      const result = comparePokemon(left, right, sortColumn);

      if (result === 0) {
        return left.position - right.position;
      }

      return sortDirection === "asc" ? result : result * -1;
    });
  }, [pokemon, sortColumn, sortDirection]);

  const handleSort = (column: SortColumn) => {
    if (sortColumn === column) {
      setSortDirection((direction) => (direction === "asc" ? "desc" : "asc"));
      return;
    }

    setSortColumn(column);
    setSortDirection("asc");
  };

  if (pokemon.length === 0) {
    return (
      <div className="flex min-h-[280px] items-center justify-center p-6 text-center">
        <p className="text-muted-foreground max-w-sm text-sm">{emptyMessage}</p>
      </div>
    );
  }

  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead className="w-[88px] text-center">Sprite</TableHead>
          {SORTABLE_COLUMNS.map((column) => (
            <TableHead
              key={column.key}
              className={cn(column.key !== "name" && "text-center")}
            >
              <SortHeader
                column={column.key}
                label={column.label}
                activeColumn={sortColumn}
                direction={sortDirection}
                onSort={handleSort}
                align={column.key !== "name" ? "center" : "left"}
              />
            </TableHead>
          ))}
          <TableHead className="text-center">Actions</TableHead>
        </TableRow>
      </TableHeader>

      <TableBody>
        {sortedPokemon.map((member) => {
          const displayName = getPlayPokemonDisplayName(member);
          const spriteUrl =
            getPokemonSpriteUrl(
              member.isShiny,
              member.form?.pokemonDbSpriteSlug ||
                member.form?.slug ||
                "unknown",
            ) || "";

          return (
            <TableRow key={member.id} className="hover:bg-transparent">
              <TableCell className="text-center">
                <div className="bg-muted/20 flex h-14 w-full items-center justify-center rounded-xl">
                  {spriteUrl ? (
                    <Image
                      src={spriteUrl}
                      alt={displayName}
                      width={56}
                      height={56}
                      className="h-12 w-12 object-contain"
                    />
                  ) : (
                    <span className="text-muted-foreground text-lg font-semibold">
                      ?
                    </span>
                  )}
                </div>
              </TableCell>

              <TableCell>
                <div className="min-w-[180px]">
                  <div className="flex items-center gap-2">
                    <span className="font-semibold">{displayName}</span>
                    {member.isShiny ? <Icon type="shiny" size={12} /> : null}
                  </div>
                  {member.nickname ? (
                    <p className="text-muted-foreground mt-1 text-xs">
                      {member.species.name}
                    </p>
                  ) : null}
                </div>
              </TableCell>

              <TableCell className="text-center">
                <Badge variant="outline">
                  {getPlayPokemonPositionLabel(member.position)}
                </Badge>
              </TableCell>

              <TableCell>
                <div className="flex min-w-[120px] flex-wrap justify-center gap-1">
                  {member.types.map((type) => (
                    <TypeDisplay key={type.id} type={type.name} size="sm" />
                  ))}
                </div>
              </TableCell>

              <TableCell className="text-center">
                <Badge variant="outline">Lv. {member.level}</Badge>
              </TableCell>

              <TableCell className="text-center">
                <div className="flex items-center justify-center gap-1">
                  {member.gender === "male" ? (
                    <>
                      <Icon type="male" size={14} className="text-male" />
                      <span className="text-xs font-medium">Male</span>
                    </>
                  ) : member.gender === "female" ? (
                    <>
                      <Icon type="female" size={14} className="text-female" />
                      <span className="text-xs font-medium">Female</span>
                    </>
                  ) : (
                    <span className="text-muted-foreground text-xs">
                      Unknown
                    </span>
                  )}
                </div>
              </TableCell>

              <TableCell className="text-center">
                <span className="text-muted-foreground text-sm">
                  {member.ability?.name || "Not set"}
                </span>
              </TableCell>

              <TableCell className="text-center">
                <span className="text-muted-foreground text-sm">
                  {member.nature?.name || "Not set"}
                </span>
              </TableCell>

              <TableCell className="text-center">
                <Button
                  variant="ghost"
                  size="icon-sm"
                  onClick={() => onEdit(member)}
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
