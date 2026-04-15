import { errorResponse, jsonResponse } from "@/lib/api/route";
import { signOut } from "@/features/auth/server/auth";

export async function POST() {
  try {
    const { error } = await signOut();
    if (error) return errorResponse(error, 400);
    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error, 503);
  }
}
