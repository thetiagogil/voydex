"use client";

import { useRef, type ReactNode } from "react";

import { PokemonSheetHead } from "@/modules/mainline/shared/components/pokemon-sheet-head";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetTitle,
} from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

/* v3 `.sh-head`: the Pokémon a form is about, on its type's tint. */
export type FormOverlayHero = {
  /* Under the identity, on the tint: the Pokémon's own actions. */
  actions?: ReactNode;
  imageUrl: string | null;
  /* Under the title, such as the species, level and types. */
  meta?: ReactNode;
  type: PokemonTypeSlug | null;
};

type FormOverlayProps = {
  bodyClassName?: string;
  children: ReactNode;
  description?: ReactNode;
  /* Pinned under the body: Cancel and the form's main button. */
  footer?: ReactNode;
  /* Puts the title beside the Pokémon's art on its type tint, pinned. */
  hero?: FormOverlayHero;
  /* A short line over the title, such as "Add · Sword". */
  kicker?: ReactNode;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  /*
   * How it opens on wide screens: `dialog` in the middle, `side` as v3's
   * side sheet (`.overlay.side`) for longer forms. Phones and tablets always
   * get the bottom sheet.
   */
  presentation?: "dialog" | "side";
  /* The side sheet's width: v3's 560px (`md`) or 640px (`lg`). */
  size?: "lg" | "md";
  title: ReactNode;
  /*
   * Pinned under the title, such as a search: the title and it stay in view
   * while only the body scrolls.
   */
  toolbar?: ReactNode;
};

/*
 * Mainline's quiet forms (a note, adding or editing a Pokémon in a Play, a
 * Plan's slot): a bottom sheet on phones and tablets, a dialog or side sheet
 * wider. Focus lands on the
 * title, and the footer stays in view while the body scrolls; with a hero or
 * a toolbar, so does everything above the body.
 */
export const FormOverlay = ({
  bodyClassName,
  children,
  description,
  footer,
  hero,
  kicker,
  onOpenChange,
  open,
  presentation = "dialog",
  size = "md",
  title,
  toolbar,
}: FormOverlayProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const usesBottomSheet = useBottomSheetLayout();
  const isSheet = usesBottomSheet || presentation === "side";
  const Title = isSheet ? SheetTitle : DialogTitle;
  const Description = isSheet ? SheetDescription : DialogDescription;
  const titleBlock = (
    <div className="grid min-w-0 gap-1 pr-12">
      {kicker ? (
        <p className="text-ink-3 text-13 font-extrabold">{kicker}</p>
      ) : null}
      <Title
        ref={titleRef}
        tabIndex={-1}
        className={cn(
          "outline-none",
          hero && !usesBottomSheet ? "text-24 sm:text-[30px]" : "text-24",
        )}
      >
        {title}
      </Title>
      {hero?.meta ? <div className="mt-1.5">{hero.meta}</div> : null}
      {description ? <Description>{description}</Description> : null}
    </div>
  );
  const heroBlock = hero ? (
    <PokemonSheetHead
      actions={hero.actions}
      imageUrl={hero.imageUrl}
      layout={usesBottomSheet ? "inset" : "flush"}
      type={hero.type}
    >
      {titleBlock}
    </PokemonSheetHead>
  ) : null;
  const footerRow = footer ? (
    <div
      data-slot="play-form-footer"
      className="border-line bg-surface flex shrink-0 flex-wrap items-center justify-end gap-2.5 border-t px-5 py-3 sm:px-6"
    >
      {footer}
    </div>
  ) : null;

  if (usesBottomSheet) {
    // Phones keep the hero in the scroll, as v3's `.bs-card`; only a toolbar pins.
    const pinned = Boolean(toolbar);

    return (
      <BottomSheet
        open={open}
        onOpenChange={onOpenChange}
        initialFocus={titleRef}
        label={typeof title === "string" ? title : undefined}
        bodyClassName={cn("pt-2", bodyClassName)}
        footer={footer}
        header={
          pinned ? (
            <>
              {heroBlock ?? titleBlock}
              {toolbar ? <div className="mt-4">{toolbar}</div> : null}
            </>
          ) : undefined
        }
      >
        {pinned ? (
          children
        ) : (
          <>
            {heroBlock ?? titleBlock}
            <div className="mt-4">{children}</div>
          </>
        )}
      </BottomSheet>
    );
  }

  /* Side sheet and dialog: what sits above the body, pinned or scrolling. */
  const content =
    hero || toolbar ? (
      <>
        <div className="shrink-0">
          {heroBlock ?? <div className="px-6 pt-6">{titleBlock}</div>}
          {toolbar ? <div className="px-6 pt-5 pb-4">{toolbar}</div> : null}
        </div>
        <div
          className={cn(
            "min-h-0 flex-1 overflow-y-auto px-6 pb-6",
            toolbar ? "pt-1" : "pt-5",
            bodyClassName,
          )}
        >
          {children}
        </div>
      </>
    ) : (
      <div className="flex min-h-0 flex-1 flex-col overflow-y-auto px-6 pt-6 pb-6">
        {titleBlock}
        <div className={cn("mt-5", bodyClassName)}>{children}</div>
      </div>
    );

  if (presentation === "side") {
    return (
      <Sheet open={open} onOpenChange={onOpenChange}>
        <SheetContent
          side="right"
          initialFocus={titleRef}
          className={cn(
            "w-full gap-0 p-0",
            size === "lg"
              ? "data-[side=right]:sm:max-w-160"
              : "data-[side=right]:sm:max-w-140",
          )}
        >
          {content}
          {footerRow}
        </SheetContent>
      </Sheet>
    );
  }

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent
        initialFocus={titleRef}
        className="flex max-h-[85dvh] flex-col gap-0 overflow-hidden p-0 sm:max-w-lg"
      >
        {content}
        {footerRow}
      </DialogContent>
    </Dialog>
  );
};
