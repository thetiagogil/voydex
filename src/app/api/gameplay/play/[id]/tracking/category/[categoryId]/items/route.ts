import { getPlayTrackingItems } from "@/services/gameplay/play-tracking";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  req: NextRequest,
  { params }: { params: Promise<{ id: string; categoryId: string }> },
) {
  const { id: playId, categoryId } = await params;

  if (Number.isNaN(Number(categoryId))) {
    return NextResponse.json({ error: "Invalid category id" }, { status: 400 });
  }

  const vgParam = req.nextUrl.searchParams.get("versionGroupId");
  const versionGroupId = vgParam ? Number(vgParam) : undefined;

  const { data, error } = await getPlayTrackingItems(
    playId,
    Number(categoryId),
    versionGroupId,
  );
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
