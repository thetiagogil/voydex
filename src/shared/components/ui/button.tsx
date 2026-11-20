import { cn } from "@/shared/utils/cn";
import { Button as ButtonPrimitive } from "@base-ui/react/button";
import { cva, type VariantProps } from "class-variance-authority";

/*
 * Every button is Nunito and a pill, in two heights, and there are two
 * looks. `default` is the page's main action: solid action red on a soft
 * shadow, the one thing on a page that lifts; under a pointer or keyboard
 * focus it shows the games' menu arrow at its start, in the room its
 * padding already leaves, so nothing moves. Every other button you press is
 * white with a thin outline, the same on the wall, on a band and inside a
 * card: `secondary` is the quiet action and `tint` the same on a tinted
 * band. `destructive` is a quiet action that removes something; `inverse`
 * is the main action on the action colour itself (the front page's red),
 * white with the action's ink; `soft` is a control inside a field (show or
 * hide a password); `ghost` is bare words in a row of choices and shows
 * `aria-pressed`. Words that go somewhere are a `TextLink`, not a button.
 * A switched-off button keeps its own colour, paler and without its shadow.
 */
const buttonStyles = cva(
  "group/button relative inline-flex shrink-0 items-center justify-center rounded-full bg-clip-padding border-[1.5px] border-transparent font-sans whitespace-nowrap transition-[background-color,color,box-shadow] duration-120 ease-out select-none disabled:pointer-events-none disabled:opacity-50 aria-invalid:border-danger [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4 focus-ring",
  {
    variants: {
      variant: {
        default:
          "bg-action bg-clip-border font-extrabold text-white shadow-button hover:bg-action-deep active:bg-action-lip active:shadow-button-pressed aria-expanded:bg-action-deep disabled:shadow-none",
        secondary:
          "before:hidden border-lip bg-surface font-bold text-ink hover:bg-hover aria-expanded:bg-hover aria-pressed:border-transparent aria-pressed:bg-select-soft aria-pressed:text-select-ink",
        destructive:
          "before:hidden bg-danger-soft font-extrabold text-danger-deep hover:bg-danger-soft-2",
        inverse:
          "bg-surface bg-clip-border font-extrabold text-action-ink shadow-button hover:bg-action-soft active:shadow-button-pressed",
        tint: "before:hidden border-lip bg-surface font-bold text-ink hover:bg-hover aria-expanded:bg-hover",
        soft: "before:hidden bg-surface-2 font-bold text-ink-2 hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink",
        ghost:
          "before:hidden font-bold text-ink-2 hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink aria-pressed:bg-select-soft aria-pressed:text-select-ink",
      },
      size: {
        /*
         * One scale: 48px is the default, as tall as a field, so a button
         * lines up with what sits beside it in a form row or a toolbar; `sm`
         * (36px) sits inside cards and rows. Two heights only, so buttons in
         * a row are always level; a page's one call to action is the red one.
         */
        default:
          "h-12 gap-2 px-4.5 text-15 has-data-[icon=inline-end]:pr-4 has-data-[icon=inline-start]:pl-4 before:left-1.5 before:border-y-5 before:border-l-7 before:pointer-events-none before:absolute before:border-y-transparent before:border-l-current before:opacity-0 before:transition-opacity before:duration-120 hover:before:opacity-100 focus-visible:before:opacity-100 has-data-[icon=inline-start]:before:hidden",
        sm: "h-9 gap-1.5 px-3 text-13 has-data-[icon=inline-end]:pr-2.5 has-data-[icon=inline-start]:pl-2.5 [&_svg:not([class*='size-'])]:size-3.5 before:left-1 before:border-y-4 before:border-l-5 before:pointer-events-none before:absolute before:border-y-transparent before:border-l-current before:opacity-0 before:transition-opacity before:duration-120 hover:before:opacity-100 focus-visible:before:opacity-100 has-data-[icon=inline-start]:before:hidden",
        icon: "size-12",
        "icon-sm": "size-9",
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
