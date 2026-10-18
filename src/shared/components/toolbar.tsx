import { mergeProps } from "@base-ui/react/merge-props";
import { useRender } from "@base-ui/react/use-render";
import {
  Children,
  Fragment,
  isValidElement,
  type ComponentProps,
  type ReactElement,
  type ReactNode,
} from "react";

import { cn } from "@/shared/utils/cn";

type ToolbarProps = Omit<useRender.ComponentProps<"div">, "children"> & {
  /* Full-width rows under the controls, such as a row of filter pills. */
  children?: ReactNode;
  /* The search field: the one control that stretches to fill the line. */
  search?: ReactNode;
  /*
   * The controls after the search, each item one group (filters, a sort, a
   * mode switch) at its own width, with a hairline between groups. Items of
   * a fragment count one by one; wrap several controls in a `ToolbarGroup`
   * to keep them together.
   */
  trailing?: ReactNode;
};

/*
 * One group of controls on the toolbar's line, with the hairline before it
 * (v3 `.vsep`). The toolbar hides the hairline of whatever starts a line, so
 * a hairline only ever sits between two groups. Phones drop the hairlines and
 * keep a plain gap.
 */
export const ToolbarGroup = ({
  children,
  className,
}: {
  children: ReactNode;
  className?: string;
}) => {
  return (
    <div
      data-slot="toolbar-group"
      className={cn(
        "relative flex max-w-full min-w-0 flex-[0_1_auto] items-center gap-2 self-stretch pl-2 sm:pl-7",
        "sm:before:bg-line before:hidden sm:before:absolute sm:before:inset-y-2 sm:before:left-3.5 sm:before:block sm:before:w-px",
        className,
      )}
    >
      {children}
    </div>
  );
};

const isToolbarGroup = (node: ReactNode): node is ReactElement =>
  isValidElement(node) && node.type === ToolbarGroup;

const getTrailingGroups = (trailing: ReactNode) => {
  const items =
    isValidElement<{ children?: ReactNode }>(trailing) &&
    trailing.type === Fragment
      ? trailing.props.children
      : trailing;

  return Children.toArray(items).map((item, index) =>
    isToolbarGroup(item) ? (
      item
    ) : (
      <ToolbarGroup key={isValidElement(item) ? item.key : index}>
        {item}
      </ToolbarGroup>
    ),
  );
};

/*
 * The toolbar card (v3 `.toolbar`), its corner following the pills inside it
 * (a 48px field's half height plus the padding): the search, then each group of controls
 * at its own width with a hairline between groups, wrapping on narrow
 * screens; the search fills whatever the controls leave (never narrower
 * than 220px: the controls wrap first) and takes the whole first row on
 * phones. Each group carries its hairline on its left, and the
 * line sits a hairline's space to the left of the card's clip, so the
 * hairline of a group that starts a line is never seen. It counts as a card,
 * so fields and secondary buttons inside take the inset fill. Wrap a filter
 * form in it with `render={<form />}`.
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
      "bg-surface text-ink shadow-card grid min-w-0 gap-y-2.5 overflow-hidden rounded-[34px] p-2.5",
      className,
    ),
    children: (
      <>
        <div className="-ml-2 flex min-w-0 flex-wrap items-center gap-y-2.5 sm:-ml-7">
          {search ? (
            <div className="flex min-w-0 flex-[1_1_100%] items-center pl-2 *:min-w-0 *:flex-1 sm:min-w-62 sm:flex-[1_1_220px] sm:pl-7">
              {search}
            </div>
          ) : null}
          {getTrailingGroups(trailing)}
        </div>
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
