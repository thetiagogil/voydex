"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { Button } from "@/shared/components/ui/button";
import { Calendar } from "@/shared/components/ui/calendar";
import {
  Popover,
  PopoverContent,
  PopoverTitle,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { selectTriggerVariants } from "@/shared/components/ui/select";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import {
  formatCalendarDay,
  parseCalendarDay,
  toCalendarDay,
} from "@/shared/utils/calendar-day";
import { cn } from "@/shared/utils/cn";

type DatePickerProps = {
  className?: string;
  /* Lets the day be taken back out; on by default. */
  clearable?: boolean;
  disabled?: boolean;
  id?: string;
  /* What the field is, such as "Started on": its name and the sheet's title. */
  label: string;
  /* The last day that can be picked, "YYYY-MM-DD". */
  max?: string;
  /* The first day that can be picked, "YYYY-MM-DD". */
  min?: string;
  /* The picked day as "YYYY-MM-DD", or "" when there is none. */
  onValueChange: (value: string) => void;
  /* What the field says while no day is picked. */
  placeholder?: string;
  value: string;
};

/*
 * The one date field in Voydex, for a calendar day ("YYYY-MM-DD") that may be
 * empty. The field reads like a select; it opens a calendar in a popover
 * from 1024px up and in a bottom sheet below, with Today and Clear beside it.
 * Picking a day closes it and hands focus back to the field.
 */
export const DatePicker = ({
  className,
  clearable = true,
  disabled = false,
  id,
  label,
  max,
  min,
  onValueChange,
  placeholder = "Not set",
  value,
}: DatePickerProps) => {
  const isBottomSheet = useBottomSheetLayout();
  const [isOpen, setIsOpen] = useState(false);
  const selected = parseCalendarDay(value);
  const earliest = parseCalendarDay(min);
  const latest = parseCalendarDay(max);
  const valueText = formatCalendarDay(value, placeholder);
  const today = new Date();
  const todayDay = toCalendarDay(today);
  const isTodayPickable =
    (!min || todayDay >= min) && (!max || todayDay <= max);

  const pick = (day: string) => {
    onValueChange(day);
    setIsOpen(false);
  };

  const trigger = (
    <button
      id={id}
      type="button"
      aria-label={`${label}: ${valueText}`}
      data-placeholder={selected ? undefined : ""}
      data-size="default"
      disabled={disabled}
      className={cn(selectTriggerVariants(), "w-full", className)}
    >
      <span className="line-clamp-1 flex-1 text-left">{valueText}</span>
      <AppIcon icon={appIcons.product.date} className="text-ink-3" />
    </button>
  );

  const picker = (
    <div className="flex flex-col items-center gap-3">
      <Calendar
        mode="single"
        required={false}
        selected={selected}
        defaultMonth={selected}
        disabled={[
          ...(earliest ? [{ before: earliest }] : []),
          ...(latest ? [{ after: latest }] : []),
        ]}
        startMonth={earliest}
        endMonth={
          latest ??
          new Date(
            Math.max(today.getFullYear(), selected?.getFullYear() ?? 0),
            11,
          )
        }
        onSelect={(day) => {
          if (day) {
            pick(toCalendarDay(day));
          }
        }}
      />
      <div className="flex w-full gap-2 *:flex-1">
        {clearable ? (
          <Button
            type="button"
            variant="secondary"
            disabled={!selected}
            onClick={() => pick("")}
          >
            Clear
          </Button>
        ) : null}
        <Button
          type="button"
          variant="secondary"
          disabled={!isTodayPickable}
          onClick={() => pick(todayDay)}
        >
          Today
        </Button>
      </div>
    </div>
  );

  if (isBottomSheet) {
    return (
      <BottomSheet
        open={isOpen}
        onOpenChange={setIsOpen}
        title={label}
        trigger={trigger}
      >
        {picker}
      </BottomSheet>
    );
  }

  return (
    <Popover open={isOpen} onOpenChange={setIsOpen}>
      <PopoverTrigger render={trigger} disabled={disabled} />
      <PopoverContent align="start" className="w-fit gap-0 p-4">
        <PopoverTitle className="sr-only">{label}</PopoverTitle>
        {picker}
      </PopoverContent>
    </Popover>
  );
};
