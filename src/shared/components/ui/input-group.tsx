"use client";

import * as React from "react";
import { Input as InputPrimitive } from "@base-ui/react/input";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/shared/utils/cn";
import { Button } from "@/shared/components/ui/button";
import { fieldSurfaceClassName } from "@/shared/components/ui/field-surface";

/*
 * A field with addons, such as the search field (v3 `.search`): 46px, the
 * field look, the icon in ink-3 and the text in ink. The whole group shows
 * the focus outline while its control has focus.
 */
const InputGroup = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="input-group"
      role="group"
      className={cn(
        fieldSurfaceClassName,
        "group/input-group text-ink-3 has-[[data-slot=input-group-control]:focus-visible]:outline-focus has-[[data-slot][aria-invalid=true]]:border-danger relative flex h-12 w-full min-w-0 items-center rounded-full px-2.5 has-disabled:opacity-60 has-[[data-slot=input-group-control]:focus-visible]:outline-3 has-[[data-slot=input-group-control]:focus-visible]:outline-offset-1 has-[[data-slot=input-group-control]:focus-visible]:outline-solid has-[>[data-align=block-end]]:h-auto has-[>[data-align=block-end]]:flex-col has-[>[data-align=block-start]]:h-auto has-[>[data-align=block-start]]:flex-col has-[>textarea]:h-auto has-[>textarea]:rounded-2xl has-[>[data-align=block-end]]:[&>input]:pt-3 has-[>[data-align=block-start]]:[&>input]:pb-3 has-[>[data-align=inline-end]]:[&>input]:pr-1.5 has-[>[data-align=inline-start]]:[&>input]:pl-1.5",
        className,
      )}
      {...props}
    />
  );
};

const inputGroupAddonVariants = cva(
  "text-14 text-ink-3 flex h-auto cursor-text items-center justify-center gap-2 py-1.5 font-bold select-none group-data-[disabled=true]/input-group:opacity-50 [&>svg:not([class*='size-'])]:size-4",
  {
    variants: {
      align: {
        "inline-start":
          "order-first pl-2.5 has-[>button]:ml-[-0.3rem] has-[>kbd]:ml-[-0.15rem]",
        "inline-end":
          "order-last pr-2 has-[>button]:mr-[-0.3rem] has-[>kbd]:mr-[-0.15rem]",
        "block-start":
          "order-first w-full justify-start px-2.5 pt-2 group-has-[>input]/input-group:pt-2 [.border-b]:pb-2",
        "block-end":
          "order-last w-full justify-start px-2.5 pb-2 group-has-[>input]/input-group:pb-2 [.border-t]:pt-2",
      },
    },
    defaultVariants: {
      align: "inline-start",
    },
  },
);

const InputGroupAddon = ({
  className,
  align = "inline-start",
  ...props
}: React.ComponentProps<"div"> &
  VariantProps<typeof inputGroupAddonVariants>) => {
  return (
    <div
      role="group"
      data-slot="input-group-addon"
      data-align={align}
      className={cn(inputGroupAddonVariants({ align }), className)}
      onClick={(e) => {
        if ((e.target as HTMLElement).closest("button")) {
          return;
        }
        e.currentTarget.parentElement?.querySelector("input")?.focus();
      }}
      {...props}
    />
  );
};

/* A button inside a field (clear, show), on Button's own sizes: `icon-xs`, `icon-sm` or `sm`. */
const InputGroupButton = ({
  type = "button",
  variant = "ghost",
  size = "icon-xs",
  ...props
}: Omit<React.ComponentProps<typeof Button>, "size" | "type"> & {
  size?: "icon-sm" | "icon-xs" | "sm";
  type?: "button" | "submit" | "reset";
}) => {
  return (
    <Button
      type={type}
      data-size={size}
      variant={variant}
      size={size}
      {...props}
    />
  );
};

const InputGroupInput = ({
  className,
  ...props
}: React.ComponentProps<"input">) => {
  return (
    <InputPrimitive
      data-slot="input-group-control"
      className={cn(
        "text-16 sm:text-15 text-ink placeholder:text-ink-3 h-full w-full min-w-0 flex-1 bg-transparent px-2 font-semibold outline-none disabled:cursor-not-allowed",
        className,
      )}
      {...props}
    />
  );
};

export { InputGroup, InputGroupAddon, InputGroupButton, InputGroupInput };
