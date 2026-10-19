import { cn } from "@/shared/utils/cn";
import { Button as ButtonPrimitive } from "@base-ui/react/button";
import { cva, type VariantProps } from "class-variance-authority";

/*
 * Every button is Nunito. Actions are small stickers, like the Pokémon
 * cards: their colour inside a white band (`--band`, the same on every size), a
 * near-white keyline round it and a soft shadow that shrinks when pressed, so the button settles onto what it
 * sits on instead of moving. `default` is the page's main action in the one
 * action red; `secondary` is the quiet action; `destructive` is a quiet
 * action that removes something; `tint` sits on a tinted band (a sheet's
 * head, the Play header). `soft` and `ghost` stay flat: `soft` is a control
 * inside a field (show or hide a password), `ghost` sits in a row of choices and shows
 * `aria-pressed`. Words that go somewhere are a `TextLink`, not a button.
 * Every size has the same pill shape, so buttons, triggers and their
 * groups (`ButtonGroup`) read as one family. A disabled red or wine button
 * turns neutral grey, so a faded colour never reads as another colour.
 */
const buttonStyles = cva(
  "group/button inline-flex shrink-0 items-center justify-center rounded-full bg-clip-padding border-[1.5px] border-transparent font-sans whitespace-nowrap transition-[background-color,color,box-shadow] duration-120 ease-out select-none disabled:pointer-events-none disabled:opacity-50 aria-invalid:border-danger [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4 focus-ring",
  {
    variants: {
      variant: {
        default:
          "border-(length:--band) border-white bg-action font-extrabold text-white shadow-button hover:bg-action-deep active:bg-action-lip active:shadow-button-pressed aria-expanded:bg-action-deep disabled:bg-surface-2 disabled:text-ink-3 disabled:opacity-100",
        secondary:
          "border-(length:--band) border-white bg-surface-2 font-bold text-ink shadow-button hover:bg-hover active:bg-lip active:shadow-button-pressed aria-expanded:bg-hover aria-pressed:bg-select-soft aria-pressed:text-select-ink",
        destructive:
          "border-(length:--band) border-white bg-danger-soft font-extrabold text-danger-deep shadow-button hover:bg-danger-soft-2 active:shadow-button-pressed disabled:bg-surface-2 disabled:text-ink-3 disabled:opacity-100",
        tint: "border-(length:--band) border-white bg-white/70 font-extrabold text-ink shadow-button hover:bg-white active:shadow-button-pressed aria-expanded:bg-white",
        soft: "bg-surface-2 font-bold text-ink-2 hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink",
        ghost:
          "font-bold text-ink-2 hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink aria-pressed:bg-select-soft aria-pressed:text-select-ink",
      },
      size: {
        /*
         * One scale: 48px is the default, as tall as a field, so a button
         * lines up with what sits beside it in a form row or a toolbar; `sm`
         * (36px) sits inside cards and rows; `lg` (56px) is a page's one call
         * to action, such as Start a Play or Record on the next objective.
         */
        default:
          "h-12 gap-2 px-4.5 text-15 has-data-[icon=inline-end]:pr-4 has-data-[icon=inline-start]:pl-4",
        sm: "h-9 gap-1.5 px-3 text-14 has-data-[icon=inline-end]:pr-2.5 has-data-[icon=inline-start]:pl-2.5 [&_svg:not([class*='size-'])]:size-3.5",
        lg: "h-14 gap-2.5 px-6 text-16 has-data-[icon=inline-end]:pr-5 has-data-[icon=inline-start]:pl-5 [&_svg:not([class*='size-'])]:size-5",
        icon: "size-12",
        "icon-lg": "size-14 [&_svg:not([class*='size-'])]:size-5",
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
 * band always wins over the base border (a link styled as a button keeps the
 * same band as a real one).
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
