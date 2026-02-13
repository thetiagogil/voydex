"use client";

import { Icon } from "@/components/shared/icon";
import { TypeDisplay } from "@/components/shared/type-display";
import { HoverCard, HoverCardTrigger } from "@/components/ui/hover-card";
import { TYPE_COLORS, type PokemonTypeKey } from "@/lib/constants/type-styles";
import { cn } from "@/lib/utils/cn";
import type { CollectionPokemon } from "@/types/collection";
import type { PlayPokemon } from "@/types/play";
import Image from "next/image";
import Link from "next/link";
import { PokemonCardHover } from "../play/pokemon-card-hover";

interface PokemonCardProps {
  pokemon: PlayPokemon | CollectionPokemon;
  href?: string; // For collection (renders as Link)
  onClick?: () => void; // For play (renders as clickable div/button)
  hasNatureAndAbility?: boolean;
  hasCardHover?: boolean;
}

export const PokemonCard = ({
  pokemon,
  href,
  onClick,
  hasNatureAndAbility,
  hasCardHover,
}: PokemonCardProps) => {
  const displayName = pokemon.nickname || pokemon.species?.name || "Unknown";
  const spriteUrl = pokemon.form?.spriteUrl;

  const primaryType = pokemon.types[0]?.name?.toLowerCase() as PokemonTypeKey;
  const typeColors = TYPE_COLORS[primaryType] || TYPE_COLORS.normal;

  const cardContent = (
    <>
      <div className="flex items-center justify-between p-1">
        <div className={cn("flex items-center gap-2", typeColors.text)}>
          <h3 className="text-lg leading-tight font-bold">{displayName}</h3>

          <div className="flex items-center gap-1">
            {pokemon.gender &&
              (pokemon.gender === "male" ? (
                <Icon type="male" size={14} />
              ) : (
                <Icon type="female" size={14} />
              ))}
            {pokemon.isShiny && (
              <Icon type="shiny" className="animate-pulse" size={14} />
            )}
          </div>
        </div>

        <div className="flex gap-1">
          {pokemon.types.map((type) => (
            <TypeDisplay key={type.id} type={type.name} iconOnly />
          ))}
        </div>
      </div>

      <div
        className={cn(
          "mx-1 mb-3 flex items-center justify-center",
          "min-h-[180px] rounded-lg bg-white/2",
        )}
      >
        {spriteUrl ? (
          <Image
            src={spriteUrl}
            alt={displayName}
            width={96}
            height={96}
            className="h-24 w-24 object-contain"
          />
        ) : (
          <div className="bg-muted/50 flex h-24 w-24 items-center justify-center rounded-full">
            <span className="text-muted-foreground text-3xl font-bold">?</span>
          </div>
        )}
      </div>
    </>
  );

  const cardClassName = cn(
    "relative min-h-[260px] overflow-hidden",
    "flex cursor-pointer flex-col gap-1 rounded-xl border p-4",
    "bg-card shadow-xl hover:shadow-2xl",
    "transition-all duration-300 hover:translate-y-[-4px]",
    typeColors.border,
  );

  if (href) {
    return (
      <Link href={href} className={cardClassName}>
        {cardContent}
      </Link>
    );
  }

  if (hasCardHover) {
    return (
      <HoverCard openDelay={200} closeDelay={100}>
        <HoverCardTrigger asChild>
          <div onClick={onClick} className={cardClassName}>
            {cardContent}
          </div>
        </HoverCardTrigger>
        <PokemonCardHover
          pokemon={pokemon as PlayPokemon}
          hasNatureAndAbility={hasNatureAndAbility}
        />
      </HoverCard>
    );
  }

  return (
    <div onClick={onClick} className={cardClassName}>
      {cardContent}
    </div>
  );
};
