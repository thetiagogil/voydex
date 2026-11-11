"use client";

import { useRouter } from "next/navigation";

/*
 * A sign-in form's action: runs in the browser, then opens the address it
 * answers with (the next page, or the form again with its reason). The form
 * stays pending, its button saying what it's doing, until that page is on
 * its way.
 */
export const useAuthFormAction = (
  action: (formData: FormData) => Promise<string>,
) => {
  const router = useRouter();

  return async (formData: FormData) => {
    router.push(await action(formData));
  };
};
