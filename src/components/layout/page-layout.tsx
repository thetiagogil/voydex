import { PageBreadcrumbs } from "@/components/layout/page-breadcrumbs";
import { type PageContainerWidth } from "@/lib/constants/layout";
import { ReactNode } from "react";
import { BgImage } from "../shared/bg-image";
import { Loading } from "../shared/loading";
import { PageContainer } from "./page-container";
import { PageNavbar } from "./page-navbar";

interface PageLayoutProps {
  children: ReactNode;
  className?: string;
  width?: PageContainerWidth;
  showNavigation?: boolean;
  isLoading?: boolean;
}

export const PageLayout = ({
  children,
  className,
  width = "xl",
  showNavigation = true,
  isLoading = false,
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
          <PageContainer className={className} width={width}>
            {isLoading ? (
              <Loading />
            ) : (
              <>
                <PageBreadcrumbs />
                {children}
              </>
            )}
          </PageContainer>
        </main>
      </div>
    </div>
  );
};
