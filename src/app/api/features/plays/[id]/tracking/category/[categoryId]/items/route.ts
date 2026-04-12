import { getPlayTrackingItems } from "@/features/play/server/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string; categoryId: string }> },
) {
  try {
    const { id: playId, categoryId: categoryIdStr } = await params;
    const categoryId = parseInt(categoryIdStr, 10);

    if (!playId || isNaN(categoryId))
      return NextResponse.json(
        { error: "Missing required params" },
        { status: 400 },
      );

    const versionGroupIdStr =
      request.nextUrl.searchParams.get("versionGroupId");
    const versionGroupId = versionGroupIdStr
      ? parseInt(versionGroupIdStr, 10)
      : undefined;

    const { data, error } = await getPlayTrackingItems(
      playId,
      categoryId,
      versionGroupId,
    );

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
