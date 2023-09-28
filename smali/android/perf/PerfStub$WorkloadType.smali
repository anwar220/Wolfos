# classes3.dex

.class public Landroid/perf/PerfStub$WorkloadType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/perf/PerfStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkloadType"
.end annotation


# static fields
.field public static final APP:I = 0x1

.field public static final BROWSER:I = 0x3

.field public static final GAME:I = 0x2

.field public static final NOT_KNOWN:I = 0x0

.field public static final PREPROAPP:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
