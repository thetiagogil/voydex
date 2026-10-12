"use client";

import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

export type SegmentedControlOption<TValue extends string> = {
  count?: number | string;
  icon?: ReactNode;
  label: string;
  value: TValue;
};

type SegmentedControlProps<TValue extends string> = {
  ariaLabel: string;
  className?: string;
  onValueChange: (value: TValue) => void;
  options: readonly SegmentedControlOption<TValue>[];
  value: TValue;
  /*
   * `pills`: separate cream pills, for filters. `segment`: one inset track,
   * for a switch between modes. Both share the one selected style: the soft
   * tint of the context colour with deep ink.
   */
  variant?: "pills" | "segment";
};

export const SegmentedControl = <TValue extends string>({
  ariaLabel,
  className,
  onValueChange,
  options,
  value,
  variant = "pills",
}: SegmentedControlProps<TValue>) => {
  return (
    <div
      role="group"
      aria-label={ariaLabel}
      className={cn(
        "inline-flex max-w-full items-center",
        variant === "pills"
          ? "flex-wrap gap-1.5"
          : "bg-surface-2 gap-0.5 rounded-full p-1",
        className,
      )}
    >
      {options.map((option) => {
        const isSelected = option.value === value;

        return (
          <button
            key={option.value}
            type="button"
            aria-pressed={isSelected}
            onClick={() => onValueChange(option.value)}
            className={cn(
              "text-14 inline-flex h-10 items-center gap-2 rounded-full px-4 font-bold whitespace-nowrap transition-colors [&_svg]:size-4",
              variant === "pills" && !isSelected && "bg-surface",
              variant === "segment" && "h-9 px-3.5",
              isSelected
                ? "bg-select-soft text-select-ink font-extrabold"
                : "text-ink-2 hover:text-ink hover:bg-hover",
            )}
          >
            {option.icon}
            {option.label}
            {option.count !== undefined ? (
              <small
                className={cn(
                  "text-[12.5px] font-bold tabular-nums",
                  isSelected ? "text-select-ink/80" : "text-ink-3",
                )}
              >
                {option.count}
              </small>
            ) : null}
          </button>
        );
      })}
    </div>
  );
};
