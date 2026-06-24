"use client";

import {
  ProtectedErrorPage,
  type ProtectedErrorPageProps,
} from "@/features/system/components/protected-error-page";

export default function Error(props: ProtectedErrorPageProps) {
  return <ProtectedErrorPage {...props} />;
}
