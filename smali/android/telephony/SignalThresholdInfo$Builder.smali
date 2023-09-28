# classes3.dex

.class public final Landroid/telephony/SignalThresholdInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalThresholdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHysteresisDb:I

.field private mHysteresisMs:I

.field private mIsEnabled:Z

.field private mRan:I

.field private mSignalMeasurementType:I

.field private mThresholds:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/SignalThresholdInfo;
    .registers 10

    new-instance v8, Landroid/telephony/SignalThresholdInfo;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    iget v2, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    iget v3, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    iget v4, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    iget-object v5, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    iget-boolean v6, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/SignalThresholdInfo;-><init>(IIII[IZLandroid/telephony/SignalThresholdInfo-IA;)V

    return-object v8
.end method

.method public setHysteresisDb(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    return-object p0
.end method

.method public setHysteresisMs(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    return-object p0
.end method

.method public setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    return-object p0
.end method

.method public setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    return-object p0
.end method

.method public setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;
    .registers 5

    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_1a

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_11

    goto :goto_1a

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "thresholds length must between 1 and 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_1a
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method
