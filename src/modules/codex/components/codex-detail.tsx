import type { ComponentProps, ReactNode } from "react";
import { ArrowLeftIcon, ArrowRightIcon } from "lucide-react";
import Link from "next/link";
import { cn } from "@/lib/utils";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type CodexBackLinkProps = {
  children: ReactNode;
  href: string;
};

export const CodexBackLink = ({ children, href }: CodexBackLinkProps) => {
  return (
    <div>
      <Link
        href={href}
        className={buttonVariants({ variant: "ghost", size: "sm" })}
      >
        <ArrowLeftIcon data-icon="inline-start" aria-hidden />
        {children}
      </Link>
    </div>
  );
};

type CodexDetailHeroProps = {
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  media?: ReactNode;
  mediaClassName?: string;
};

export const CodexDetailHero = ({
  children,
  className,
  contentClassName,
  media,
  mediaClassName,
}: CodexDetailHeroProps) => {
  return (
    <Card className={cn("bg-card/82", className)}>
      <CardContent
        className={cn(
          "grid gap-6 lg:items-center",
          media ? "lg:grid-cols-[16rem_minmax(0,1fr)]" : "lg:grid-cols-1",
          contentClassName,
        )}
      >
        {media ? (
          <div className={cn("min-w-0", mediaClassName)}>{media}</div>
        ) : null}
        <div className="min-w-0">{children}</div>
      </CardContent>
    </Card>
  );
};

type CodexSectionCardProps = {
  children: ReactNode;
  className?: string;
  contentClassName?: string;
  description?: ReactNode;
  media?: ReactNode;
  title: ReactNode;
};

export const CodexSectionCard = ({
  children,
  className,
  contentClassName,
  description,
  media,
  title,
}: CodexSectionCardProps) => {
  return (
    <Card className={cn("bg-card/82", className)}>
      {media ? <div className="px-(--card-spacing)">{media}</div> : null}
      <CardHeader>
        <CardTitle>{title}</CardTitle>
        {description ? <CardDescription>{description}</CardDescription> : null}
      </CardHeader>
      <CardContent className={contentClassName}>{children}</CardContent>
    </Card>
  );
};

export const CodexInfoGrid = ({
  className,
  ...props
}: ComponentProps<"div">) => {
  return (
    <div className={cn("grid gap-3 sm:grid-cols-2", className)} {...props} />
  );
};

type CodexInfoTileProps = {
  children: ReactNode;
  className?: string;
  label: ReactNode;
};

export const CodexInfoTile = ({
  children,
  className,
  label,
}: CodexInfoTileProps) => {
  return (
    <div
      className={cn(
        "bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1",
        className,
      )}
    >
      <div className="text-muted-foreground text-xs">{label}</div>
      <div className="mt-1 font-medium">{children}</div>
    </div>
  );
};

export const CodexInlineEmpty = ({ children }: { children: ReactNode }) => {
  return <p className="text-muted-foreground text-sm">{children}</p>;
};

type CodexLinkedPanelProps = {
  children: ReactNode;
  className?: string;
  href: string;
  showArrow?: boolean;
};

export const CodexLinkedPanel = ({
  children,
  className,
  href,
  showArrow = true,
}: CodexLinkedPanelProps) => {
  return (
    <Link
      href={href}
      className={cn(
        "bg-background/42 ring-app-surface-border group hover:bg-muted/45 focus-visible:ring-ring focus-visible:ring-offset-background flex gap-3 rounded-lg p-3 text-sm ring-1 transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
        className,
      )}
    >
      <div className="min-w-0 flex-1">{children}</div>
      {showArrow ? (
        <ArrowRightIcon
          className="text-muted-foreground mt-0.5 size-4 shrink-0 transition-transform group-hover:translate-x-0.5"
          aria-hidden
        />
      ) : null}
    </Link>
  );
};
