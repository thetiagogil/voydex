"use client";

import { useEffect, useRef, useState } from "react";

import { Button } from "@/shared/components/ui/button";

type LoadMoreTriggerProps = {
  /* The fallback button's text, for browsers without IntersectionObserver. */
  label: string;
  onLoadMore: () => void;
};

/*
 * Sits under a long list that grows as you scroll: once it nears the view it
 * asks for the next batch. Without IntersectionObserver it is a button.
 * Render it only while there is more to show.
 */
export const LoadMoreTrigger = ({
  label,
  onLoadMore,
}: LoadMoreTriggerProps) => {
  const triggerRef = useRef<HTMLDivElement | null>(null);
  const [supportsAutomaticLoading, setSupportsAutomaticLoading] =
    useState(true);

  useEffect(() => {
    if (!("IntersectionObserver" in window)) {
      const fallbackTimer = setTimeout(() => {
        setSupportsAutomaticLoading(false);
      }, 0);

      return () => {
        clearTimeout(fallbackTimer);
      };
    }

    const trigger = triggerRef.current;

    if (!trigger) {
      return;
    }

    const observer = new IntersectionObserver(
      (entries) => {
        if (entries.some((entry) => entry.isIntersecting)) {
          onLoadMore();
        }
      },
      { rootMargin: "900px 0px", threshold: 0 },
    );

    observer.observe(trigger);

    return () => {
      observer.disconnect();
    };
  }, [onLoadMore]);

  return supportsAutomaticLoading ? (
    <div ref={triggerRef} className="h-px" aria-hidden />
  ) : (
    <div className="flex justify-center">
      <Button type="button" variant="secondary" onClick={onLoadMore}>
        {label}
      </Button>
    </div>
  );
};
