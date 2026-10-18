"use client";

import { createContext, useContext, type ReactNode } from "react";

const PageHeadToolContext = createContext<ReactNode>(null);

/*
 * Hands a page head (`PageHeader`) one extra control from the page around
 * it, such as the button that folds a list's search and filter bar, so it
 * sits in the head's own action row even when the head is built elsewhere.
 */
export const PageHeadToolProvider = ({
  children,
  tool,
}: {
  children: ReactNode;
  tool: ReactNode;
}) => (
  <PageHeadToolContext.Provider value={tool}>
    {children}
  </PageHeadToolContext.Provider>
);

/* The handed control, where the page head draws it; nothing without one. */
export const PageHeadTool = () => useContext(PageHeadToolContext);
