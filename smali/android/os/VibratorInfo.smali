# classes3.dex

.class public Landroid/os/VibratorInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibratorInfo$Builder;,
        Landroid/os/VibratorInfo$FrequencyProfile;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

.field private static final TAG:Ljava/lang/String; = "VibratorInfo"


# instance fields
.field private final mCapabilities:J

.field private final mCompositionSizeMax:I

.field private final mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private final mId:I

.field private final mPrimitiveDelayMax:I

.field private final mPwlePrimitiveDurationMax:I

.field private final mPwleSizeMax:I

.field private final mQFactor:F

.field private final mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private final mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private final mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/VibratorInfo$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    sput-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    new-instance v0, Landroid/os/VibratorInfo$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/os/VibratorInfo;->mId:I

    iput-wide p2, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    const/4 v0, 0x0

    if-nez p4, :cond_12

    move-object v1, v0

    goto :goto_16

    :cond_12
    invoke-virtual {p4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    :goto_16
    iput-object v1, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez p5, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p5}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p6}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iput p7, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iput p8, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iput p9, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iput p10, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iput p11, p0, Landroid/os/VibratorInfo;->mQFactor:F

    iput-object p12, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-void
.end method

.method public constructor <init>(ILandroid/os/VibratorInfo;)V
    .registers 16

    iget-wide v2, p2, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-object v4, p2, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, p2, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v6, p2, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iget v7, p2, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v8, p2, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v9, p2, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v10, p2, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v11, p2, Landroid/os/VibratorInfo;->mQFactor:F

    iget-object v12, p2, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    sget-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorInfo$FrequencyProfile;

    iput-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-void
.end method

.method private getCapabilitiesNames()[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "ON_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "PERFORM_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-wide/16 v1, 0x20

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "COMPOSE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    const-wide/16 v1, 0x400

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "COMPOSE_PWLE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    const-wide/16 v1, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "ALWAYS_ON_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    const-wide/16 v1, 0x200

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "FREQUENCY_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    const-wide/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "EXTERNAL_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, "EXTERNAL_AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getSupportedBrakingNames()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_8
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_f
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_37

    :pswitch_2d  #0x1
    const-string v2, "CLAB"

    aput-object v2, v0, v1

    goto :goto_37

    :pswitch_32  #0x0
    const-string v2, "NONE"

    aput-object v2, v0, v1

    nop

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_3a
    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2d  #00000001
    .end packed-switch
.end method

.method private getSupportedEffectsNames()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_8
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_f
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    return-object v0
.end method

.method private getSupportedPrimitivesNames()[Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3e
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/os/VibratorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/VibratorInfo;

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    iget-object v4, v1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_40

    iget-object v5, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    if-eq v5, v6, :cond_2e

    return v2

    :cond_2e
    iget-object v5, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-eq v5, v6, :cond_3d

    return v2

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_40
    iget v4, p0, Landroid/os/VibratorInfo;->mId:I

    iget v5, v1, Landroid/os/VibratorInfo;->mId:I

    if-ne v4, v5, :cond_97

    iget-wide v4, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-wide v6, v1, Landroid/os/VibratorInfo;->mCapabilities:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_97

    iget v4, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    if-ne v4, v5, :cond_97

    iget v4, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    if-ne v4, v5, :cond_97

    iget v4, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    if-ne v4, v5, :cond_97

    iget v4, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    if-ne v4, v5, :cond_97

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, v1, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v5, v1, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    iget v4, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, v1, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    iget-object v4, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget-object v5, v1, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    goto :goto_98

    :cond_97
    move v0, v2

    :goto_98
    return v0
.end method

.method protected getCapabilities()J
    .registers 3

    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    return-wide v0
.end method

.method public getCompositionSizeMax()I
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    return v0
.end method

.method public getDefaultBraking()I
    .registers 4

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    return v0
.end method

.method public getPrimitiveDelayMax()I
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    return v0
.end method

.method public getPrimitiveDuration(I)I
    .registers 3

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getPwlePrimitiveDurationMax()I
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    return v0
.end method

.method public getPwleSizeMax()I
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    return v0
.end method

.method public getQFactor()F
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    return v0
.end method

.method public getResonantFrequencyHz()F
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->-$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F

    move-result v0

    return v0
.end method

.method public getSupportedBraking()Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEffects()Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPrimitives()Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasBrakingSupport(I)Z
    .registers 3

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasCapability(J)Z
    .registers 5

    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_32
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_4f
    return v0
.end method

.method public isBrakingSupportKnown()Z
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEffectSupportKnown()Z
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEffectSupported(I)I
    .registers 3

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x2

    :goto_f
    return v0
.end method

.method public isPrimitiveSupported(I)Z
    .registers 4

    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getCapabilitiesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedEffectsNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedBraking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedBrakingNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedPrimitives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedPrimitivesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimitiveDelayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompositionSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPwlePrimitiveDurationMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPwleSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
