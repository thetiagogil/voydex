import { cn } from "@/shared/utils/cn";
import { Button as ButtonPrimitive } from "@base-ui/react/button";
import { cva, type VariantProps } from "class-variance-authority";

/*
 * Every button is Nunito. The main button (default) carries the 5px green lip;
 * the quiet buttons (outline, secondary) are v3's .btn-2: no line, a 3px
 * neutral lip, cream on the page and the inset fill inside a card or dialog.
 * Both press down onto their lip. Ghost, link and destructive stay flat.
 */
const buttonVariants = cva(
  "group/button inline-flex shrink-0 items-center justify-center rounded-lg border-[1.5px] font-sans whitespace-nowrap transition-[background-color,color,translate,box-shadow] duration-[120ms] ease-out outline-none select-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-focus focus-visible:outline-solid disabled:pointer-events-none disabled:opacity-50 aria-invalid:border-danger [&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4",
  {
    variants: {
      variant: {
        default:
          "border-transparent bg-action font-extrabold text-white shadow-action hover:brightness-95 active:not-aria-[haspopup]:translate-y-[5px] active:not-aria-[haspopup]:shadow-none",
        outline:
          "border-transparent bg-surface font-bold text-ink shadow-quiet hover:bg-hover active:not-aria-[haspopup]:translate-y-[3px] active:not-aria-[haspopup]:shadow-none in-data-[slot=card]:bg-surface-2 in-data-[slot=card]:hover:bg-hover in-data-[slot=dialog-content]:bg-surface-2 in-data-[slot=alert-dialog-content]:bg-surface-2 in-data-[slot=sheet-content]:bg-surface-2 in-data-[slot=popover-content]:bg-surface-2 aria-expanded:bg-hover aria-pressed:bg-select-soft aria-pressed:text-select-ink",
        secondary:
          "border-transparent bg-surface-2 font-bold text-ink shadow-quiet hover:bg-hover active:not-aria-[haspopup]:translate-y-[3px] active:not-aria-[haspopup]:shadow-none aria-expanded:bg-hover",
        ghost:
          "border-transparent font-bold text-ink-2 hover:bg-hover hover:text-ink aria-expanded:bg-hover aria-expanded:text-ink",
        destructive:
          "border-danger-line bg-transparent font-extrabold text-danger hover:bg-danger-soft",
        link: "border-transparent font-bold text-link underline-offset-4 hover:underline",
      },
      size: {
        default:
          "h-11 gap-2 px-4 text-15 has-data-[icon=inline-end]:pr-3.5 has-data-[icon=inline-start]:pl-3.5",
        xs: "h-7 gap-1 rounded-xs px-2.5 text-12 [&_svg:not([class*='size-'])]:size-3",
        sm: "h-9 gap-1.5 rounded-sm px-3 text-14 has-data-[icon=inline-end]:pr-2.5 has-data-[icon=inline-start]:pl-2.5 [&_svg:not([class*='size-'])]:size-3.5",
        lg: "h-13 gap-2.5 px-6 text-16 has-data-[icon=inline-end]:pr-5 has-data-[icon=inline-start]:pl-5 [&_svg:not([class*='size-'])]:size-5",
        icon: "size-11",
        "icon-xs": "size-7 rounded-xs [&_svg:not([class*='size-'])]:size-3",
        "icon-sm": "size-9 rounded-sm",
        "icon-lg": "size-13",
      },
    },
    compoundVariants: [
      {
        variant: "default",
        size: ["xs", "sm", "icon-xs", "icon-sm"],
        className:
          "shadow-[0_3px_0_var(--action-lip)] active:not-aria-[haspopup]:translate-y-[3px]",
      },
    ],
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
