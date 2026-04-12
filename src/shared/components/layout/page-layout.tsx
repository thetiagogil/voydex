import { BgImage } from "@/shared/components/bg-image";
import { PageBreadcrumbs } from "@/shared/components/layout/page-breadcrumbs";
import { Loading } from "@/shared/components/loading";
import { type PageContainerWidth } from "@/shared/constants/layout";
import type { Breadcrumb } from "@/shared/types";
import { ReactNode } from "react";
import { PageContainer } from "./page-container";
import { PageNavbar } from "./page-navbar";

interface PageLayoutProps {
  children: ReactNode;
  className?: string;
  width?: PageContainerWidth;
  showNavigation?: boolean;
  isLoading?: boolean;
  isAuthPage?: boolean;
  breadcrumbs?: Breadcrumb[];
}

export const PageLayout = ({
  children,
  className,
  width = "xl",
  showNavigation = true,
  isLoading = false,
  isAuthPage = false,
  breadcrumbs,
}: PageLayoutProps) => {
  return (
    <div className="relative min-h-screen">
      <BgImage />

      <div className="relative z-10">
        {showNavigation && (
          <header className="px-auto border-border sticky top-0 z-50 border-b backdrop-blur-xl">
            <PageNavbar width={width} />
          </header>
        )}
        <main>
          <PageContainer
            className={`${className} ${isAuthPage ? "flex items-center justify-center sm:mt-10" : ""}`}
            width={width}
          >
            {isLoading ? (
              <Loading />
            ) : (
              <>
                <PageBreadcrumbs items={breadcrumbs} />
                {children}
              </>
            )}
          </PageContainer>
        </main>
      </div>
    </div>
  );
};
