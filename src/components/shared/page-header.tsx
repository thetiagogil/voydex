interface AdventuresHeaderProps {
  title?: string;
  description?: string;
}

export function PageHeader({ title, description }: AdventuresHeaderProps) {
  return (
    <div className="space-y-2">
      <h1 className="text-3xl font-bold tracking-tight">{title}</h1>
      <p className="text-muted-foreground">{description}</p>
    </div>
  );
}
