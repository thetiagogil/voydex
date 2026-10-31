"use client";

import {
  useRef,
  type ComponentProps,
  type ReactElement,
  type ReactNode,
} from "react";

import {
  OverlayFrame,
  type OverlayFrameProps,
} from "@/shared/components/overlay-frame";
import {
  Dialog,
  DialogContent,
  DialogTrigger,
} from "@/shared/components/ui/dialog";
import { cn } from "@/shared/utils/cn";

type DialogContentProps = ComponentProps<typeof DialogContent>;

/* The dialog's width: 384, 448, 512, 720 or 880px at most. */
export type OverlayDialogSize = "2xl" | "lg" | "md" | "sm" | "xl";

const sizeClassNames: Record<OverlayDialogSize, string> = {
  "2xl": "sm:max-w-220",
  lg: "sm:max-w-lg",
  md: "sm:max-w-md",
  sm: "sm:max-w-sm",
  xl: "sm:max-w-[min(45rem,calc(100%-2rem))]",
};

type OverlayDialogBaseProps = {
  className?: string;
  defaultOpen?: boolean;
  /* Where focus returns on close, when it is not the trigger. */
  finalFocus?: DialogContentProps["finalFocus"];
  /* Fills the screen on phones, with the close button on its own row. */
  fullScreenOnPhone?: boolean;
  /* Where focus lands on open; the title unless told otherwise. */
  initialFocus?: DialogContentProps["initialFocus"];
  onOpenChange?: (open: boolean) => void;
  open?: boolean;
  size?: OverlayDialogSize;
  /* The element that opens the dialog, through `render`. */
  trigger?: ReactElement;
};

/*
 * A dialog that draws its own whole surface, such as New Play's wizard with
 * its scene, steps and close button: no frame, no corner close, named by
 * `label`.
 */
type OverlayDialogBareProps = OverlayDialogBaseProps & {
  bare: true;
  children: ReactNode;
  label: string;
};

type OverlayDialogFramedProps = OverlayDialogBaseProps &
  Omit<OverlayFrameProps, "placement" | "titleRef"> & { bare?: false };

export type OverlayDialogProps =
  | OverlayDialogBareProps
  | OverlayDialogFramedProps;

/*
 * The one dialog, for something quick: a name, a rule's details, a short
 * form. It is centred at every width, with the same title, corner close,
 * scrolling body and footer as the sheet. A confirm that only asks yes or no
 * stays an `AlertDialog`.
 */
export const OverlayDialog = (props: OverlayDialogProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const {
    className,
    defaultOpen,
    finalFocus,
    fullScreenOnPhone = false,
    initialFocus,
    onOpenChange,
    open,
    size = "md",
    trigger,
  } = props;
  const bare = props.bare === true;

  return (
    <Dialog open={open} defaultOpen={defaultOpen} onOpenChange={onOpenChange}>
      {trigger ? <DialogTrigger render={trigger} /> : null}
      <DialogContent
        aria-label={bare ? props.label : undefined}
        fullScreenOnPhone={fullScreenOnPhone}
        showCloseButton={!bare}
        initialFocus={initialFocus ?? (bare ? undefined : titleRef)}
        finalFocus={finalFocus}
        className={cn(
          "gap-0 p-0",
          /* A bare dialog scrolls as a whole, as the primitive does. */
          !bare && "flex max-h-[85dvh] flex-col overflow-hidden",
          sizeClassNames[size],
          className,
        )}
      >
        {props.bare ? (
          props.children
        ) : (
          <OverlayFrame {...props} placement="dialog" titleRef={titleRef} />
        )}
      </DialogContent>
    </Dialog>
  );
};
