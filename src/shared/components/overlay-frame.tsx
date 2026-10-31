"use client";

import {
  useEffect,
  useRef,
  useState,
  type ComponentProps,
  type ReactNode,
  type Ref,
  type UIEventHandler,
} from "react";

import { DialogDescription, DialogTitle } from "@/shared/components/ui/dialog";
import { SheetDescription, SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

/* Where the frame sits: a side sheet, a bottom sheet or a centred dialog. */
export type OverlayPlacement = "bottom" | "dialog" | "side";

/*
 * What a `head` receives to place: the title block (title, a line under it
 * and the description), and how the head sits, edge to edge on wide screens
 * and as a card inside the scroll on a bottom sheet.
 */
export type OverlayHead = (
  title: ReactNode,
  layout: "flush" | "inset",
) => ReactNode;

export type OverlayFrameProps = {
  /* Pinned under the body, such as Cancel and the main button. */
  footer?: ReactNode;
  /*
   * Wraps the header, body and footer in a form, so a submit button in the
   * footer, and its pending state, belong to it.
   */
  form?: ComponentProps<"form">;
  /* The overlay's own title, description and head, placed by the frame. */
  head?: OverlayHead;
  /* The head fills the top edge to edge and brings its own padding. */
  headBleed?: boolean;
  bodyClassName?: string;
  children: ReactNode;
  description?: ReactNode;
  /* Keeps the description for screen readers only. */
  descriptionHidden?: boolean;
  /* A line under the title, such as a Pokémon's species, level and types. */
  meta?: ReactNode;
  onBodyScroll?: UIEventHandler<HTMLDivElement>;
  placement: OverlayPlacement;
  title: ReactNode;
  /* The title is read out but not drawn, as the head already says it. */
  titleHidden?: boolean;
  titleRef?: Ref<HTMLHeadingElement>;
  /* Pinned under the title, such as a search. */
  toolbar?: ReactNode;
};

const focusableSelector =
  'a[href], button:not([disabled]), input:not([disabled]):not([type="hidden"]), select:not([disabled]), textarea:not([disabled]), [tabindex]:not([tabindex="-1"])';

/*
 * A body that scrolls and holds nothing to focus can't be scrolled from the
 * keyboard, so it becomes one tab stop. Returns whether it should.
 */
const useKeyboardScroll = () => {
  const ref = useRef<HTMLDivElement>(null);
  const [needsStop, setNeedsStop] = useState(false);

  useEffect(() => {
    const body = ref.current;

    if (!body) return;

    const measure = () =>
      setNeedsStop(
        !body.querySelector(focusableSelector) &&
          body.scrollHeight > body.clientHeight,
      );
    const observer = new ResizeObserver(measure);
    const mutations = new MutationObserver(measure);

    observer.observe(body);
    mutations.observe(body, { childList: true, subtree: true });
    measure();

    return () => {
      observer.disconnect();
      mutations.disconnect();
    };
  }, []);

  return [ref, needsStop] as const;
};

/*
 * The inside of every sheet and dialog, so their title, close room, body
 * scroll and footer are one thing. The title (and any head or toolbar) stays
 * pinned while only the body scrolls, with a hairline under it once it does.
 * On a bottom sheet a head is a card in the scroll instead, as height is
 * tight there, unless a toolbar pins with the title.
 */
export const OverlayFrame = ({
  bodyClassName,
  children,
  description,
  descriptionHidden = false,
  footer,
  form,
  head,
  headBleed = false,
  meta,
  onBodyScroll,
  placement,
  title,
  titleHidden = false,
  titleRef,
  toolbar,
}: OverlayFrameProps) => {
  const [isScrolled, setIsScrolled] = useState(false);
  const [bodyRef, scrollsByKeyboard] = useKeyboardScroll();
  const isDialog = placement === "dialog";
  const isBottom = placement === "bottom";
  const Title = isDialog ? DialogTitle : SheetTitle;
  const Description = isDialog ? DialogDescription : SheetDescription;
  const titleBlock = (
    <div className="grid min-w-0 gap-1 pr-12">
      <Title
        ref={titleRef}
        tabIndex={-1}
        className={cn("outline-none", titleHidden && "sr-only")}
      >
        {title}
      </Title>
      {meta && !titleHidden ? (
        <div className="text-ink-2 text-13 font-bold">{meta}</div>
      ) : null}
      {description ? (
        <Description
          className={cn((descriptionHidden || titleHidden) && "sr-only")}
        >
          {description}
        </Description>
      ) : null}
    </div>
  );
  const padding = "px-5 sm:px-6";
  /* A hidden title still names the overlay: the head then has none to place. */
  const headNode = head
    ? head(titleHidden ? null : titleBlock, isBottom ? "inset" : "flush")
    : titleHidden
      ? null
      : titleBlock;
  /* A bottom sheet's head scrolls with the body, unless a toolbar pins with it. */
  const headScrolls = isBottom && Boolean(head) && !toolbar;
  const hasHeader = !headScrolls && (Boolean(headNode) || Boolean(toolbar));
  const header = hasHeader ? (
    <div
      data-slot="overlay-header"
      className={cn(
        "shrink-0 transition-colors",
        (!headBleed || toolbar) && "border-b",
        isScrolled ? "border-line" : "border-transparent",
        !headBleed && [padding, isBottom ? "pt-2 pb-4" : "pt-5 pb-4"],
      )}
    >
      {headNode}
      {toolbar ? (
        <div className={cn(headNode && "mt-4", headBleed && [padding, "pb-1"])}>
          {toolbar}
        </div>
      ) : null}
    </div>
  ) : null;
  const footerRow = footer ? (
    <div
      data-slot="overlay-footer"
      className={cn(
        "border-line bg-surface flex shrink-0 flex-wrap items-center justify-end gap-2.5 border-t py-3",
        padding,
        isBottom &&
          "pb-[calc(0.75rem+env(safe-area-inset-bottom,0px))] *:flex-1",
      )}
    >
      {footer}
    </div>
  ) : null;
  const body = (
    <div
      ref={bodyRef}
      data-slot="overlay-body"
      tabIndex={scrollsByKeyboard ? 0 : undefined}
      onScroll={(event) => {
        setIsScrolled(event.currentTarget.scrollTop > 0);
        onBodyScroll?.(event);
      }}
      className={cn(
        "min-h-0 flex-1 overflow-y-auto pt-4 pb-5 outline-none",
        scrollsByKeyboard && "focus-ring-inset",
        padding,
      )}
    >
      {headScrolls ? <div className="mb-4">{headNode}</div> : null}
      <div className={bodyClassName}>{children}</div>
    </div>
  );
  const parts = (
    <>
      {titleHidden ? titleBlock : null}
      {header}
      {body}
      {footerRow}
    </>
  );

  return form ? (
    <form
      {...form}
      className={cn("flex min-h-0 flex-1 flex-col", form.className)}
    >
      {parts}
    </form>
  ) : (
    parts
  );
};
