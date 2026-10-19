"use client";

import * as React from "react";
/*
 * Built on the Dialog primitive rather than Base UI's alert dialog, which
 * can't be dismissed: a confirm closes on its answer, its X, Escape or a
 * click outside (all of which mean "no"), and the popup still reads as an
 * alert dialog.
 */
import { Dialog as AlertDialogPrimitive } from "@base-ui/react/dialog";
import { XIcon } from "lucide-react";
import { cn } from "@/shared/utils/cn";
import { Button } from "@/shared/components/ui/button";

const AlertDialog = ({ ...props }: AlertDialogPrimitive.Root.Props) => {
  return <AlertDialogPrimitive.Root data-slot="alert-dialog" {...props} />;
};

const AlertDialogPortal = ({ ...props }: AlertDialogPrimitive.Portal.Props) => {
  return (
    <AlertDialogPrimitive.Portal data-slot="alert-dialog-portal" {...props} />
  );
};

const AlertDialogOverlay = ({
  className,
  ...props
}: AlertDialogPrimitive.Backdrop.Props) => {
  return (
    /* Rendered even over a sheet, so a confirm sits on its own level. */
    <AlertDialogPrimitive.Backdrop
      data-slot="alert-dialog-overlay"
      forceRender
      className={cn(
        "data-open:animate-in data-open:fade-in-0 data-closed:animate-out data-closed:fade-out-0 bg-scrim fixed inset-0 isolate z-50 duration-100",
        className,
      )}
      {...props}
    />
  );
};

const AlertDialogContent = ({
  children,
  className,
  showCloseButton = true,
  size = "default",
  ...props
}: AlertDialogPrimitive.Popup.Props & {
  showCloseButton?: boolean;
  size?: "default" | "sm";
}) => {
  return (
    <AlertDialogPortal>
      <AlertDialogOverlay />
      <AlertDialogPrimitive.Popup
        data-slot="alert-dialog-content"
        data-size={size}
        role="alertdialog"
        className={cn(
          "group/alert-dialog-content bg-surface text-ink text-15 data-open:animate-in data-open:fade-in-0 data-open:zoom-in-95 data-closed:animate-out data-closed:fade-out-0 data-closed:zoom-out-95 shadow-overlay fixed top-1/2 left-1/2 z-50 grid max-h-[calc(100dvh-2rem)] w-full -translate-x-1/2 -translate-y-1/2 gap-4 overflow-y-auto rounded-2xl p-6 duration-100 outline-none data-[size=default]:max-w-xs data-[size=sm]:max-w-xs data-[size=default]:sm:max-w-sm",
          className,
        )}
        {...props}
      >
        {children}
        {showCloseButton ? (
          <AlertDialogPrimitive.Close
            data-slot="alert-dialog-close"
            render={
              <Button
                variant="secondary"
                size="icon-sm"
                className="absolute top-4 right-4"
              />
            }
          >
            <XIcon />
            <span className="sr-only">Close</span>
          </AlertDialogPrimitive.Close>
        ) : null}
      </AlertDialogPrimitive.Popup>
    </AlertDialogPortal>
  );
};

const AlertDialogHeader = ({
  className,
  ...props
}: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="alert-dialog-header"
      className={cn(
        /* Room for the close button in the corner. */
        "grid grid-rows-[auto_1fr] place-items-center gap-1.5 pr-8 text-center has-data-[slot=alert-dialog-media]:grid-rows-[auto_auto_1fr] has-data-[slot=alert-dialog-media]:gap-x-4 sm:group-data-[size=default]/alert-dialog-content:place-items-start sm:group-data-[size=default]/alert-dialog-content:text-left sm:group-data-[size=default]/alert-dialog-content:has-data-[slot=alert-dialog-media]:grid-rows-[auto_1fr]",
        className,
      )}
      {...props}
    />
  );
};

const AlertDialogFooter = ({
  className,
  ...props
}: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="alert-dialog-footer"
      className={cn(
        "border-line bg-surface-2 -mx-6 -mb-6 flex flex-col-reverse gap-2.5 rounded-b-2xl border-t px-6 py-4 group-data-[size=sm]/alert-dialog-content:grid group-data-[size=sm]/alert-dialog-content:grid-cols-2 sm:flex-row sm:justify-end",
        className,
      )}
      {...props}
    />
  );
};

const AlertDialogTitle = ({
  className,
  ...props
}: React.ComponentProps<typeof AlertDialogPrimitive.Title>) => {
  return (
    <AlertDialogPrimitive.Title
      data-slot="alert-dialog-title"
      className={cn(
        "title-card text-ink sm:group-data-[size=default]/alert-dialog-content:group-has-data-[slot=alert-dialog-media]/alert-dialog-content:col-start-2",
        className,
      )}
      {...props}
    />
  );
};

const AlertDialogDescription = ({
  className,
  ...props
}: React.ComponentProps<typeof AlertDialogPrimitive.Description>) => {
  return (
    <AlertDialogPrimitive.Description
      data-slot="alert-dialog-description"
      className={cn(
        "text-14 text-ink-2 *:[a]:text-link font-semibold text-balance md:text-pretty *:[a]:font-extrabold *:[a]:underline *:[a]:underline-offset-3",
        className,
      )}
      {...props}
    />
  );
};

const AlertDialogCancel = ({
  className,
  variant = "secondary",
  size = "default",
  ...props
}: AlertDialogPrimitive.Close.Props &
  Pick<React.ComponentProps<typeof Button>, "variant" | "size">) => {
  return (
    <AlertDialogPrimitive.Close
      data-slot="alert-dialog-cancel"
      className={cn(className)}
      render={<Button variant={variant} size={size} />}
      {...props}
    />
  );
};

export {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogOverlay,
  AlertDialogPortal,
  AlertDialogTitle,
};
