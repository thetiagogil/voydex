import { errorResponse, jsonResponse } from "@/lib/api/route";
import { getTypes } from "@/shared/server/reference/types";

export async function GET() {
  try {
    const { data, error } = await getTypes();

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
