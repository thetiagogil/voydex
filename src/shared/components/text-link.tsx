import Link from "next/link";
import type { ComponentProps, ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type TextLinkBaseProps = {
  /*
   * `back` leads with an arrow back (to the list a page came from); `forward`
   * ends with one (onward, such as "Open team").
   */
  arrow?: "back" | "forward";
  children: ReactNode;
  className?: string;
  /*
   * A link on its own line, at least 36px tall with room for an icon. On by
   * default with an arrow; without it the link sits inside a sentence.
   */
  standalone?: boolean;
  /*
   * `action` is the link green; `quiet` is secondary ink (a footer, a
   * breadcrumb); `onInk` sits on an ink tip, always underlined.
   */
  tone?: "action" | "onInk" | "quiet";
};

type TextLinkProps = TextLinkBaseProps &
  (
    | ({ href: string } & Omit<
        ComponentProps<typeof Link>,
        "children" | "className" | "href"
      >)
    | ({ href?: undefined } & Omit<
        ComponentProps<"button">,
        "children" | "className" | "type"
      >)
  );

const toneClassNames = {
  action: "font-extrabold text-link",
  onInk: "font-extrabold text-on-ink underline",
  quiet: "font-bold text-ink-2 hover:text-ink",
};

/*
 * The one text link: words that go somewhere or do one small thing, never
 * a button in disguise. Red and extrabold, underlined under the pointer.
 * Without `href` it is a button that reads as a link, such as "See all".
 */
export const TextLink = ({
  arrow,
  children,
  className,
  standalone = Boolean(arrow),
  tone = "action",
  ...props
}: TextLinkProps) => {
  const classNames = cn(
    "rounded-xs underline-offset-3 hover:underline focus-ring",
    toneClassNames[tone],
    standalone && "text-14 inline-flex min-h-9 items-center gap-1.5",
    className,
  );
  const content = (
    <>
      {arrow === "back" ? (
        <AppIcon icon={appIcons.actions.back} size="sm" aria-hidden />
      ) : null}
      {children}
      {arrow === "forward" ? (
        <AppIcon icon={appIcons.actions.continue} size="sm" aria-hidden />
      ) : null}
    </>
  );

  if (props.href !== undefined) {
    return (
      <Link {...props} className={classNames}>
        {content}
      </Link>
    );
  }

  return (
    <button
      type="button"
      {...(props as ComponentProps<"button">)}
      className={classNames}
    >
      {content}
    </button>
  );
};
