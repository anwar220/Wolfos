# classes4.dex

.class public Lcom/android/internal/os/ProcTimeInStateReader;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcTimeInStateReader"

.field private static final TIME_IN_STATE_HEADER_LINE_FORMAT:[I

.field private static final TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

.field private static final TIME_IN_STATE_LINE_TIME_FORMAT:[I


# instance fields
.field private mFrequenciesKhz:[J

.field private mTimeInStateTimeFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    return-void

    :array_1a
    .array-data 4
        0x2020
        0xa
    .end array-data

    :array_22
    .array-data 4
        0x20
        0x200a
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->initializeTimeInStateFormat(Ljava/nio/file/Path;)V

    return-void
.end method

.method private initializeTimeInStateFormat(Ljava/nio/file/Path;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v10, v0

    :goto_13
    array-length v0, v7

    if-ge v1, v0, :cond_42

    aget-byte v0, v7, v1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v8, v0}, Landroid/util/IntArray;->addAll([I)V

    invoke-virtual {v9, v0}, Landroid/util/IntArray;->addAll([I)V

    goto :goto_33

    :cond_27
    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    invoke-virtual {v8, v0}, Landroid/util/IntArray;->addAll([I)V

    sget-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    invoke-virtual {v9, v0}, Landroid/util/IntArray;->addAll([I)V

    add-int/lit8 v10, v10, 0x1

    :goto_33
    array-length v0, v7

    if-ge v1, v0, :cond_3f

    aget-byte v0, v7, v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3f

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_42
    if-eqz v10, :cond_67

    new-array v11, v10, [J

    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v5, v11

    invoke-static/range {v0 .. v6}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v9}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    iput-object v11, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-void

    :cond_5f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse time_in_state file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty time_in_state file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFrequenciesKhz()[J
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-object v0
.end method

.method public getUsageTimesMillis(Ljava/nio/file/Path;)[J
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    array-length v0, v0

    new-array v0, v0, [J

    nop

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_14

    return-object v3

    :cond_14
    const/4 v2, 0x0

    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_22

    aget-wide v3, v0, v2

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_22
    return-object v0
.end method
