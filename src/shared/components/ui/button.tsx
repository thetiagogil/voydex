import { cn } from "@/shared/utils/cn";
import { Button as ButtonPrimitive } from "@base-ui/react/button";
import { cva, type VariantProps } from "class-variance-authority";

/*
 * Every button is Nunito and a pill, in two heights, and there are two
 * looks. `default` is the page's main action: solid action red on a soft
 * shadow, the one thing on a page that lifts. Every other button you press is
 * white with a thin outline, the same on the wall, on a band and inside a
 * card: `secondary` is the quiet action (pressed, as a switch such as the
 * favourite heart, it fills with the blue like every pick) and `destructive`
 * the same button for an action that removes something, its words in wine.
 * `quiet` is that button stepped back, for a small tool beside a section's
 * title or at a list's foot (mark all, collapse, see details, Archived): the
 * outline alone with softer words and no white fill, so it never draws the
 * eye from what the section holds.
 * `inverse` is the main action on the action colour itself (the front page's
 * red), white with the action's ink. `ghost` is bare words or a bare icon,
 * and only inside something that already has its own outline: a field (show
 * or hide a password, clear a search), a calendar's days, a menu's row, a
 * breadcrumb's picker, the more-actions dots in a card's corner. It shows
 * `aria-pressed`. A button that stands on its own on a page is never
 * `ghost`. Words that go somewhere are a
 * `TextLink`, not a button. A switched-off button keeps its own colour, paler
 * and without its shadow, whether it is `disabled` or only `aria-disabled`
 * (one that keeps focus).
 */
const buttonStyles = cva(
  "group/button relative inline-flex shrink-0 items-center justify-center rounded-full bg-clip-padding border-[1.5px] border-transparent font-sans whitespace-nowrap transition-[background-color,color,box-shadow] duration-120 ease-out select-none disabled:pointer-events-none disabled:opacity-50 aria-disabled:pointer-events-none aria-disabled:opacity-50 aria-invalid:border-danger [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4 focus-ring",
  {
    variants: {
      variant: {
        default:
          "bg-action bg-clip-border font-extrabold text-white shadow-button hover:bg-action-deep active:bg-action-lip active:shadow-button-pressed aria-expanded:bg-action-deep disabled:shadow-none aria-disabled:shadow-none",
        secondary:
          "border-lip bg-surface font-bold text-ink hover:bg-hover aria-expanded:bg-hover aria-pressed:border-transparent aria-pressed:bg-calm aria-pressed:text-white aria-pressed:hover:bg-calm-ink",
        destructive:
          "border-lip bg-surface font-bold text-danger-deep hover:bg-danger-soft aria-expanded:bg-danger-soft",
        quiet: "border-lip text-ink-2 hover:bg-hover hover:text-ink font-bold",
        inverse:
          "bg-surface bg-clip-border font-extrabold text-action-ink shadow-button hover:bg-action-soft active:shadow-button-pressed",
        ghost:
          "font-bold text-ink-2 hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink aria-pressed:bg-select-soft aria-pressed:text-select-ink",
      },
      size: {
        /*
         * One height for a button on a page, in a card, a row, a sheet or a
         * dialog: 36px, the same as a tab, a pill and a chip, so everything
         * in a row is level and no button outweighs what it sits beside. A
         * page's one call to action is told by its red, not by its size.
         * `lg` (48px) is only for a button that sits with fields, which are
         * 48px: a sign-in screen's button, a button in a field's row. The
         * front page's Start is `lg` too, alone on its page.
         */
        default:
          "h-9 gap-1.5 px-3 text-13 has-data-[icon=inline-end]:pr-2.5 has-data-[icon=inline-start]:pl-2.5 [&_svg:not([class*='size-'])]:size-3.5",
        lg: "h-12 gap-2 px-4.5 text-15 has-data-[icon=inline-end]:pr-4 has-data-[icon=inline-start]:pl-4",
        icon: "size-9",
        "icon-xs": "size-7 [&_svg:not([class*='size-'])]:size-3.5",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  },
);

/*
 * The classes for anything that looks like a button, merged so a variant's
 * border always wins over the base one (a link styled as a button looks
 * like a real one).
 */
const buttonVariants = (options?: Parameters<typeof buttonStyles>[0]) =>
  cn(buttonStyles(options));

const Button = ({
  className,
  variant = "default",
  size = "default",
  ...props
}: ButtonPrimitive.Props & VariantProps<typeof buttonStyles>) => {
  return (
    <ButtonPrimitive
      data-slot="button"
      className={cn(buttonVariants({ variant, size, className }))}
      {...props}
    />
  );
};

export { Button, buttonVariants };
