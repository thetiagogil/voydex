"use client";

import { Toaster as Sonner, type ToasterProps } from "sonner";

import { useIsMobile } from "@/shared/hooks/use-mobile";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * Toasts are v3's ink pill: the float shadow, an action in the one action
 * green. They sit bottom right on wide screens, out of the content's way,
 * and bottom centre on phones, in thumb's reach. They slide in quietly;
 * toasts never bounce. Where the shell has a bottom bar, it sets
 * `--toast-bottom` so toasts sit above it. Up to 600px Sonner draws its list
 * a gutter in from the left but the screen's full width, and sizes each toast
 * to fit between the gutters, so there a toast sits at the list's start,
 * not centred in it (which pushed it against the right edge).
 */
const Toaster = ({ ...props }: ToasterProps) => {
  const isMobile = useIsMobile();

  return (
    <Sonner
      theme="light"
      position={isMobile ? "bottom-center" : "bottom-right"}
      /* A run of marks stays readable: toasts stack open, three at a time. */
      expand
      visibleToasts={3}
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
            "bg-ink text-on-ink shadow-float copy-note flex w-fit max-w-full items-center gap-3 rounded-lg py-3 pr-3.5 pl-4.5 font-sans max-md:inset-x-0 max-md:min-[601px]:mx-auto md:right-0 md:ml-auto",
          content: "flex min-w-0 flex-col gap-0.5",
          title: "text-white",
          description: "copy-meta text-on-ink",
          icon: "flex size-4 shrink-0 items-center justify-center [&_svg]:size-4",
          actionButton:
            "bg-action copy-strong focus-visible:outline-on-ink ml-1 shrink-0 rounded-full px-3 py-1.5 text-white focus-ring",
          cancelButton:
            "text-on-ink copy-note hover:text-white shrink-0 rounded-full px-2 py-1.5",
          closeButton: "hidden",
        },
      }}
      {...props}
    />
  );
};

/*
 * For a toast with two actions (Not now, Try again). From 768px it may grow
 * past the usual width, up to 26rem (416px), so its words sit on one line
 * beside the actions. Below that the words take the whole first line and the
 * actions share the line under them, lined up with the words, instead of
 * squeezing the words into a narrow column.
 */
const twoActionToast = {
  classNames: {
    /*
     * Each takes half the row, which starts where the words start; Not now
     * gets a quiet fill there, so the two read as a pair of buttons.
     */
    actionButton: "max-md:ml-0 max-md:flex-1",
    cancelButton: "max-md:bg-on-ink/10 max-md:ml-7 max-md:flex-1",
    content: "max-md:basis-[calc(100%-1.75rem)]",
    /* Even sides, so the row ends as far in as the icon starts. */
    toast:
      "max-md:flex-wrap max-md:gap-y-2.5 max-md:pr-4.5 md:w-max md:max-w-104",
  },
};

export { Toaster, twoActionToast };
