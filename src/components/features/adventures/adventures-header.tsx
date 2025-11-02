interface AdventuresHeaderProps {
  title?: string;
  description?: string;
}

export function AdventuresHeader({
  title = "Choose Your Generation",
  description = "Select a Pokémon generation to start tracking your playthroughs and team progress.",
}: AdventuresHeaderProps) {
  return (
    <div className="space-y-2">
      <h1 className="text-3xl font-bold tracking-tight">{title}</h1>
      <p className="text-muted-foreground">{description}</p>
    </div>
  );
}
