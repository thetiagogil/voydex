import { cookies } from "next/headers";

const AUTH_EMAIL_COOKIE_NAME = "voydex-auth-email";

/*
 * The email someone just typed, kept for half an hour in an HTTP-only cookie
 * so the next page can say where the link went ("We sent a link to …"), send
 * it again, or fill the field back in after a failed try. It never goes in a
 * URL. Server Actions only: a page can read it but not set it.
 */
export const rememberAuthEmail = async (email: string) => {
  const cookieStore = await cookies();

  cookieStore.set(AUTH_EMAIL_COOKIE_NAME, email, {
    httpOnly: true,
    maxAge: 60 * 30,
    path: "/",
    sameSite: "lax",
    secure: process.env.NODE_ENV === "production",
  });
};

export const forgetAuthEmail = async () => {
  const cookieStore = await cookies();

  cookieStore.delete(AUTH_EMAIL_COOKIE_NAME);
};

/* The remembered email, or null. Only shape-checked: it is shown back to the person who typed it. */
export const readAuthEmail = async (): Promise<string | null> => {
  const cookieStore = await cookies();
  const value = cookieStore.get(AUTH_EMAIL_COOKIE_NAME)?.value?.trim();

  return value && value.length <= 320 && value.includes("@") ? value : null;
};
