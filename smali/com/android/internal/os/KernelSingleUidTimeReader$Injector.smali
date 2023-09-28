# classes4.dex

.class public Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSingleUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native addDeltaForTest(IJJ[[JJ)Z
.end method

.method private static native addDeltaFromBpf(IJJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)Z
    .registers 13

    iget-wide v1, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    if-eqz p5, :cond_7

    iget-wide v3, p5, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    goto :goto_9

    :cond_7
    const-wide/16 v3, 0x0

    :goto_9
    move-wide v5, v3

    move v0, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaFromBpf(IJJJ)Z

    move-result v0

    return v0
.end method

.method public addDeltaForTest(ILcom/android/internal/os/LongArrayMultiStateCounter;J[[JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)Z
    .registers 15

    iget-wide v1, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    if-eqz p6, :cond_7

    iget-wide v3, p6, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    goto :goto_9

    :cond_7
    const-wide/16 v3, 0x0

    :goto_9
    move-wide v6, v3

    move v0, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaForTest(IJJ[[JJ)Z

    move-result v0

    return v0
.end method

.method public native readBpfData(I)[J
.end method

.method public readData(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0
.end method
