# classes3.dex

.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameMetrics$Index;,
        Landroid/view/FrameMetrics$Metric;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x2

.field public static final COMMAND_ISSUE_DURATION:I = 0x6

.field public static final DEADLINE:I = 0xd

.field public static final DRAW_DURATION:I = 0x4

.field private static final DURATIONS:[I

.field public static final FIRST_DRAW_FRAME:I = 0x9

.field public static final GPU_DURATION:I = 0xc

.field public static final INPUT_HANDLING_DURATION:I = 0x1

.field public static final INTENDED_VSYNC_TIMESTAMP:I = 0xa

.field public static final LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final SWAP_BUFFERS_DURATION:I = 0x7

.field public static final SYNC_DURATION:I = 0x5

.field public static final TOTAL_DURATION:I = 0x8

.field public static final UNKNOWN_DELAY_DURATION:I = 0x0

.field public static final VSYNC_TIMESTAMP:I = 0xb


# instance fields
.field public final mTimingData:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    return-void

    :array_a
    .array-data 4
        0x2
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0xc
        0xd
        0xe
        0xe
        0xf
        0xf
        0x14
        0x2
        0x10
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x16
        0x13
        0x2
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    return-void
.end method

.method public constructor <init>(Landroid/view/FrameMetrics;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v1, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .registers 8

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_41

    const/16 v2, 0xd

    if-le p1, v2, :cond_9

    goto :goto_41

    :cond_9
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    if-nez v2, :cond_e

    return-wide v0

    :cond_e
    const/16 v0, 0x9

    if-ne p1, v0, :cond_21

    const/4 v0, 0x0

    aget-wide v0, v2, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move-wide v2, v4

    :goto_20
    return-wide v2

    :cond_21
    const/16 v0, 0xa

    if-ne p1, v0, :cond_29

    const/4 v0, 0x2

    aget-wide v0, v2, v0

    return-wide v0

    :cond_29
    const/16 v0, 0xb

    if-ne p1, v0, :cond_31

    const/4 v0, 0x3

    aget-wide v0, v2, v0

    return-wide v0

    :cond_31
    mul-int/lit8 v0, p1, 0x2

    sget-object v1, Landroid/view/FrameMetrics;->DURATIONS:[I

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    aget-wide v3, v2, v3

    aget v1, v1, v0

    aget-wide v1, v2, v1

    sub-long/2addr v3, v1

    return-wide v3

    :cond_41
    :goto_41
    return-wide v0
.end method
