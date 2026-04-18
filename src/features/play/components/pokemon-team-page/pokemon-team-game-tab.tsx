"use client";

import { cn } from "@/lib/utils/cn";
import { Icon, type IconType } from "@/shared/components/icon";
import { TypeDisplay } from "@/shared/components/type-display";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { TYPE_COLOR_VARIANTS } from "@/shared/constants/color-variants";
import { CARD_HOVER_EFFECT } from "@/shared/constants/styles";
import { getPokemonSpriteUrl } from "@/shared/utils";
import Image from "next/image";
import type { PlayPokemon } from "../../types";
import {
  buildPokemonSlots,
  getPlayPokemonDisplayName,
  getPlayPokemonPositionLabel,
  getPlayPokemonTypeKeys,
} from "../../utils/pokemon-team-display";

type PokemonTeamGameTabProps = {
  pokemon: PlayPokemon[];
  slotCount?: number;
  selectedPokemonId: string | null;
  onSelect: (pokemonId: string) => void;
  onEdit?: (pokemon: PlayPokemon) => void;
  emptyMessage?: string;
};

const DAMAGE_CLASS_LABELS = {
  physical: "Physical",
  special: "Special",
  status: "Status",
} as const;

const STAT_LABELS: Record<string, string> = {
  hp: "HP",
  attack: "Atk",
  defense: "Def",
  "special-attack": "Sp. Atk",
  "special-defense": "Sp. Def",
  speed: "Spe",
};

const getPrimaryType = (pokemon: PlayPokemon | null) =>
  pokemon ? (getPlayPokemonTypeKeys(pokemon)[0] ?? "normal") : "normal";

const formatNatureEffect = (pokemon: PlayPokemon) => {
  if (!pokemon.nature?.increasedStat || !pokemon.nature?.decreasedStat) {
    return "Neutral nature";
  }

  return `+ ${STAT_LABELS[pokemon.nature.increasedStat] || pokemon.nature.increasedStat} / - ${STAT_LABELS[pokemon.nature.decreasedStat] || pokemon.nature.decreasedStat}`;
};

const getGenderDisplay = (gender: PlayPokemon["gender"]) => {
  if (gender === "male") {
    return { label: "Male", icon: "male" as const };
  }

  if (gender === "female") {
    return {
      label: "Female",
      icon: "female" as const,
    };
  }

  if (gender === "genderless") {
    return {
      label: "Genderless",
      icon: "user" as const,
    };
  }

  return {
    label: "-",
    icon: "user" as const,
  };
};

const InfoItem = ({
  icon,
  colors,
  label,
  value,
  subValue,
}: {
  icon: IconType;
  colors?: { bg?: string; text?: string; border?: string };
  label: string;
  value: string;
  subValue?: string | null;
}) => {
  return (
    <div className="border-border bg-muted/10 flex h-20 items-start gap-3 rounded-2xl border p-4">
      <div
        className={cn(
          "bg-muted/50 text-muted-foreground flex h-11 w-11 shrink-0 items-center justify-center rounded-full border",
          colors?.bg,
          colors?.text,
          colors?.border,
        )}
      >
        <Icon type={icon} size={18} />
      </div>

      <div className="min-w-0">
        <p className="text-muted-foreground text-xs tracking-[0.18em] uppercase">
          {label}
        </p>
        <div className="flex items-center gap-2">
          <p className="mt-1 text-sm font-semibold">{value}</p>
          {subValue ? (
            <p className="text-muted-foreground mt-1 text-xs">{subValue}</p>
          ) : null}
        </div>
      </div>
    </div>
  );
};

export const PokemonTeamGameTab = ({
  pokemon,
  slotCount = 6,
  selectedPokemonId,
  onSelect,
  onEdit,
}: PokemonTeamGameTabProps) => {
  const selectedPokemon =
    pokemon.find((member) => member.id === selectedPokemonId) ??
    pokemon[0] ??
    null;
  const slots = buildPokemonSlots(pokemon, slotCount);
  const primaryType = getPrimaryType(selectedPokemon);
  const primaryTypeColors = TYPE_COLOR_VARIANTS[primaryType];
  const spriteUrl =
    selectedPokemon &&
    (getPokemonSpriteUrl(
      selectedPokemon.isShiny,
      selectedPokemon.form?.pokemonDbSpriteSlug ||
        selectedPokemon.form?.slug ||
        "unknown",
    ) ||
      "");
  const genderDisplay = getGenderDisplay(selectedPokemon?.gender ?? null);

  return (
    <div className="grid gap-0 lg:grid-cols-[420px_minmax(0,1fr)]">
      <div className="border-border border-b lg:border-r lg:border-b-0">
        <div className="border-border flex items-center justify-between border-b px-4 py-3">
          <div>
            <p className="text-sm font-semibold">Your Party</p>
            <p className="text-muted-foreground text-xs">
              Select a Pokemon to view its details.
            </p>
          </div>
          <Badge variant="outline">{pokemon.length}</Badge>
        </div>

        <div className="flex flex-col gap-3 p-4">
          {slots.map((member, index) => {
            if (!member) {
              return (
                <div
                  key={`empty-slot-${index}`}
                  className="border-border bg-muted/10 flex min-h-[96px] items-center rounded-xl border border-dashed p-4 opacity-70"
                >
                  <p className="text-muted-foreground pl-4 text-xs">
                    Slot {index + 1}
                  </p>
                </div>
              );
            }

            const memberPrimaryType = getPrimaryType(member);
            const memberColors = TYPE_COLOR_VARIANTS[memberPrimaryType];
            const memberSpriteUrl =
              getPokemonSpriteUrl(
                member.isShiny,
                member.form?.pokemonDbSpriteSlug ||
                  member.form?.slug ||
                  "unknown",
              ) || "";
            const isSelected = selectedPokemon?.id === member.id;

            return (
              <button
                key={member.id}
                type="button"
                onClick={() => onSelect(member.id)}
                className={cn(
                  "border-border flex min-h-[96px] cursor-pointer items-center gap-3 rounded-xl border p-4 text-left shadow-sm transition-colors",
                  memberColors.bg,
                  memberColors.border,
                  CARD_HOVER_EFFECT,
                  isSelected && `${memberColors.borderSolid} shadow-lg`,
                )}
              >
                <div className="flex h-14 w-14 shrink-0 items-center justify-center">
                  {memberSpriteUrl ? (
                    <Image
                      src={memberSpriteUrl}
                      alt={getPlayPokemonDisplayName(member)}
                      width={64}
                      height={64}
                      className="h-14 w-14 object-contain"
                    />
                  ) : (
                    <span className="text-muted-foreground text-lg font-semibold">
                      ?
                    </span>
                  )}
                </div>

                <div className="min-w-0 flex-1">
                  <div className="flex items-center gap-2">
                    <p className="truncate text-sm font-semibold">
                      {getPlayPokemonDisplayName(member)}
                    </p>
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
                  </div>
                  <p className="text-muted-foreground mt-1 text-xs">
                    Lv. {member.level}
                  </p>
                </div>
              </button>
            );
          })}
        </div>
      </div>

      <div className="flex h-full flex-col p-5 md:p-6">
        {selectedPokemon ? (
          <div className="flex h-full flex-col gap-5">
            <div className="bg-muted/15 rounded-3xl p-5">
              <div className="flex flex-col gap-6 lg:flex-row lg:items-center lg:justify-between">
                <div className="flex items-center gap-5">
                  <div
                    className={cn(
                      "flex h-36 w-36 shrink-0 items-center justify-center rounded-full border",
                      primaryTypeColors.bg,
                      primaryTypeColors.border,
                    )}
                  >
                    {spriteUrl ? (
                      <Image
                        src={spriteUrl}
                        alt={getPlayPokemonDisplayName(selectedPokemon)}
                        width={192}
                        height={192}
                        className="h-32 w-32 object-contain"
                      />
                    ) : (
                      <span className="text-muted-foreground text-3xl font-semibold">
                        ?
                      </span>
                    )}
                  </div>

                  <div className="min-w-0">
                    <h3 className="text-3xl font-bold">
                      {getPlayPokemonDisplayName(selectedPokemon)}
                    </h3>
                    <div className="mt-4 flex flex-wrap gap-2">
                      {selectedPokemon.types.map((type) => (
                        <TypeDisplay key={type.id} type={type.name} size="lg" />
                      ))}
                    </div>
                  </div>
                </div>

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

            <div className="grid flex-1 gap-5 xl:grid-cols-[minmax(0,1.18fr)_minmax(340px,0.82fr)]">
              <div className="bg-card rounded-3xl p-5">
                <div className="mb-5">
                  <h4 className="font-semibold">Pokemon Info</h4>
                  <p className="text-muted-foreground mt-1 text-xs">
                    Identity, nature, and team details for this Pokemon.
                  </p>
                </div>

                <div className="grid gap-3 sm:grid-cols-2">
                  <InfoItem
                    icon="pokemon"
                    colors={primaryTypeColors}
                    label="Species"
                    value={selectedPokemon.species.name}
                  />
                  <InfoItem
                    icon="details"
                    colors={primaryTypeColors}
                    label="Form"
                    value={
                      selectedPokemon.form.name === selectedPokemon.species.name
                        ? "Default"
                        : selectedPokemon.form.name
                    }
                  />
                  <InfoItem
                    icon="user"
                    colors={primaryTypeColors}
                    label="Position"
                    value={getPlayPokemonPositionLabel(
                      selectedPokemon.position,
                    )}
                  />
                  <InfoItem
                    icon="user"
                    colors={primaryTypeColors}
                    label="Nickname"
                    value={selectedPokemon.nickname || "-"}
                  />
                  <InfoItem
                    icon={genderDisplay.icon}
                    colors={primaryTypeColors}
                    label="Gender"
                    value={genderDisplay.label}
                  />
                  <InfoItem
                    icon="level"
                    colors={primaryTypeColors}
                    label="Level"
                    value={`Lv. ${selectedPokemon.level}` || "-"}
                  />
                  <InfoItem
                    icon="ability"
                    colors={primaryTypeColors}
                    label="Ability"
                    value={selectedPokemon.ability?.name || "-"}
                  />
                  <InfoItem
                    icon="nature"
                    colors={primaryTypeColors}
                    label="Nature"
                    value={selectedPokemon.nature?.name || "-"}
                    subValue={formatNatureEffect(selectedPokemon)}
                  />
                </div>
              </div>

              <div className="bg-card rounded-3xl p-5">
                <div className="mb-5 flex items-center justify-between gap-3">
                  <div>
                    <h4 className="font-semibold">Moves</h4>
                    <p className="text-muted-foreground mt-1 text-xs">
                      Current moves, type, PP, and damage class.
                    </p>
                  </div>
                  <Badge variant="outline">
                    {selectedPokemon.moves.length}/4
                  </Badge>
                </div>

                <div className="grid gap-3">
                  {Array.from({ length: 4 }, (_, index) => {
                    const move = selectedPokemon.moves[index];
                    const moveTypeKey = move?.type
                      ? (move.type.name.toLowerCase() as keyof typeof TYPE_COLOR_VARIANTS)
                      : null;
                    const moveTypeColors = moveTypeKey
                      ? TYPE_COLOR_VARIANTS[moveTypeKey]
                      : {
                          bg: "bg-muted-foreground/3",
                          text: "text-muted-foreground",
                          border: "border-muted-foreground/25",
                        };

                    return (
                      <div
                        key={move?.id ?? `empty-move-${index}`}
                        className={cn(
                          "border-border bg-muted/10 flex h-20 items-center gap-4 rounded-2xl border p-4",
                          move?.type ? "" : "border-dashed opacity-70",
                        )}
                      >
                        <div
                          className={cn(
                            "flex h-10 w-10 shrink-0 items-center justify-center rounded-full border",
                            moveTypeColors.bg,
                            moveTypeColors.text,
                            moveTypeColors.border,
                          )}
                        >
                          {move?.type ? (
                            <TypeDisplay
                              type={move.type.name}
                              iconOnly
                              size="lg"
                            />
                          ) : (
                            <Icon type="move" size={18} />
                          )}
                        </div>

                        <div className="min-w-0 flex-1">
                          <p className="truncate text-sm font-semibold">
                            {move?.name || "Empty move slot"}
                          </p>

                          <p className="text-muted-foreground mt-1 text-xs">
                            {move?.damageClass
                              ? DAMAGE_CLASS_LABELS[move.damageClass]
                              : "-"}
                          </p>
                        </div>

                        <div className="flex items-end gap-2">
                          <p className="text-muted-foreground text-xs">
                            {move?.pp ? `PP ${move.pp}/${move.pp}` : ""}
                          </p>
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>
            </div>
          </div>
        ) : (
          <div className="bg-muted/15 flex min-h-[720px] items-center justify-center rounded-3xl text-center">
            <div className="max-w-sm space-y-2 px-6">
              <h3 className="text-lg font-semibold">
                No Pokemon available yet.
              </h3>
              <p className="text-muted-foreground text-sm">
                Add some Pokemon to your team to get started.
              </p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
