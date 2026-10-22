"use client";

import { Switch as SwitchPrimitive } from "@base-ui/react/switch";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * A switch is a track and a sticker thumb: grey and empty when off, green
 * with a check when on. `lg` is as tall as a form field (48px) and, with
 * `labels`, says what each side means ("No", "Yes") inside the track.
 */
const Switch = ({
  className,
  labels,
  size = "default",
  ...props
}: SwitchPrimitive.Root.Props & {
  /* The words in the track, off then on; only `lg` draws them. */
  labels?: readonly [off: string, on: string];
  size?: "sm" | "default" | "lg";
}) => {
  return (
    <SwitchPrimitive.Root
      data-slot="switch"
      data-size={size}
      className={cn(
        "peer group/switch aria-invalid:border-danger data-checked:bg-ok data-unchecked:bg-ink/10 focus-ring relative inline-flex shrink-0 items-center rounded-full border border-transparent transition-colors after:absolute after:-inset-x-3 after:-inset-y-2 data-disabled:cursor-not-allowed data-disabled:opacity-50 data-[size=default]:h-6 data-[size=default]:w-10 data-[size=lg]:h-12 data-[size=lg]:w-24 data-[size=sm]:h-4.5 data-[size=sm]:w-8",
        className,
      )}
      {...props}
    >
      {size === "lg" && labels ? (
        <>
          <span
            aria-hidden
            className="text-14 absolute inset-y-0 left-5 grid place-items-center font-extrabold text-white group-data-unchecked/switch:invisible"
          >
            {labels[1]}
          </span>
          <span
            aria-hidden
            className="text-14 text-ink-2 absolute inset-y-0 right-5 grid place-items-center font-extrabold group-data-checked/switch:invisible"
          >
            {labels[0]}
          </span>
        </>
      ) : null}
      <SwitchPrimitive.Thumb
        data-slot="switch-thumb"
        className="shadow-soft pointer-events-none relative block rounded-full bg-white ring-0 transition-transform group-data-[size=default]/switch:size-5 group-data-[size=lg]/switch:ml-1 group-data-[size=lg]/switch:size-10 group-data-[size=lg]/switch:shadow-[0_2px_6px_rgb(var(--shade)/0.28)] group-data-[size=sm]/switch:size-3.5 group-data-[size=default]/switch:data-checked:translate-x-[calc(100%-2px)] group-data-[size=lg]/switch:data-checked:translate-x-12 group-data-[size=sm]/switch:data-checked:translate-x-[calc(100%-2px)] group-data-[size=default]/switch:data-unchecked:translate-x-0 group-data-[size=lg]/switch:data-unchecked:translate-x-0 group-data-[size=sm]/switch:data-unchecked:translate-x-0"
      >
        {size === "lg" ? (
          <AppIcon
            icon={appIcons.status.active}
            size="md"
            strokeWidth={3}
            className="text-ok absolute inset-0 m-auto opacity-0 transition-opacity group-data-checked/switch:opacity-100"
          />
        ) : null}
      </SwitchPrimitive.Thumb>
    </SwitchPrimitive.Root>
  );
};

export { Switch };
