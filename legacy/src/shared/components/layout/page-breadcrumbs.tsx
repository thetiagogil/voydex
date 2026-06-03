"use client";

import { Icon } from "@/shared/components/icon";
import type { Breadcrumb } from "@/shared/types";
import Link from "next/link";
import { Fragment } from "react";

type PageBreadcrumbsProps = {
  items?: Breadcrumb[];
}

export const PageBreadcrumbs = ({ items }: PageBreadcrumbsProps) => {
  if (!items || items.length <= 1) {
    return null;
  }

  return (
    <nav
      className="text-muted-foreground mb-4 hidden items-center space-x-1 text-sm sm:flex"
      aria-label="Breadcrumb"
    >
      {items.map((item, index) => (
        <Fragment key={item.href}>
          {index > 0 && <Icon type="rightArrow" className="mx-1" />}
          {item.current ? (
            <span
              className="text-foreground truncate font-medium"
              aria-current="page"
            >
              {item.label}
            </span>
          ) : (
            <Link
              href={item.href}
              className="hover:text-foreground truncate transition-colors"
            >
              {item.label}
            </Link>
          )}
        </Fragment>
      ))}
    </nav>
  );
};
