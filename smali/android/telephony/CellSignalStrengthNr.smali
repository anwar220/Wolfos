# classes3.dex

.class public final Landroid/telephony/CellSignalStrengthNr;
.super Landroid/telephony/CellSignalStrength;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthNr$SignalLevelAndReportCriteriaSource;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CellSignalStrengthNr"

.field public static final UNKNOWN_ASU_LEVEL:I = 0x63

.field public static final USE_SSRSRP:I = 0x1

.field public static final USE_SSRSRQ:I = 0x2

.field public static final USE_SSSINR:I = 0x4

.field private static final VDBG:Z

.field private static final sInvalid:Landroid/telephony/CellSignalStrengthNr;


# instance fields
.field private mCsiCqiReport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCsiCqiTableIndex:I

.field private mCsiRsrp:I

.field private mCsiRsrq:I

.field private mCsiSinr:I

.field private mLevel:I

.field private mParametersUseForLevel:I

.field private mSsRsrp:I

.field private mSsRsrpThresholds:[I

.field private mSsRsrq:I

.field private mSsRsrqThresholds:[I

.field private mSsSinr:I

.field private mSsSinrThresholds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthNr;->sInvalid:Landroid/telephony/CellSignalStrengthNr;

    new-instance v0, Landroid/telephony/CellSignalStrengthNr$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2a

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->setDefaultValues()V

    return-void

    nop

    :array_1e
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_2a
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_36
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method public constructor <init>(IIIIII)V
    .registers 16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const v4, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;III)V

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_74

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_80

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    const/16 v0, -0x8c

    const/16 v1, -0x2c

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    const/16 v2, -0x14

    const/4 v3, -0x3

    invoke-static {p2, v2, v3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    const/16 v2, -0x17

    const/16 v3, 0x17

    invoke-static {p3, v2, v3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {p4, v3, v4}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-interface {p5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/telephony/CellSignalStrengthNr$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthNr$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-static {p6, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    const/16 v0, -0x2b

    const/16 v1, 0x14

    invoke-static {p7, v0, v1}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    const/16 v0, 0x28

    invoke-static {p8, v2, v0}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    return-void

    :array_74
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_80
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_8c
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_64

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_70

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    return-void

    :array_64
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_70
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_7c
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthNr-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthNr;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_4a

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_56

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iget-object v0, p1, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iput-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    return-void

    :array_4a
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_56
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_62
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method public static flip(I)I
    .registers 2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_7

    neg-int v0, p0

    goto :goto_8

    :cond_7
    move v0, p0

    :goto_8
    return v0
.end method

.method private isLevelForParameter(I)Z
    .registers 3

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Byte;)Ljava/lang/Integer;
    .registers 5

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Landroid/telephony/CellSignalStrengthNr;->inRangeOrUnavailable(III)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private updateLevelWithMeasure(I[I)I
    .registers 4

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    goto :goto_24

    :cond_7
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_e

    const/4 v0, 0x4

    goto :goto_24

    :cond_e
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_15

    const/4 v0, 0x3

    goto :goto_24

    :cond_15
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_1c

    const/4 v0, 0x2

    goto :goto_24

    :cond_1c
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->copy()Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthNr;
    .registers 2

    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/CellSignalStrengthNr;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    if-ne v2, v3, :cond_44

    iget-object v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iget-object v3, v0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    if-ne v2, v3, :cond_44

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    if-ne v2, v3, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    nop

    :goto_45
    return v1

    :cond_46
    return v1
.end method

.method public getAsuLevel()I
    .registers 3

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_c

    const/16 v1, 0x63

    goto :goto_1b

    :cond_c
    const/16 v1, -0x8c

    if-gt v0, v1, :cond_12

    const/4 v1, 0x0

    goto :goto_1b

    :cond_12
    const/16 v1, -0x2b

    if-lt v0, v1, :cond_19

    const/16 v1, 0x61

    goto :goto_1b

    :cond_19
    add-int/lit16 v1, v0, 0x8c

    :goto_1b
    return v1
.end method

.method public getCsiCqiReport()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    return-object v0
.end method

.method public getCsiCqiTableIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    return v0
.end method

.method public getCsiRsrp()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    return v0
.end method

.method public getCsiRsrq()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    return v0
.end method

.method public getCsiSinr()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    return v0
.end method

.method public getDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    return v0
.end method

.method public getSsRsrp()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    return v0
.end method

.method public getSsRsrq()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    return v0
.end method

.method public getSsSinr()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    sget-object v0, Landroid/telephony/CellSignalStrengthNr;->sInvalid:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDefaultValues()V
    .registers 3

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthNr:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiRsrp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiRsrq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiCqiTableIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " csiCqiReport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssRsrp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssRsrq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssSinr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " miuiLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOptimizedLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parametersUseForLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 9

    invoke-static {p1, p2, p0}, Landroid/telephony/MiuiSignalStrengthStub;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;Landroid/telephony/CellSignalStrength;)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    const/4 v0, 0x1

    if-nez p1, :cond_c

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    goto :goto_2d

    :cond_c
    const-string/jumbo v1, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellSignalStrengthNr;->mParametersUseForLevel:I

    const-string v1, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    const-string v1, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    const-string v1, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    :goto_2d
    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    if-eqz p2, :cond_43

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getArfcnRsrpBoost()I

    move-result v0

    :cond_43
    iget v4, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    add-int/2addr v4, v0

    iget-object v5, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrpThresholds:[I

    invoke-direct {p0, v4, v5}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v1

    :cond_4c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    iget-object v4, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrqThresholds:[I

    invoke-direct {p0, v0, v4}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v2

    :cond_5b
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telephony/CellSignalStrengthNr;->isLevelForParameter(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    iget-object v4, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinrThresholds:[I

    invoke-direct {p0, v0, v4}, Landroid/telephony/CellSignalStrengthNr;->updateLevelWithMeasure(I[I)I

    move-result v3

    :cond_6a
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiSinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiTableIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellSignalStrengthNr;->mCsiCqiReport:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mSsSinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mMiuiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthNr;->mOptimizedLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
