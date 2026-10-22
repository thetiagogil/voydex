import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

/*
 * An item's picture: its sprite when it has one, else a stand-in by kind (a
 * Poké Ball, or a box for a held item), so every item row and field already
 * has its place for the sprite. Decorative; the item's name is beside it.
 */
export const ItemIcon = ({
  className,
  kind,
  name,
  src,
}: {
  className?: string;
  kind: "ball" | "held";
  name: string;
  /* The sprite's address, once items have them. */
  src?: string | null;
}) =>
  src ? (
    <FallbackImage
      src={src}
      name={name}
      className={cn("size-6 shrink-0", className)}
    />
  ) : (
    <AppIcon
      icon={
        kind === "ball" ? appIcons.product.caught : appIcons.product.heldItem
      }
      size="lg"
      className={cn("text-ink-3 shrink-0", className)}
    />
  );
