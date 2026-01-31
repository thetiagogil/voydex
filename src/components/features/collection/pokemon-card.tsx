import { Icon } from "@/components/shared/icon";
import { TypeBadge } from "@/components/shared/type-badge";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import Image from "next/image";
import Link from "next/link";

interface CollectionPokemon {
  id: string;
  playId: string;
  nickname: string | null;
  level: number;
  isShiny: boolean;
  play: {
    id: string;
    name: string;
    status: string;
  };
  game: {
    id: number;
    slug: string;
    name: string;
    generation: {
      id: number;
      slug: string;
      name: string;
    };
  };
  species: {
    id: number;
    slug: string;
    name: string;
    nationalNumber: number;
    isLegendary: boolean;
    isMythical: boolean;
  };
  form: {
    id: number;
    slug: string;
    name: string;
    spriteUrl: string | null;
  };
  types: Array<{
    id: number;
    slug: string;
    name: string;
  }>;
}

interface PokemonCardProps {
  pokemon: CollectionPokemon;
}

export const PokemonCard = ({ pokemon }: PokemonCardProps) => {
  const displayName = pokemon.nickname || pokemon.form.name;

  return (
    <Link
      href={`/adventures/gen/${pokemon.game.generation.id}/game/${pokemon.game.slug}/play/${pokemon.playId}`}
    >
      <Card className="group hover:border-primary/50 relative flex h-full cursor-pointer overflow-hidden transition-all duration-300 hover:translate-y-[-2px] hover:shadow-lg">
        <CardContent className="flex w-full flex-col items-center p-3 text-center">
          {/* Level Badge - Top Right */}
          <Badge className="absolute top-3 right-3">Lv. {pokemon.level}</Badge>

          {/* Shiny Indicator - Top Left */}
          {pokemon.isShiny && (
            <div className="absolute top-3 left-3 flex items-center justify-center">
              <Icon name="shiny" className="text-primary" size={12} />
            </div>
          )}

          {/* Sprite */}
          <div className="relative mb-3 flex h-20 w-20 items-center justify-center">
            {pokemon.form.spriteUrl ? (
              <Image
                src={pokemon.form.spriteUrl}
                alt={displayName}
                height={80}
                width={80}
                className="pixelated object-contain"
                style={{ imageRendering: "pixelated" }}
              />
            ) : (
              <div className="bg-muted flex h-20 w-20 items-center justify-center rounded-lg">
                <span className="text-3xl">?</span>
              </div>
            )}
          </div>

          {/* Dex Number */}
          <p className="text-muted-foreground mb-1 text-xs">
            #{pokemon.species.nationalNumber.toString().padStart(4, "0")}
          </p>

          {/* Name */}
          <h3 className="text-foreground mb-2 w-full truncate text-sm leading-tight font-semibold">
            {displayName}
          </h3>

          {/* Types */}
          {pokemon.types.length > 0 && (
            <div className="mb-2 flex flex-wrap justify-center gap-1">
              {pokemon.types.map((type) => (
                <TypeBadge
                  key={type.id}
                  type={type.name as PokemonType}
                  variant="outline-primary"
                />
              ))}
            </div>
          )}

          {/* Play info */}
          <div className="border-border mt-auto w-full border-t pt-2">
            <p className="text-muted-foreground w-full truncate text-xs">
              {pokemon.play.name}
            </p>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
};
