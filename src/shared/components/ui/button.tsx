import { cn } from "@/shared/utils/cn";
import { Button as ButtonPrimitive } from "@base-ui/react/button";
import { cva, type VariantProps } from "class-variance-authority";

/*
 * Every button is Nunito. Actions are small stickers, like the Pokémon
 * cards: their colour inside a white band (3px, 2px on small buttons), a
 * near-white keyline round it and a soft shadow that shrinks when pressed, so the button settles onto what it
 * sits on instead of moving. `default` is the page's main action in the one
 * action blue; `secondary` is the quiet action; `destructive` is a quiet
 * action that removes something; `tint` sits on a tinted band (a sheet's
 * head, the Play header). `soft` and `ghost` stay flat: `soft` is a minor
 * action such as close, `ghost` sits in a row of choices and shows
 * `aria-pressed`. Words that go somewhere are a `TextLink`, not a button.
 * Icon sizes are round.
 */
const buttonVariants = cva(
  "group/button inline-flex shrink-0 items-center justify-center rounded-lg border-[1.5px] border-transparent font-sans whitespace-nowrap transition-[background-color,color,box-shadow] duration-120 ease-out outline-none select-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-focus focus-visible:outline-solid disabled:pointer-events-none disabled:opacity-50 aria-invalid:border-danger [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4",
  {
    variants: {
      variant: {
        default:
          "border-3 border-white bg-action font-extrabold text-white shadow-button hover:bg-action-deep active:bg-action-lip active:shadow-button-pressed aria-expanded:bg-action-deep",
        secondary:
          "border-3 border-white bg-surface-2 font-bold text-ink shadow-button hover:bg-hover active:bg-lip active:shadow-button-pressed aria-expanded:bg-hover aria-pressed:bg-select-soft aria-pressed:text-select-ink",
        destructive:
          "border-3 border-white bg-danger-soft font-extrabold text-danger-deep shadow-button hover:bg-danger-soft-2 active:shadow-button-pressed",
        tint: "border-3 border-white bg-white/70 font-extrabold text-ink shadow-button hover:bg-white active:shadow-button-pressed aria-expanded:bg-white",
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
          "h-12 gap-2 px-4.5 text-[14.5px] has-data-[icon=inline-end]:pr-4 has-data-[icon=inline-start]:pl-4",
        sm: "h-9 gap-1.5 rounded-sm border-2 px-3 text-14 has-data-[icon=inline-end]:pr-2.5 has-data-[icon=inline-start]:pl-2.5 [&_svg:not([class*='size-'])]:size-3.5",
        lg: "h-14 gap-2.5 px-6 text-16 has-data-[icon=inline-end]:pr-5 has-data-[icon=inline-start]:pl-5 [&_svg:not([class*='size-'])]:size-5",
        icon: "size-12 rounded-full",
        "icon-lg": "size-14 rounded-full [&_svg:not([class*='size-'])]:size-5",
        "icon-sm": "size-9 rounded-full border-2",
        "icon-xs":
          "size-7 rounded-full border-2 [&_svg:not([class*='size-'])]:size-3.5",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  },
);

const Button = ({
  className,
  variant = "default",
  size = "default",
  ...props
}: ButtonPrimitive.Props & VariantProps<typeof buttonVariants>) => {
  return (
    <ButtonPrimitive
      data-slot="button"
      className={cn(buttonVariants({ variant, size, className }))}
      {...props}
    />
  );
};

export { Button, buttonVariants };
