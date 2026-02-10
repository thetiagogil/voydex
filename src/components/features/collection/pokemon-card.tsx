import { Icon } from "@/components/shared/icon";
import { TypeBadge } from "@/components/shared/type-badge";
import { Card } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import Link from "next/link";

interface PokemonCardProps {
  pokemon: CollectionPokemon;
}

export const PokemonCard = ({ pokemon }: PokemonCardProps) => {
  const displayName = pokemon.nickname || pokemon.form.name;

  return (
    <Link
      href={`/dashboard/gen/${pokemon.game.generation.id}/game/${pokemon.game.slug}/play/${pokemon.playId}`}
    >
      <Card
        onClick={() => {}}
        className={cn(
          "h-full min-h-[240px] shadow-xl hover:shadow-2xl",
          "transition-all duration-300 hover:translate-y-[-4px]",
        )}
      >
        <div className="flex h-full flex-col">
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-1">
              {pokemon.isShiny && (
                <Icon
                  type="shiny"
                  className="animate-pulse text-yellow-300"
                  size={14}
                />
              )}
              {pokemon.gender &&
                (pokemon.gender === "male" ? (
                  <Icon type="male" className="text-blue-300" size={14} />
                ) : (
                  <Icon type="female" className="text-pink-300" size={14} />
                ))}
            </div>
            <span className="bg-muted/80 text-muted-foreground rounded px-2 py-1 text-[10px] font-semibold">
              Lv.{pokemon.level}
            </span>
          </div>

          <div className="flex min-h-0 flex-1 items-center justify-center">
            {pokemon.form.spriteUrl ? (
              <img
                src={pokemon.form.spriteUrl}
                alt={displayName}
                className={cn("h-20 w-20 object-contain")}
              />
            ) : (
              <div className="bg-muted flex h-20 w-20 items-center justify-center rounded-full">
                <span className="text-muted-foreground text-md font-bold">
                  ?
                </span>
              </div>
            )}
          </div>

          <div className="flex flex-col gap-1 text-center">
            <h3 className="text-foreground font-l truncate text-center text-lg">
              {displayName}
            </h3>

            <div className="flex justify-center gap-2">
              {pokemon.types.map((type) => (
                <TypeBadge key={type.id} type={type.name as PokemonType} />
              ))}
            </div>
          </div>
        </div>
      </Card>
    </Link>
  );
};
