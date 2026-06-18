type PageHeaderProps = {
  description?: string;
  title: string;
};

export function PageHeader({ description, title }: PageHeaderProps) {
  return (
    <div className="flex flex-col gap-2">
      <h1 className="text-foreground text-2xl font-semibold tracking-tight">
        {title}
      </h1>
      {description ? (
        <p className="text-muted-foreground max-w-3xl text-sm leading-6">
          {description}
        </p>
      ) : null}
    </div>
  );
}
