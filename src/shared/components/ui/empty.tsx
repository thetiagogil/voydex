import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/shared/utils/cn";

/*
 * An empty area inside a card or section: a Fredoka title, one sentence in
 * ink-2, at most two actions. For a whole page or section that is empty, use
 * `EmptyState`, which brings its own card and one Pokémon on grass.
 */
const Empty = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="empty"
      className={cn(
        "flex w-full min-w-0 flex-1 flex-col items-center justify-center gap-4 rounded-2xl px-6 py-10 text-center text-balance",
        className,
      )}
      {...props}
    />
  );
};

const EmptyHeader = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="empty-header"
      className={cn("flex max-w-md flex-col items-center gap-1.5", className)}
      {...props}
    />
  );
};

const emptyMediaVariants = cva(
  "mb-2 flex shrink-0 items-center justify-center [&_svg]:pointer-events-none [&_svg]:shrink-0",
  {
    variants: {
      variant: {
        default: "bg-transparent",
        icon: "bg-surface-2 text-ink-3 flex size-12 shrink-0 items-center justify-center rounded-full [&_svg:not([class*='size-'])]:size-5",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

const EmptyMedia = ({
  className,
  variant = "default",
  ...props
}: React.ComponentProps<"div"> & VariantProps<typeof emptyMediaVariants>) => {
  return (
    <div
      data-slot="empty-icon"
      data-variant={variant}
      className={cn(emptyMediaVariants({ variant, className }))}
      {...props}
    />
  );
};

const EmptyTitle = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="empty-title"
      className={cn(
        "font-display text-20 text-ink leading-tight font-semibold tracking-[-0.01em]",
        className,
      )}
      {...props}
    />
  );
};

const EmptyDescription = ({
  className,
  ...props
}: React.ComponentProps<"p">) => {
  return (
    <div
      data-slot="empty-description"
      className={cn(
        "text-15 text-ink-2 [&>a]:text-link leading-relaxed font-semibold [&>a]:font-extrabold [&>a]:underline [&>a]:underline-offset-4",
        className,
      )}
      {...props}
    />
  );
};

const EmptyContent = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="empty-content"
      className={cn(
        "text-14 mt-1 flex w-full max-w-sm min-w-0 flex-col items-center gap-2.5 text-balance",
        className,
      )}
      {...props}
    />
  );
};

export {
  Empty,
  EmptyHeader,
  EmptyTitle,
  EmptyDescription,
  EmptyContent,
  EmptyMedia,
};
