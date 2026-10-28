"use client";

import { Avatar as AvatarPrimitive } from "@base-ui/react/avatar";
import { cn } from "@/shared/utils/cn";

/* Your icon: a round tile with your Pokémon, or your initial until you pick one. */
const Avatar = ({
  className,
  size = "default",
  ...props
}: AvatarPrimitive.Root.Props & {
  size?: "default" | "sm" | "lg";
}) => {
  return (
    <AvatarPrimitive.Root
      data-slot="avatar"
      data-size={size}
      className={cn(
        "group/avatar bg-avatar relative flex size-9 shrink-0 overflow-hidden rounded-full select-none data-[size=lg]:size-11 data-[size=sm]:size-7",
        className,
      )}
      {...props}
    />
  );
};

const AvatarImage = ({ className, ...props }: AvatarPrimitive.Image.Props) => {
  return (
    <AvatarPrimitive.Image
      data-slot="avatar-image"
      className={cn("size-full object-contain p-0.5", className)}
      {...props}
    />
  );
};

const AvatarFallback = ({
  className,
  ...props
}: AvatarPrimitive.Fallback.Props) => {
  return (
    <AvatarPrimitive.Fallback
      data-slot="avatar-fallback"
      className={cn(
        "bg-avatar text-avatar-ink text-12 group-data-[size=lg]/avatar:text-14 flex size-full items-center justify-center rounded-full font-extrabold",
        className,
      )}
      {...props}
    />
  );
};

export { Avatar, AvatarFallback, AvatarImage };
