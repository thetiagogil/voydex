type PageHeaderProps = {
  description?: string;
  title: string;
};

export function PageHeader({ description, title }: PageHeaderProps) {
  return (
    <div>
      <h1 className="text-foreground text-2xl font-semibold tracking-tight">
        {title}
      </h1>
      {description ? (
        <p className="text-muted-foreground mt-2 max-w-3xl text-sm leading-6">
          {description}
        </p>
      ) : null}
    </div>
  );
}
