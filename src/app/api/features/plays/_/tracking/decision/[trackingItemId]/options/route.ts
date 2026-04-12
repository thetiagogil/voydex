import { getDecisionOptions } from "@/features/play/server/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ trackingItemId: string }> },
) {
  try {
    const { trackingItemId: idStr } = await params;
    const trackingItemId = parseInt(idStr, 10);

    if (isNaN(trackingItemId))
      return NextResponse.json(
        { error: "Missing tracking item id" },
        { status: 400 },
      );

    const { data, error } = await getDecisionOptions(trackingItemId);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
