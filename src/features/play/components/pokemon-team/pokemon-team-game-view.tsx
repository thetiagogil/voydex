"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { TypeDisplay } from "@/shared/components/type-display";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import { Separator } from "@/shared/components/ui/separator";
import { TYPE_COLOR_VARIANTS } from "@/shared/constants/color-variants";
import { CARD_HOVER_EFFECT } from "@/shared/constants/styles";
import { getPokemonSpriteUrl } from "@/shared/utils";
import { ArrowRight } from "lucide-react";
import Image from "next/image";
import type { PlayPokemon } from "../../types";
import {
  buildPokemonSlots,
  getPlayPokemonDisplayName,
  getPlayPokemonPositionLabel,
  getPlayPokemonTypeKeys,
} from "../../utils/pokemon-team-display";

type PokemonTeamGameViewProps = {
  pokemon: PlayPokemon[];
  slotCount?: number;
  slotOffset?: number;
  selectedPokemonId: string | null;
  onSelect: (pokemonId: string) => void;
  onEdit?: (pokemon: PlayPokemon) => void;
  emptyMessage?: string;
};

const getGenderLabel = (gender: PlayPokemon["gender"]) => {
  if (gender === "male") {
    return "Male";
  }

  if (gender === "female") {
    return "Female";
  }

  if (gender === "genderless") {
    return "Genderless";
  }

  return "Unknown";
};

const DAMAGE_CLASS_LABELS = {
  physical: "Physical",
  special: "Special",
  status: "Status",
} as const;

export const PokemonTeamGameView = ({
  pokemon,
  slotCount = 6,
  slotOffset = 0,
  selectedPokemonId,
  onSelect,
  onEdit,
  emptyMessage = "No Pokemon available yet.",
}: PokemonTeamGameViewProps) => {
  const selectedPokemon =
    pokemon.find((member) => member.id === selectedPokemonId) ?? pokemon[0] ?? null;
  const slots = buildPokemonSlots(pokemon, slotCount);
  const primaryType =
    selectedPokemon ? getPlayPokemonTypeKeys(selectedPokemon)[0] ?? "normal" : "normal";
  const primaryTypeColors = TYPE_COLOR_VARIANTS[primaryType];
  const spriteUrl =
    selectedPokemon
      ? getPokemonSpriteUrl(
          selectedPokemon.isShiny,
          selectedPokemon.form?.pokemonDbSpriteSlug ||
            selectedPokemon.form?.slug ||
            "unknown",
        ) || ""
      : "";

  return (
    <div className="grid min-h-[640px] items-stretch gap-0 lg:grid-cols-[340px_minmax(0,1fr)]">
      <div className="border-border border-b lg:border-r lg:border-b-0">
        <div className="border-border flex items-center justify-between border-b px-4 py-3">
          <div>
            <p className="text-sm font-semibold">Party slots</p>
            <p className="text-muted-foreground text-xs">
              Pick a slot to inspect that Pokemon.
            </p>
          </div>
          <Badge variant="outline">{pokemon.length}</Badge>
        </div>

        <ScrollArea className="h-full max-h-[640px]">
          <div className="flex flex-col gap-3 p-4">
            {slots.map((member, index) => {
              if (!member) {
                return (
                  <div
                    key={`empty-slot-${index}`}
                    className="border-border text-muted-foreground flex min-h-[92px] items-center gap-3 rounded-xl border border-dashed p-4 opacity-70"
                  >
                    <div className="bg-muted/40 flex h-12 w-12 shrink-0 items-center justify-center rounded-full">
                      <Icon type="circle" size={16} />
                    </div>
                    <div className="min-w-0 flex-1">
                      <p className="text-sm font-semibold">Empty slot</p>
                      <p className="mt-1 text-xs">Add a Pokemon to fill this slot.</p>
                    </div>
                    <Badge variant="outline">Slot {slotOffset + index + 1}</Badge>
                  </div>
                );
              }

              const displayName = getPlayPokemonDisplayName(member);
              const memberType =
                getPlayPokemonTypeKeys(member)[0] ?? ("normal" as const);
              const memberColors = TYPE_COLOR_VARIANTS[memberType];
              const memberSpriteUrl =
                getPokemonSpriteUrl(
                  member.isShiny,
                  member.form?.pokemonDbSpriteSlug || member.form?.slug || "unknown",
                ) || "";
              const isSelected = selectedPokemon?.id === member.id;

              return (
                <button
                  key={member.id}
                  type="button"
                  onClick={() => onSelect(member.id)}
                  className={cn(
                    "group border-border bg-card flex min-h-[92px] items-center gap-3 rounded-xl border p-4 text-left shadow-sm transition-colors",
                    CARD_HOVER_EFFECT,
                    isSelected && "border-primary bg-muted/30",
                  )}
                >
                  <div
                    className={cn(
                      "bg-muted/50 flex h-12 w-12 shrink-0 items-center justify-center rounded-full",
                      memberColors.bg,
                    )}
                  >
                    {memberSpriteUrl ? (
                      <Image
                        src={memberSpriteUrl}
                        alt={displayName}
                        width={56}
                        height={56}
                        className="h-12 w-12 object-contain"
                      />
                    ) : (
                      <span className="text-muted-foreground text-lg font-semibold">?</span>
                    )}
                  </div>

                  <div className="min-w-0 flex-1">
                    <div className="flex items-start justify-between gap-2">
                      <div className="min-w-0">
                        <p className="truncate text-sm font-semibold">{displayName}</p>
                        <p className="text-muted-foreground mt-1 truncate text-xs">
                          {getPlayPokemonPositionLabel(member.position)}
                        </p>
                      </div>
                      <Badge variant="outline">Lv. {member.level}</Badge>
                    </div>

                    <div className="mt-2 flex items-center justify-between gap-2">
                      <div className="flex flex-wrap gap-1">
                        {member.types.map((type) => (
                          <TypeDisplay
                            key={type.id}
                            type={type.name}
                            iconOnly
                            size="sm"
                          />
                        ))}
                      </div>

                      <ArrowRight
                        className={cn(
                          "text-muted-foreground h-4 w-4 transition-colors",
                          isSelected && primaryTypeColors.text,
                        )}
                      />
                    </div>
                  </div>
                </button>
              );
            })}
          </div>
        </ScrollArea>
      </div>

      <div className="flex h-full flex-col p-4 md:p-6">
        {selectedPokemon ? (
          <div className="flex h-full flex-col gap-4">
            <div className="bg-muted/20 rounded-2xl p-5">
              <div className="flex flex-col gap-6 md:flex-row md:items-start md:justify-between">
                <div className="flex items-start gap-4">
                  <div
                    className={cn(
                      "flex h-28 w-28 shrink-0 items-center justify-center rounded-2xl",
                      primaryTypeColors.bg,
                    )}
                  >
                    {spriteUrl ? (
                      <Image
                        src={spriteUrl}
                        alt={getPlayPokemonDisplayName(selectedPokemon)}
                        width={168}
                        height={168}
                        className="h-24 w-24 object-contain md:h-28 md:w-28"
                      />
                    ) : (
                      <span className="text-muted-foreground text-3xl font-semibold">?</span>
                    )}
                  </div>

                  <div className="min-w-0">
                    <div className="flex flex-wrap items-center gap-2">
                      <h3 className="text-xl font-bold md:text-2xl">
                        {getPlayPokemonDisplayName(selectedPokemon)}
                      </h3>
                      {selectedPokemon.isShiny ? (
                        <Badge variant="secondary">
                          <Icon type="shiny" size={12} />
                          Shiny
                        </Badge>
                      ) : null}
                      <Badge variant="outline">
                        {getPlayPokemonPositionLabel(selectedPokemon.position)}
                      </Badge>
                    </div>

                    <p className="text-muted-foreground mt-1 text-sm">
                      {selectedPokemon.nickname
                        ? `${selectedPokemon.species.name} / ${selectedPokemon.form.name}`
                        : selectedPokemon.form.name}
                    </p>

                    <div className="mt-3 flex flex-wrap gap-2">
                      {selectedPokemon.types.map((type) => (
                        <TypeDisplay key={type.id} type={type.name} size="lg" />
                      ))}
                    </div>
                  </div>
                </div>

                <div className="flex items-center gap-2">
                  <Badge variant="outline">Lv. {selectedPokemon.level}</Badge>
                  {onEdit ? (
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => onEdit(selectedPokemon)}
                    >
                      <Icon type="edit" />
                      Edit
                    </Button>
                  ) : null}
                </div>
              </div>
            </div>

            <div className="grid flex-1 gap-4 xl:grid-cols-[minmax(0,0.95fr)_minmax(0,1.05fr)]">
              <div className="grid content-start gap-4">
                <div className="grid gap-3 sm:grid-cols-2">
                  <div className="bg-card rounded-xl border p-4">
                    <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                      Species
                    </p>
                    <p className="mt-2 text-sm font-semibold">
                      {selectedPokemon.species.name}
                    </p>
                  </div>
                  <div className="bg-card rounded-xl border p-4">
                    <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                      Form
                    </p>
                    <p className="mt-2 text-sm font-semibold">
                      {selectedPokemon.form.name}
                    </p>
                  </div>
                  <div className="bg-card rounded-xl border p-4">
                    <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                      Ability
                    </p>
                    <p className="mt-2 text-sm font-semibold">
                      {selectedPokemon.ability?.name || "Not set"}
                    </p>
                  </div>
                  <div className="bg-card rounded-xl border p-4">
                    <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                      Nature
                    </p>
                    <p className="mt-2 text-sm font-semibold">
                      {selectedPokemon.nature?.name || "Not set"}
                    </p>
                  </div>
                  <div className="bg-card rounded-xl border p-4">
                    <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                      Gender
                    </p>
                    <p className="mt-2 text-sm font-semibold">
                      {getGenderLabel(selectedPokemon.gender)}
                    </p>
                  </div>
                  <div className="bg-card rounded-xl border p-4">
                    <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                      Nickname
                    </p>
                    <p className="mt-2 text-sm font-semibold">
                      {selectedPokemon.nickname || "No nickname"}
                    </p>
                  </div>
                </div>

                <div className="bg-card rounded-xl border p-4">
                  <div className="flex items-center gap-2">
                    <Icon type="details" />
                    <h4 className="font-semibold">Team details</h4>
                  </div>
                  <Separator className="my-3" />
                  <div className="grid gap-3 sm:grid-cols-2">
                    <div>
                      <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                        Position
                      </p>
                      <p className="mt-1 text-sm">
                        {getPlayPokemonPositionLabel(selectedPokemon.position)}
                      </p>
                    </div>
                    <div>
                      <p className="text-muted-foreground text-xs uppercase tracking-[0.18em]">
                        Role
                      </p>
                      <p className="mt-1 text-sm">
                        {selectedPokemon.position <= 6 ? "Active team" : "Box storage"}
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div className="grid content-start gap-4">
                <div className="bg-card rounded-xl border p-4">
                  <div className="flex items-center justify-between gap-2">
                    <div>
                      <h4 className="font-semibold">Moves</h4>
                      <p className="text-muted-foreground mt-1 text-xs">
                        Selected moves, move type, and battle class.
                      </p>
                    </div>
                    <Badge variant="outline">{selectedPokemon.moves.length}/4</Badge>
                  </div>

                  <div className="mt-4 grid gap-3">
                    {Array.from({ length: 4 }, (_, index) => {
                      const move = selectedPokemon.moves[index];

                      return (
                        <div
                          key={move?.id ?? `empty-move-${index}`}
                          className="bg-muted/20 rounded-xl p-4"
                        >
                          {move ? (
                            <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
                              <div className="min-w-0">
                                <p className="truncate text-sm font-semibold">
                                  {move.name}
                                </p>
                                <p className="text-muted-foreground mt-1 text-xs">
                                  Slot {index + 1}
                                </p>
                              </div>

                              <div className="flex flex-wrap gap-2">
                                {move.type ? (
                                  <TypeDisplay type={move.type.name} size="sm" />
                                ) : (
                                  <Badge variant="outline">Unknown type</Badge>
                                )}
                                <Badge variant="secondary">
                                  {move.damageClass
                                    ? DAMAGE_CLASS_LABELS[move.damageClass]
                                    : "Unknown class"}
                                </Badge>
                              </div>
                            </div>
                          ) : (
                            <div className="flex items-center justify-between gap-2">
                              <div>
                                <p className="text-sm font-semibold">Empty move slot</p>
                                <p className="text-muted-foreground mt-1 text-xs">
                                  Slot {index + 1}
                                </p>
                              </div>
                              <Badge variant="outline">Not set</Badge>
                            </div>
                          )}
                        </div>
                      );
                    })}
                  </div>
                </div>
              </div>
            </div>
          </div>
        ) : (
          <div className="bg-muted/15 flex h-full min-h-[560px] items-center justify-center rounded-2xl text-center">
            <div className="max-w-sm space-y-2 px-6">
              <h3 className="text-lg font-semibold">No Pokemon selected</h3>
              <p className="text-muted-foreground text-sm">{emptyMessage}</p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
