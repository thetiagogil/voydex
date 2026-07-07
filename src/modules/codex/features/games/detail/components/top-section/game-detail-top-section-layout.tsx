"use client";

import type { CSSProperties, ReactNode } from "react";
import { useEffect, useRef, useState } from "react";

type GameDetailTopSectionLayoutProps = {
  children: ReactNode;
  cover: ReactNode;
  labelledBy: string;
};

type GameDetailTopSectionLayoutStyle = CSSProperties & {
  "--game-detail-info-height": string;
};

export const GameDetailTopSectionLayout = ({
  children,
  cover,
  labelledBy,
}: GameDetailTopSectionLayoutProps) => {
  const infoRef = useRef<HTMLDivElement>(null);
  const [infoHeight, setInfoHeight] = useState<number | null>(null);

  useEffect(() => {
    const infoElement = infoRef.current;

    if (!infoElement) {
      return;
    }

    const updateInfoHeight = () => {
      const nextHeight = Math.ceil(infoElement.getBoundingClientRect().height);

      setInfoHeight((currentHeight) =>
        currentHeight === nextHeight ? currentHeight : nextHeight,
      );
    };

    updateInfoHeight();

    if (!("ResizeObserver" in window)) {
      return;
    }

    const resizeObserver = new ResizeObserver(updateInfoHeight);
    resizeObserver.observe(infoElement);

    return () => {
      resizeObserver.disconnect();
    };
  }, []);

  const style: GameDetailTopSectionLayoutStyle = {
    "--game-detail-info-height": infoHeight ? `${infoHeight}px` : "18rem",
  };

  return (
    <section
      aria-labelledby={labelledBy}
      className="grid w-full min-w-0 gap-4 md:grid-cols-[auto_minmax(0,1fr)] md:items-start"
      style={style}
    >
      <div className="min-w-0 md:h-(--game-detail-info-height) md:min-h-0">
        {cover}
      </div>

      <div ref={infoRef} className="min-w-0">
        {children}
      </div>
    </section>
  );
};
