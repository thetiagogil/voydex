import { getPlayTrackingItems } from "@/features/play/server/play-tracking";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseOptionalInt,
  parseRequiredInt,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; categoryId: string }> },
) {
  try {
    const { id: playId, categoryId: categoryIdStr } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const categoryId = parseRequiredInt(categoryIdStr, "category id");
    if (categoryId.error) return categoryId.error;

    const versionGroupId = parseOptionalInt(
      request.nextUrl.searchParams.get("versionGroupId"),
      "version group id",
    );
    if (versionGroupId.error) return versionGroupId.error;

    const { data, error } = await getPlayTrackingItems(
      playId,
      categoryId.data,
      versionGroupId.data,
    );

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
