"use client";

import { useRef, type ReactNode } from "react";

import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
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
export type PlayFormHero = {
  imageUrl: string | null;
  /* Under the title, such as the species, level and types. */
  meta?: ReactNode;
  type: PokemonTypeSlug | null;
};

type PlayFormOverlayProps = {
  bodyClassName?: string;
  children: ReactNode;
  description?: ReactNode;
  /* Pinned under the body: Cancel and the form's main button. */
  footer?: ReactNode;
  /* Puts the title beside the Pokémon's art on its type tint, pinned. */
  hero?: PlayFormHero;
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
  title: ReactNode;
  /*
   * Pinned under the title, such as a search: the title and it stay in view
   * while only the body scrolls.
   */
  toolbar?: ReactNode;
};

const HeroArt = ({ hero, small }: { hero: PlayFormHero; small: boolean }) => (
  <span
    aria-hidden
    className={cn(
      "sticker grid shrink-0 place-items-center rounded-xl",
      small ? "size-21" : "size-20 sm:size-27.5",
    )}
  >
    {hero.imageUrl ? (
      // eslint-disable-next-line @next/next/no-img-element
      <img
        src={hero.imageUrl}
        alt=""
        className={cn(
          "max-w-none object-contain",
          small ? "size-18" : "size-17.5 sm:size-24",
        )}
      />
    ) : (
      <span className="empty-slot size-3/4 rounded-full" />
    )}
  </span>
);

/*
 * A Play's quiet forms (a note, adding or editing a Pokémon): a bottom sheet
 * on phones and tablets, a dialog or side sheet wider. Focus lands on the
 * title, and the footer stays in view while the body scrolls; with a hero or
 * a toolbar, so does everything above the body.
 */
export const PlayFormOverlay = ({
  bodyClassName,
  children,
  description,
  footer,
  hero,
  kicker,
  onOpenChange,
  open,
  presentation = "dialog",
  title,
  toolbar,
}: PlayFormOverlayProps) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const usesBottomSheet = useMainlinePlayDetailSheetLayout();
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
    <div
      style={getPokemonTypeCssVariables(hero.type)}
      className={cn(
        "flex items-center gap-4.5 bg-[color-mix(in_oklab,var(--t)_18%,var(--surface))]",
        usesBottomSheet
          ? "mt-1 gap-4 rounded-lg p-4"
          : "px-4.5 py-4.5 sm:px-7 sm:pt-5.5",
      )}
    >
      <HeroArt hero={hero} small={usesBottomSheet} />
      {titleBlock}
    </div>
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
    const pinned = hero || toolbar;

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
            {titleBlock}
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
          className="w-full gap-0 p-0 data-[side=right]:sm:max-w-[480px]"
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
