"use client";

import { useState, type DragEvent, type ReactNode } from "react";

import {
  putPresetRule,
  shiftPresetRule,
  takePresetRule,
} from "@/modules/mainline/features/library/data/preset-board";
import type { LibraryRule } from "@/modules/mainline/features/library/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

const dragType = "application/x-voydex-rule";

/* One rule on the board: its handle, name and kind, then its buttons. */
const BoardRule = ({
  actions,
  onDragStart,
  onDrop,
  rule,
}: {
  actions: ReactNode;
  onDragStart: (event: DragEvent) => void;
  /* Dropping another rule here puts it before this one. */
  onDrop?: (ruleId: string) => void;
  rule: LibraryRule;
}) => (
  <li
    draggable
    onDragStart={onDragStart}
    onDragOver={(event) => {
      if (onDrop) event.preventDefault();
    }}
    onDrop={(event) => {
      const ruleId = event.dataTransfer.getData(dragType);

      if (onDrop && ruleId) {
        event.preventDefault();
        event.stopPropagation();
        onDrop(ruleId);
      }
    }}
    /*
     * Its own layer (`translate3d`), so the browser's drag picture is just
     * the rounded row, not the square of the column behind its corners.
     */
    className="bg-surface shadow-card flex min-h-12 [transform:translate3d(0,0,0)] cursor-grab items-center gap-2 rounded-xl py-1.5 pr-1.5 pl-2 active:cursor-grabbing"
  >
    <AppIcon
      icon={appIcons.actions.dragHandle}
      size="sm"
      className="text-ink-3 shrink-0"
    />
    <span className="grid min-w-0 flex-1">
      <span className="text-ink text-15 truncate font-bold">{rule.name}</span>
      <span className="text-ink-3 text-13 font-semibold">{rule.kind.name}</span>
    </span>
    <span className="flex shrink-0 items-center gap-0.5">{actions}</span>
  </li>
);

/* A column of the board, and where a rule dropped on it lands. */
const BoardColumn = ({
  children,
  count,
  empty,
  isTarget,
  label,
  onDragLeave,
  onDragOver,
  onDrop,
}: {
  children: ReactNode;
  count: number;
  empty: string;
  isTarget: boolean;
  label: string;
  onDragLeave: () => void;
  onDragOver: (event: DragEvent) => void;
  onDrop: (event: DragEvent) => void;
}) => (
  <section
    aria-label={label}
    onDragOver={onDragOver}
    onDragLeave={onDragLeave}
    onDrop={onDrop}
    className={cn(
      "bg-surface-2 flex min-w-0 flex-col gap-2 rounded-2xl p-3 transition-colors",
      isTarget && "bg-select-soft",
    )}
  >
    <h4 className="text-ink-2 text-13 px-1 font-bold">
      {label} <span className="text-ink-3 tabular-nums">{count}</span>
    </h4>
    {count ? (
      <ul className="grid gap-2">{children}</ul>
    ) : (
      <p className="text-ink-3 text-14 border-line rounded-xl border-2 border-dashed px-3 py-4 text-center font-semibold">
        {empty}
      </p>
    )}
  </section>
);

/*
 * A preset's board (#84): the rules in it, in order, beside the rules you
 * can add. Drag a rule across or along to place it; on a phone or with a
 * keyboard, each rule's buttons add it, move it up or down, or take it out.
 */
export const LibraryPresetBoard = ({
  onChange,
  ruleIds,
  rules,
}: {
  onChange: (ruleIds: string[]) => void;
  /* The rules in the preset, in order. */
  ruleIds: string[];
  /* Every rule you can put in a preset. */
  rules: LibraryRule[];
}) => {
  const [target, setTarget] = useState<"in" | "out" | null>(null);
  const ruleById = new Map(rules.map((rule) => [rule.id, rule]));
  const inPreset = ruleIds.flatMap((id) => ruleById.get(id) ?? []);
  const toAdd = rules.filter((rule) => !ruleIds.includes(rule.id));
  const dragStart = (ruleId: string) => (event: DragEvent) => {
    event.dataTransfer.setData(dragType, ruleId);
    event.dataTransfer.effectAllowed = "move";
  };
  const over = (column: "in" | "out") => (event: DragEvent) => {
    if (event.dataTransfer.types.includes(dragType)) {
      event.preventDefault();
      setTarget(column);
    }
  };
  const dropOn = (column: "in" | "out") => (event: DragEvent) => {
    const ruleId = event.dataTransfer.getData(dragType);

    setTarget(null);

    if (!ruleId) return;

    event.preventDefault();
    onChange(
      column === "in"
        ? putPresetRule(ruleIds, ruleId)
        : takePresetRule(ruleIds, ruleId),
    );
  };

  return (
    /* Side by side only where both columns have room for a rule's name. */
    <div className="@container">
      <div className="grid gap-3 @2xl:grid-cols-2">
        <BoardColumn
          label="In this preset"
          count={inPreset.length}
          empty="Drag rules here, or add them from the list."
          isTarget={target === "in"}
          onDragOver={over("in")}
          onDragLeave={() => setTarget(null)}
          onDrop={dropOn("in")}
        >
          {inPreset.map((rule, index) => (
            <BoardRule
              key={rule.id}
              rule={rule}
              onDragStart={dragStart(rule.id)}
              onDrop={(ruleId) => {
                setTarget(null);
                onChange(putPresetRule(ruleIds, ruleId, index));
              }}
              actions={
                <>
                  <Button
                    type="button"
                    variant="ghost"
                    size="icon-sm"
                    aria-label={`Move ${rule.name} up`}
                    disabled={index === 0}
                    onClick={() =>
                      onChange(shiftPresetRule(ruleIds, rule.id, -1))
                    }
                  >
                    <AppIcon icon={appIcons.actions.moveUp} />
                  </Button>
                  <Button
                    type="button"
                    variant="ghost"
                    size="icon-sm"
                    aria-label={`Move ${rule.name} down`}
                    disabled={index === inPreset.length - 1}
                    onClick={() =>
                      onChange(shiftPresetRule(ruleIds, rule.id, 1))
                    }
                  >
                    <AppIcon icon={appIcons.actions.moveDown} />
                  </Button>
                  <Button
                    type="button"
                    variant="ghost"
                    size="icon-sm"
                    aria-label={`Take ${rule.name} out`}
                    onClick={() => onChange(takePresetRule(ruleIds, rule.id))}
                  >
                    <AppIcon icon={appIcons.actions.clear} />
                  </Button>
                </>
              }
            />
          ))}
        </BoardColumn>
        <BoardColumn
          label="Add rules"
          count={toAdd.length}
          empty="Every rule is in this preset."
          isTarget={target === "out"}
          onDragOver={over("out")}
          onDragLeave={() => setTarget(null)}
          onDrop={dropOn("out")}
        >
          {toAdd.map((rule) => (
            <BoardRule
              key={rule.id}
              rule={rule}
              onDragStart={dragStart(rule.id)}
              actions={
                <Button
                  type="button"
                  variant="ghost"
                  size="icon-sm"
                  aria-label={`Add ${rule.name}`}
                  onClick={() => onChange(putPresetRule(ruleIds, rule.id))}
                >
                  <AppIcon icon={appIcons.actions.create} />
                </Button>
              }
            />
          ))}
        </BoardColumn>
      </div>
    </div>
  );
};
