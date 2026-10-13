import { mergeProps } from "@base-ui/react/merge-props";
import { useRender } from "@base-ui/react/use-render";
import type { ComponentProps, ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type ToolbarProps = Omit<useRender.ComponentProps<"div">, "children"> & {
  /* Rows after the search line, such as filter pills. */
  children?: ReactNode;
  /* The search field; it grows and takes the whole first row on phones. */
  search?: ReactNode;
  /* Quiet selects or pills after the hairline divider. */
  trailing?: ReactNode;
};

/*
 * The hairline between the search and what follows (v3 `.vsep`). Hidden on
 * phones, where the toolbar wraps.
 */
export const ToolbarDivider = ({ className }: { className?: string }) => {
  return (
    <span
      aria-hidden
      data-slot="toolbar-divider"
      className={cn(
        "bg-line my-2 hidden w-px self-stretch sm:block",
        className,
      )}
    />
  );
};

/*
 * The toolbar card (v3 `.toolbar`): a search slot, a hairline and a trailing
 * slot, wrapping on narrow screens. It counts as a card, so fields and
 * secondary buttons inside take the inset fill. Wrap a filter form in it with
 * `render={<form />}`, or put a `BrowseFilterPanel variant="bare"
 * className="contents"` in a slot.
 */
export const Toolbar = ({
  children,
  className,
  render,
  search,
  trailing,
  ...props
}: ToolbarProps) => {
  const ownProps: ComponentProps<"div"> & { "data-slot": string } = {
    "data-slot": "card",
    className: cn(
      "bg-surface text-ink shadow-card flex min-w-0 flex-wrap items-center gap-2 rounded-xl p-2.5 sm:gap-x-3.5 sm:gap-y-2.5",
      className,
    ),
    children: (
      <>
        {search ? (
          <div className="flex min-w-0 flex-[1_1_100%] items-center sm:flex-[1_1_220px] [&>*]:min-w-0 [&>*]:flex-1">
            {search}
          </div>
        ) : null}
        {search && trailing ? <ToolbarDivider /> : null}
        {trailing ? (
          <div className="flex min-w-0 flex-wrap items-center gap-2">
            {trailing}
          </div>
        ) : null}
        {children}
      </>
    ),
  };

  return useRender({
    defaultTagName: "div",
    props: mergeProps<"div">(ownProps, props),
    render,
  });
};
