# classes3.dex

.class public final Landroid/telephony/SignalThresholdInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalThresholdInfo$Builder;,
        Landroid/telephony/SignalThresholdInfo$SignalMeasurementType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HYSTERESIS_DB_DISABLED:I = 0x0

.field public static final HYSTERESIS_MS_DISABLED:I = 0x0

.field public static final MAXIMUM_NUMBER_OF_THRESHOLDS_ALLOWED:I = 0x4

.field public static final MINIMUM_NUMBER_OF_THRESHOLDS_ALLOWED:I = 0x1

.field public static final SIGNAL_MEASUREMENT_TYPE_RSCP:I = 0x2

.field public static final SIGNAL_MEASUREMENT_TYPE_RSRP:I = 0x3

.field public static final SIGNAL_MEASUREMENT_TYPE_RSRQ:I = 0x4

.field public static final SIGNAL_MEASUREMENT_TYPE_RSSI:I = 0x1

.field public static final SIGNAL_MEASUREMENT_TYPE_RSSNR:I = 0x5

.field public static final SIGNAL_MEASUREMENT_TYPE_SSRSRP:I = 0x6

.field public static final SIGNAL_MEASUREMENT_TYPE_SSRSRQ:I = 0x7

.field public static final SIGNAL_MEASUREMENT_TYPE_SSSINR:I = 0x8

.field public static final SIGNAL_MEASUREMENT_TYPE_UNKNOWN:I = 0x0

.field public static final SIGNAL_RSCP_MAX_VALUE:I = -0x19

.field public static final SIGNAL_RSCP_MIN_VALUE:I = -0x78

.field public static final SIGNAL_RSRP_MAX_VALUE:I = -0x2c

.field public static final SIGNAL_RSRP_MIN_VALUE:I = -0x8c

.field public static final SIGNAL_RSRQ_MAX_VALUE:I = 0x3

.field public static final SIGNAL_RSRQ_MIN_VALUE:I = -0x22

.field public static final SIGNAL_RSSI_MAX_VALUE:I = -0x33

.field public static final SIGNAL_RSSI_MIN_VALUE:I = -0x71

.field public static final SIGNAL_RSSNR_MAX_VALUE:I = 0x1e

.field public static final SIGNAL_RSSNR_MIN_VALUE:I = -0x14

.field public static final SIGNAL_SSRSRP_MAX_VALUE:I = -0x2c

.field public static final SIGNAL_SSRSRP_MIN_VALUE:I = -0x8c

.field public static final SIGNAL_SSRSRQ_MAX_VALUE:I = 0x14

.field public static final SIGNAL_SSRSRQ_MIN_VALUE:I = -0x2b

.field public static final SIGNAL_SSSINR_MAX_VALUE:I = 0x28

.field public static final SIGNAL_SSSINR_MIN_VALUE:I = -0x17


# instance fields
.field private final mHysteresisDb:I

.field private final mHysteresisMs:I

.field private final mIsEnabled:Z

.field private final mRan:I

.field private final mSignalMeasurementType:I

.field private final mThresholds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/SignalThresholdInfo$1;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIII[IZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Landroid/telephony/SignalThresholdInfo;->validateRanWithMeasurementType(II)V

    invoke-direct {p0, p2, p5}, Landroid/telephony/SignalThresholdInfo;->validateThresholdRange(I[I)V

    iput p1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    iput p2, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    const/4 v0, 0x0

    if-gez p3, :cond_18

    move v1, v0

    goto :goto_19

    :cond_18
    move v1, p3

    :goto_19
    iput v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    if-gez p4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, p4

    :goto_1f
    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    iput-object p5, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iput-boolean p6, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(IIII[IZLandroid/telephony/SignalThresholdInfo-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/telephony/SignalThresholdInfo;-><init>(IIII[IZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/SignalThresholdInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SignalThresholdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getMaximumNumberOfThresholdsAllowed()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static getMinimumNumberOfThresholdsAllowed()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isValidRanWithMeasurementType(II)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_1c

    return v0

    :pswitch_6  #0x6, 0x7, 0x8
    const/4 v2, 0x6

    if-ne p0, v2, :cond_a

    move v0, v1

    :cond_a
    return v0

    :pswitch_b  #0x3, 0x4, 0x5
    const/4 v2, 0x3

    if-ne p0, v2, :cond_f

    move v0, v1

    :cond_f
    return v0

    :pswitch_10  #0x2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_14

    move v0, v1

    :cond_14
    return v0

    :pswitch_15  #0x1
    if-eq p0, v1, :cond_1a

    const/4 v2, 0x4

    if-ne p0, v2, :cond_1b

    :cond_1a
    move v0, v1

    :cond_1b
    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_10  #00000002
        :pswitch_b  #00000003
        :pswitch_b  #00000004
        :pswitch_b  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method

.method private static isValidThreshold(II)Z
    .registers 6

    const/16 v0, -0x2c

    const/16 v1, -0x8c

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_5a

    return v3

    :pswitch_a  #0x8
    const/16 v0, -0x17

    if-lt p1, v0, :cond_13

    const/16 v0, 0x28

    if-gt p1, v0, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    return v2

    :pswitch_15  #0x7
    const/16 v0, -0x2b

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x14

    if-gt p1, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2

    :pswitch_20  #0x6
    if-lt p1, v1, :cond_25

    if-gt p1, v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    return v2

    :pswitch_27  #0x5
    const/16 v0, -0x14

    if-lt p1, v0, :cond_30

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_30

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    return v2

    :pswitch_32  #0x4
    const/16 v0, -0x22

    if-lt p1, v0, :cond_3a

    const/4 v0, 0x3

    if-gt p1, v0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v2, v3

    :goto_3b
    return v2

    :pswitch_3c  #0x3
    if-lt p1, v1, :cond_41

    if-gt p1, v0, :cond_41

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    return v2

    :pswitch_43  #0x2
    const/16 v0, -0x78

    if-lt p1, v0, :cond_4c

    const/16 v0, -0x19

    if-gt p1, v0, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v3

    :goto_4d
    return v2

    :pswitch_4e  #0x1
    const/16 v0, -0x71

    if-lt p1, v0, :cond_57

    const/16 v0, -0x33

    if-gt p1, v0, :cond_57

    goto :goto_58

    :cond_57
    move v2, v3

    :goto_58
    return v2

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_43  #00000002
        :pswitch_3c  #00000003
        :pswitch_32  #00000004
        :pswitch_27  #00000005
        :pswitch_20  #00000006
        :pswitch_15  #00000007
        :pswitch_a  #00000008
    .end packed-switch
.end method

.method private validateRanWithMeasurementType(II)V
    .registers 6

    invoke-static {p1, p2}, Landroid/telephony/SignalThresholdInfo;->isValidRanWithMeasurementType(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid RAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with signal measurement type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateThresholdRange(I[I)V
    .registers 7

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_33

    aget v2, p2, v1

    invoke-static {p1, v2}, Landroid/telephony/SignalThresholdInfo;->isValidThreshold(II)Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid signal measurement type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with threshold: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/SignalThresholdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mRan:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iget-object v4, v1, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-boolean v3, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    iget-boolean v4, v1, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    return v0
.end method

.method public getHysteresisDb()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    return v0
.end method

.method public getHysteresisMs()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    return v0
.end method

.method public getRadioAccessNetworkType()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    return v0
.end method

.method public getSignalMeasurementType()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    return v0
.end method

.method public getThresholds()[I
    .registers 2

    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalThresholdInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mRan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSignalMeasurementType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHysteresisMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHysteresisDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
