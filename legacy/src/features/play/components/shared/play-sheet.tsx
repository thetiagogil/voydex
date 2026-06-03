"use client";

import { cn } from "@/lib/utils/cn";
import { Button } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";
import type { ReactNode } from "react";

type PlaySheetProps = {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  title: string;
  description: string;
  children: ReactNode;
  footer?: ReactNode;
  className?: string;
};

export const PlaySheet = ({
  open,
  onOpenChange,
  title,
  description,
  children,
  footer,
  className,
}: PlaySheetProps) => {
  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetContent
        className={cn(
          "flex h-full flex-col gap-0 sm:w-full md:max-w-[50rem]",
          className,
        )}
      >
        <SheetHeader className="border-border border-b px-6 pb-4">
          <SheetTitle>{title}</SheetTitle>
          <SheetDescription className="sr-only">{description}</SheetDescription>
        </SheetHeader>

        <div className="flex min-h-0 flex-1 flex-col">{children}</div>

        <SheetFooter className="border-border border-t px-6 py-4">
          {footer ?? (
            <SheetClose asChild>
              <Button variant="secondary">Close</Button>
            </SheetClose>
          )}
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
};
