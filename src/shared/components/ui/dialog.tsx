"use client";

import * as React from "react";
import { Dialog as DialogPrimitive } from "@base-ui/react/dialog";
import { cn } from "@/shared/utils/cn";
import { Button } from "@/shared/components/ui/button";
import { XIcon } from "lucide-react";

const Dialog = ({ ...props }: DialogPrimitive.Root.Props) => {
  return <DialogPrimitive.Root data-slot="dialog" {...props} />;
};

const DialogTrigger = ({ ...props }: DialogPrimitive.Trigger.Props) => {
  return <DialogPrimitive.Trigger data-slot="dialog-trigger" {...props} />;
};

const DialogPortal = ({ ...props }: DialogPrimitive.Portal.Props) => {
  return <DialogPrimitive.Portal data-slot="dialog-portal" {...props} />;
};

const DialogClose = ({ ...props }: DialogPrimitive.Close.Props) => {
  return <DialogPrimitive.Close data-slot="dialog-close" {...props} />;
};

const DialogOverlay = ({
  className,
  ...props
}: DialogPrimitive.Backdrop.Props) => {
  return (
    /* Rendered even over a sheet, so a dialog sits on its own level. */
    <DialogPrimitive.Backdrop
      data-slot="dialog-overlay"
      forceRender
      className={cn(
        "data-open:animate-in data-open:fade-in-0 data-closed:animate-out data-closed:fade-out-0 bg-scrim fixed inset-0 isolate z-50 duration-100",
        className,
      )}
      {...props}
    />
  );
};

const DialogContent = ({
  className,
  children,
  fullScreenOnPhone = false,
  showCloseButton = true,
  ...props
}: DialogPrimitive.Popup.Props & {
  /*
   * Fills the screen on phones. The close button then takes its own row at the
   * top instead of floating, so content never sits under it.
   */
  fullScreenOnPhone?: boolean;
  showCloseButton?: boolean;
}) => {
  const closeButton = showCloseButton ? (
    <DialogPrimitive.Close
      data-slot="dialog-close"
      render={
        <Button
          variant="soft"
          size="icon-sm"
          className={cn(
            "absolute top-4 right-4",
            fullScreenOnPhone &&
              "max-sm:static max-sm:m-3 max-sm:mb-0 max-sm:shrink-0 max-sm:self-end max-sm:justify-self-end",
          )}
        />
      }
    >
      <XIcon />
      <span className="sr-only">Close</span>
    </DialogPrimitive.Close>
  ) : null;

  return (
    <DialogPortal>
      <DialogOverlay />
      <DialogPrimitive.Popup
        data-slot="dialog-content"
        className={cn(
          "bg-surface text-ink data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 shadow-overlay text-15 fixed top-1/2 left-1/2 z-50 grid max-h-[calc(100dvh-2rem)] w-full max-w-[calc(100%-2rem)] -translate-x-1/2 -translate-y-1/2 gap-4 overflow-y-auto rounded-2xl p-6 duration-100 outline-none sm:max-w-sm",
          fullScreenOnPhone &&
            "max-sm:h-dvh max-sm:max-h-dvh max-sm:max-w-none max-sm:rounded-none",
          className,
        )}
        {...props}
      >
        {fullScreenOnPhone ? closeButton : null}
        {children}
        {fullScreenOnPhone ? null : closeButton}
      </DialogPrimitive.Popup>
    </DialogPortal>
  );
};

const DialogHeader = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="dialog-header"
      className={cn("flex flex-col gap-2", className)}
      {...props}
    />
  );
};

const DialogFooter = ({
  className,
  showCloseButton = false,
  children,
  ...props
}: React.ComponentProps<"div"> & {
  showCloseButton?: boolean;
}) => {
  return (
    <div
      data-slot="dialog-footer"
      className={cn(
        "border-line bg-surface-2 -mx-6 -mb-6 flex flex-col-reverse gap-2.5 rounded-b-2xl border-t px-6 py-4 sm:flex-row sm:items-center sm:justify-end",
        className,
      )}
      {...props}
    >
      {children}
      {showCloseButton && (
        <DialogPrimitive.Close render={<Button variant="secondary" />}>
          Close
        </DialogPrimitive.Close>
      )}
    </div>
  );
};

const DialogTitle = ({ className, ...props }: DialogPrimitive.Title.Props) => {
  return (
    <DialogPrimitive.Title
      data-slot="dialog-title"
      className={cn(
        "font-display text-20 text-ink leading-tight font-semibold tracking-[-0.01em]",
        className,
      )}
      {...props}
    />
  );
};

const DialogDescription = ({
  className,
  ...props
}: DialogPrimitive.Description.Props) => {
  return (
    <DialogPrimitive.Description
      data-slot="dialog-description"
      className={cn(
        "text-14 text-ink-2 *:[a]:text-link font-semibold *:[a]:font-extrabold *:[a]:underline *:[a]:underline-offset-3",
        className,
      )}
      {...props}
    />
  );
};

export {
  Dialog,
  DialogClose,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogOverlay,
  DialogPortal,
  DialogTitle,
  DialogTrigger,
};
