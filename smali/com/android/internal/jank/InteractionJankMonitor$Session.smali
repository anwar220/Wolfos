# classes4.dex

.class public Lcom/android/internal/jank/InteractionJankMonitor$Session;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final mCujType:I

.field private final mName:Ljava/lang/String;

.field private mReason:I

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mTimeStamp:J

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "J<%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string v1, "J<%s::%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_36
    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCuj()I
    .registers 2

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPerfettoTrigger()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.android.telemetry.interaction-jank-monitor-%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReason()I
    .registers 2

    iget v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    return v0
.end method

.method public getStatsdInteractionType()I
    .registers 3

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mCujType:I

    aget v0, v0, v1

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mTimeStamp:J

    return-wide v0
.end method

.method public logToStatsd()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getStatsdInteractionType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public setReason(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$Session;->mReason:I

    return-void
.end method
