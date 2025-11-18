import { getPlayProgressItems } from "@/services/gameplay/play-progress-items";
import { NextResponse } from "next/server";

export async function GET(
  req: Request,
  { params }: { params: { id: string; categoryId: string } },
) {
  const playId = params.id;
  const categoryId = Number(params.categoryId);
  if (Number.isNaN(categoryId)) {
    return NextResponse.json({ error: "Invalid category id" }, { status: 400 });
  }

  const { data, error } = await getPlayProgressItems(playId, categoryId);
  if (error) {
    return NextResponse.json(
      { error: error.message || String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
