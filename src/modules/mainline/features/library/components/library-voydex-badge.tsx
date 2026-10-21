import { LogoMark } from "@/shared/components/brand/logo-mark";
import { Badge } from "@/shared/components/ui/badge";
import { cn } from "@/shared/utils/cn";

/*
 * What marks Voydex's own rules and presets in the Library: its red "V" and
 * name, so they stand out from yours at a glance. They can be used, not
 * changed. Sits in a card's corner and lets taps through to the card.
 */
export const LibraryVoydexBadge = ({ className }: { className?: string }) => (
  <Badge
    variant="outline"
    title="Made by Voydex: you can use it, not change it"
    className={cn("pointer-events-none gap-1.5 pl-1", className)}
  >
    <LogoMark className="size-4.5" />
    Voydex
  </Badge>
);
