import { cn } from "@/lib/utils";

type PokemonDetailGenerationTriggerClassNameParams = {
  className?: string;
  isActive: boolean;
};

export const getPokemonDetailGenerationTriggerClassName = ({
  className,
  isActive,
}: PokemonDetailGenerationTriggerClassNameParams) => {
  return cn(
    "border-app-surface-border bg-card h-9 border px-0",
    isActive && "border-primary bg-primary/10 text-primary",
    className,
  );
};
