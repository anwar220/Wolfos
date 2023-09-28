# classes4.dex

.class public Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsLogWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(IIJJJJJJ)V
    .registers 15

    invoke-static/range {p1 .. p14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJJJJJ)V

    return-void
.end method
