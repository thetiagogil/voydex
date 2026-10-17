import { mergeProps } from "@base-ui/react/merge-props";
import { useRender } from "@base-ui/react/use-render";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/shared/utils/cn";

/*
 * A small label: a pill, never a filled banner. `neutral` and `outline` are
 * plain labels (an ability, a tag); the meaning tones (`ok`, `warn`, `calm`,
 * `danger`, `gold`) are soft fills with deep ink; `tint` takes a type's pale
 * tint from `--t`; `game` takes the context colour's soft tint; `paper` is
 * white, for a label sitting on a tinted picture or band.
 */
const badgeVariants = cva(
  "group/badge inline-flex w-fit shrink-0 items-center justify-center gap-1 overflow-hidden rounded-full border border-transparent font-bold whitespace-nowrap transition-colors focus-visible:outline-3 focus-visible:outline-focus aria-invalid:border-danger [&>svg]:pointer-events-none",
  {
    variants: {
      variant: {
        neutral: "bg-surface-2 text-ink-2",
        outline: "border-line bg-surface text-ink-2",
        ok: "bg-ok-soft text-ok-deep",
        warn: "bg-warn-soft text-warn-ink",
        calm: "bg-calm-soft text-calm-ink",
        danger: "bg-danger-soft text-danger-deep",
        gold: "bg-gold text-ink",
        tint: "type-tint text-ink-tint",
        game: "bg-select-soft text-select-ink",
        // A label on a tinted picture or band (a sticker's level, the Shiny mark).
        paper: "bg-white text-ink-2",
      },
      size: {
        xs: "h-5 px-2 text-12 [&>svg]:size-3",
        sm: "h-6 px-2.5 text-12 has-data-[icon=inline-end]:pr-1.5 has-data-[icon=inline-start]:pl-1.5 [&>svg]:size-3",
        // v3 `.pstate`: 13px extrabold with a 14px mark; wraps when it must.
        md: "min-h-7 gap-1.5 px-2.75 py-1 text-13 font-extrabold [&>svg]:size-3.5",
      },
    },
    defaultVariants: {
      variant: "neutral",
      size: "sm",
    },
  },
);

const Badge = ({
  className,
  variant = "neutral",
  size = "sm",
  render,
  ...props
}: useRender.ComponentProps<"span"> & VariantProps<typeof badgeVariants>) => {
  return useRender({
    defaultTagName: "span",
    props: mergeProps<"span">(
      {
        className: cn(badgeVariants({ variant, size }), className),
      },
      props,
    ),
    render,
    state: {
      slot: "badge",
      variant,
    },
  });
};

export { Badge, badgeVariants };
