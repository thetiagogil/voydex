"use client";

import * as React from "react";
import { cn } from "@/shared/utils/cn";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";

/*
 * Tables are quiet chrome (v3 `.ls-table`): small ink-3 column heads over a
 * hairline, rows between hairlines, the inset fill under the row you point
 * at. Their data keeps its colour.
 */
const Table = ({ className, ...props }: React.ComponentProps<"table">) => {
  return (
    <div
      data-slot="table-container"
      className="relative w-full overflow-x-auto"
    >
      <table
        data-slot="table"
        className={cn("text-14 w-full caption-bottom", className)}
        {...props}
      />
    </div>
  );
};

const TableHeader = ({
  className,
  ...props
}: React.ComponentProps<"thead">) => {
  return (
    <thead
      data-slot="table-header"
      className={cn(
        "[&_tr]:border-line [&_tr]:hover:bg-transparent",
        className,
      )}
      {...props}
    />
  );
};

const TableBody = ({ className, ...props }: React.ComponentProps<"tbody">) => {
  return (
    <tbody
      data-slot="table-body"
      className={cn("[&_tr:last-child]:border-0", className)}
      {...props}
    />
  );
};

const TableRow = ({ className, ...props }: React.ComponentProps<"tr">) => {
  return (
    <tr
      data-slot="table-row"
      className={cn(
        rowInteractionVariants(),
        "border-line has-aria-expanded:bg-surface-2 data-[state=selected]:bg-select-soft border-b",
        className,
      )}
      {...props}
    />
  );
};

const TableHead = ({ className, ...props }: React.ComponentProps<"th">) => {
  return (
    <th
      data-slot="table-head"
      className={cn(
        "text-12 text-ink-3 h-9 px-2.5 pb-2 text-left align-bottom font-bold whitespace-nowrap has-[[role=checkbox]]:pr-0",
        className,
      )}
      {...props}
    />
  );
};

const TableCell = ({ className, ...props }: React.ComponentProps<"td">) => {
  return (
    <td
      data-slot="table-cell"
      className={cn(
        "px-2.5 py-2.5 align-middle whitespace-nowrap has-[[role=checkbox]]:pr-0",
        className,
      )}
      {...props}
    />
  );
};

const TableCaption = ({
  className,
  ...props
}: React.ComponentProps<"caption">) => {
  return (
    <caption
      data-slot="table-caption"
      className={cn("text-13 text-ink-2 mt-4 font-semibold", className)}
      {...props}
    />
  );
};

export {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
};
