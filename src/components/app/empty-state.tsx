type EmptyStateProps = {
  description: string;
  title: string;
};

export function EmptyState({ description, title }: EmptyStateProps) {
  return (
    <div className="bg-card rounded-lg border border-dashed px-6 py-10">
      <h2 className="text-foreground text-base font-semibold">{title}</h2>
      <p className="text-muted-foreground mt-2 max-w-2xl text-sm leading-6">
        {description}
      </p>
    </div>
  );
}
