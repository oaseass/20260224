export const runtime = "nodejs";

// 타입 충돌을 피하기 위해 명칭 변경: Insight -> FortuneInsight
type FortuneInsight = { title: string; detail: string };

export async function POST(req: Request) {
  // 간단한 더미 응답(빌드/런타임 확인용)
  const insights: FortuneInsight[] = [
    { title: "예시", detail: "더미 인사이트" },
  ];

  const response = {
    reportId: `temp-${Date.now()}`,
    summary: "통합 통계 리포트(예시): 당신은 신중하고 결단력 있는 성향입니다.",
    details: { personality: "신중·결단", compatibilityScore: 72 },
    insights,
  };

  return new Response(JSON.stringify(response), {
    status: 200,
    headers: { "Content-Type": "application/json" },
  });
}
