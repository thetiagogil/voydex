"use client";

import { Toaster as Sonner, type ToasterProps } from "sonner";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * Toasts are v3's ink pill: bottom centre, the float shadow, an action in the
 * one action green. They slide in quietly; toasts never bounce. Where the
 * shell has a bottom bar, it sets `--toast-bottom` so toasts sit above it.
 */
const Toaster = ({ ...props }: ToasterProps) => {
  return (
    <Sonner
      theme="light"
      position="bottom-center"
      offset={{ bottom: "var(--toast-bottom, 24px)" }}
      mobileOffset={{ bottom: "var(--toast-bottom, 18px)" }}
      icons={{
        success: (
          <AppIcon icon={appIcons.status.active} className="text-ok-line" />
        ),
        info: <AppIcon icon={appIcons.status.info} />,
        warning: (
          <AppIcon icon={appIcons.status.warning} className="text-warn-soft" />
        ),
        error: (
          <AppIcon
            icon={appIcons.status.error}
            className="text-danger-soft-2"
          />
        ),
        loading: <Spinner />,
      }}
      toastOptions={{
        unstyled: true,
        classNames: {
          toast:
            "bg-ink text-on-ink shadow-float text-14 inset-x-0 mx-auto flex w-fit max-w-full items-center gap-3 rounded-lg py-3 pr-3.5 pl-4.5 font-sans font-bold",
          content: "flex min-w-0 flex-col gap-0.5",
          title: "text-white",
          description: "text-13 text-on-ink font-semibold",
          icon: "flex size-4 shrink-0 items-center justify-center [&_svg]:size-4",
          actionButton:
            "bg-action text-14 focus-visible:outline-on-ink ml-1 shrink-0 rounded-full px-3 py-1.5 font-extrabold text-white focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
          cancelButton:
            "text-on-ink text-14 hover:text-white shrink-0 rounded-full px-2 py-1.5 font-bold",
          closeButton: "hidden",
        },
      }}
      {...props}
    />
  );
};

export { Toaster };
