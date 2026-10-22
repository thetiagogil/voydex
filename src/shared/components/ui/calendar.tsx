"use client";

import * as React from "react";
import { DayPicker, type DropdownProps } from "react-day-picker";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";
import { cn } from "@/shared/utils/cn";

/*
 * The month and the year are the same quiet select as a toolbar's: the
 * calendar hands over its options and takes the pick back as a change event.
 */
const CalendarDropdown = ({
  "aria-label": ariaLabel,
  disabled,
  onChange,
  options = [],
  value,
}: DropdownProps) => {
  const current = String(value ?? "");

  return (
    <Select
      disabled={disabled}
      value={current}
      onValueChange={(next) => {
        if (typeof next === "string") {
          onChange?.({
            target: { value: next },
          } as React.ChangeEvent<HTMLSelectElement>);
        }
      }}
    >
      <SelectTrigger
        aria-label={ariaLabel}
        className="text-15 w-auto"
        size="sm"
        variant="ghost"
      >
        <SelectValue>
          {(selected) =>
            options.find((option) => String(option.value) === selected)
              ?.label ?? current
          }
        </SelectValue>
      </SelectTrigger>
      <SelectContent className="min-w-0">
        <SelectGroup>
          {options.map((option) => (
            <SelectItem
              key={option.value}
              disabled={option.disabled}
              value={String(option.value)}
            >
              {option.label}
            </SelectItem>
          ))}
        </SelectGroup>
      </SelectContent>
    </Select>
  );
};

const CalendarNavButton = ({
  className,
  ...props
}: React.ComponentProps<"button">) => (
  <Button
    {...(props as React.ComponentProps<typeof Button>)}
    className={cn(
      "aria-disabled:pointer-events-none aria-disabled:opacity-40",
      className,
    )}
    size="icon-sm"
    variant="ghost"
  />
);

const CalendarChevron = ({
  orientation,
}: {
  orientation?: "up" | "down" | "left" | "right";
}) => (
  <AppIcon
    icon={
      orientation === "left" ? appIcons.actions.previous : appIcons.actions.next
    }
    size="lg"
  />
);

const dayButtonClassName =
  "text-15 flex size-11 items-center justify-center rounded-full font-bold transition-colors lg:size-10 hover:bg-hover focus-ring-inset in-data-outside:text-ink-3 in-data-disabled:pointer-events-none in-data-disabled:opacity-40 in-data-today:border-[1.5px] in-data-today:border-line in-data-selected:bubble in-data-selected:border-transparent in-data-selected:bg-select-soft in-data-selected:text-select-ink";

/*
 * A day's name for screen readers: "Wednesday, May 7, 2025", the day number
 * as a word of its own so the name holds the number the button shows.
 */
const formatDayName = (date: Date) =>
  new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "long",
    weekday: "long",
    year: "numeric",
  }).format(date);

/*
 * The one calendar (shadcn's Calendar on react-day-picker, restyled): a
 * 7-column month with the month and year as quiet selects and arrows to
 * step. The picked day is the selected tint in a white band, today a
 * hairline ring. 44px days on phones and tablets, 40px from 1024px.
 */
export const Calendar = ({
  className,
  classNames,
  components,
  formatters,
  labels,
  ...props
}: React.ComponentProps<typeof DayPicker>) => (
  <DayPicker
    animate={false}
    captionLayout="dropdown"
    className={cn("w-fit", className)}
    classNames={{
      root: "w-fit",
      months: "relative flex flex-col gap-2",
      month: "flex flex-col gap-2",
      nav: "absolute top-0 right-0 flex h-10 items-center gap-1",
      button_previous: "size-9",
      button_next: "size-9",
      month_caption: "flex h-10 items-center",
      dropdowns: "flex items-center gap-1",
      dropdown_root: "relative",
      month_grid: "w-full border-collapse",
      weekdays: "flex",
      weekday:
        "text-13 text-ink-3 flex size-11 items-center justify-center font-bold lg:size-10",
      week: "mt-1 flex w-full",
      day: "relative flex size-11 items-center justify-center p-0 text-center lg:size-10",
      day_button: dayButtonClassName,
      ...classNames,
    }}
    components={{
      Chevron: CalendarChevron,
      Dropdown: CalendarDropdown,
      NextMonthButton: CalendarNavButton,
      PreviousMonthButton: CalendarNavButton,
      ...components,
    }}
    formatters={{
      formatMonthDropdown: (month) =>
        month.toLocaleString("en", { month: "short" }),
      formatWeekdayName: (weekday) =>
        weekday.toLocaleString("en", { weekday: "narrow" }),
      ...formatters,
    }}
    labels={{
      labelDayButton: (date, modifiers) =>
        `${modifiers.today ? "Today, " : ""}${formatDayName(date)}${modifiers.selected ? ", selected" : ""}`,
      labelGridcell: (date, modifiers) =>
        `${modifiers?.today ? "Today, " : ""}${formatDayName(date)}`,
      ...labels,
    }}
    showOutsideDays
    {...props}
  />
);
