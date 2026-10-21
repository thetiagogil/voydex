import { LogoMark } from "@/shared/components/brand/logo-mark";
import { cn } from "@/shared/utils/cn";

/*
 * What marks Voydex's own rules and presets in the Library: its red "V", so
 * they stand out from yours at a glance. They can be used, not changed.
 * Sits in a card's corner and lets taps through to the card.
 */
export const LibraryVoydexBadge = ({ className }: { className?: string }) => (
  <span
    title="Made by Voydex: you can use it, not change it"
    className={cn("pointer-events-none inline-flex", className)}
  >
    <LogoMark className="size-6" />
    <span className="sr-only">Made by Voydex</span>
  </span>
);
