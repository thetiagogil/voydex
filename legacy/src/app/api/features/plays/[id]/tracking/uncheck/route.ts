import { uncheckTrackingItem } from "@/features/play/server/play-tracking";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const trackingItemId = parseRequiredInt(
      request.nextUrl.searchParams.get("trackingItemId"),
      "tracking item id",
    );
    if (trackingItemId.error) return trackingItemId.error;

    const result = await uncheckTrackingItem(playId, trackingItemId.data);

    if (result.error) return errorResponse(result.error);

    return jsonResponse({ success: true });
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
