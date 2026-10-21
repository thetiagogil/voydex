"use client";

import { useState, type DragEvent } from "react";

/*
 * On a dragged slot: its pictures don't start a drag of their own, so the
 * slot is what moves (an image's drag would also end if it redraws).
 */
export const slotDragSourceClassName = "[&_img]:pointer-events-none";

/*
 * Drag and drop between the slots of a grid, such as the Play roster or the
 * Planner's team, with the browser's own drag events. A slot that holds
 * something takes `sourceProps`, every slot takes `targetProps`, and
 * `isOver` says which slot the drag is over. Inside a source, the element
 * marked `data-drag-image` is the picture that follows the pointer, so the
 * slot's controls (a remove ×, its number) stay put. Keyboard and touch need
 * their own way to move, as drag and drop only supplements it.
 */
export const useSlotDrag = <TItem extends number | string, TSlot>({
  accepts = () => true,
  onDrop,
}: {
  /* Whether the dragged item may land on a slot; others show no target. */
  accepts?: (item: TItem, slot: TSlot) => boolean;
  onDrop: (item: TItem, slot: TSlot) => void;
}) => {
  const [dragging, setDragging] = useState<TItem | null>(null);
  const [overSlot, setOverSlot] = useState<TSlot | null>(null);

  const end = () => {
    setDragging(null);
    setOverSlot(null);
  };

  const sourceProps = (item: TItem, { disabled = false } = {}) => ({
    draggable: !disabled,
    onDragEnd: end,
    onDragStart: (event: DragEvent<HTMLElement>) => {
      const image =
        event.currentTarget.querySelector<HTMLElement>("[data-drag-image]");

      if (image) {
        /*
         * A copy off the page: the browser draws a drag picture from the
         * screen, so the real one would take along whatever sits over it,
         * such as the corner ×.
         */
        const box = image.getBoundingClientRect();
        const copy = image.cloneNode(true) as HTMLElement;

        Object.assign(copy.style, {
          height: `${box.height}px`,
          left: "-10000px",
          pointerEvents: "none",
          position: "fixed",
          top: "0",
          width: `${box.width}px`,
        });
        document.body.append(copy);
        event.dataTransfer.setDragImage(
          copy,
          event.clientX - box.left,
          event.clientY - box.top,
        );
        window.setTimeout(() => copy.remove());
      }

      event.dataTransfer.effectAllowed = "move";
      /* Some browsers start a drag only once it carries data. */
      event.dataTransfer.setData("text/plain", String(item));
      setDragging(item);
    },
  });

  /*
   * A drop is taken on any other slot, so `onDrop` can say why one it
   * refuses snaps back; `isOver` marks only the slots it accepts.
   */
  const targetProps = (
    slot: TSlot,
    { item }: { item?: TItem | null } = {},
  ) => ({
    onDragLeave: () => {
      setOverSlot((current) => (current === slot ? null : current));
    },
    onDragOver: (event: DragEvent<HTMLElement>) => {
      if (dragging === null || dragging === item) return;
      event.preventDefault();
      setOverSlot(slot);
    },
    onDrop: (event: DragEvent<HTMLElement>) => {
      event.preventDefault();
      if (dragging !== null && dragging !== item) onDrop(dragging, slot);
      end();
    },
  });

  return {
    dragging,
    isOver: (slot: TSlot) =>
      dragging !== null && overSlot === slot && accepts(dragging, slot),
    sourceProps,
    targetProps,
  };
};
