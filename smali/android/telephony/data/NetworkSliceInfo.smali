# classes3.dex

.class public final Landroid/telephony/data/NetworkSliceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/NetworkSliceInfo$Builder;,
        Landroid/telephony/data/NetworkSliceInfo$SliceStatus;,
        Landroid/telephony/data/NetworkSliceInfo$SliceServiceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_SLICE_DIFFERENTIATOR:I = 0xfffffe

.field public static final MAX_SLICE_STATUS:I = 0x5

.field public static final MIN_SLICE_DIFFERENTIATOR:I = -0x1

.field public static final MIN_SLICE_STATUS:I = 0x0

.field public static final SLICE_DIFFERENTIATOR_NO_SLICE:I = -0x1

.field public static final SLICE_SERVICE_TYPE_EMBB:I = 0x1

.field public static final SLICE_SERVICE_TYPE_MIOT:I = 0x3

.field public static final SLICE_SERVICE_TYPE_NONE:I = 0x0

.field public static final SLICE_SERVICE_TYPE_URLLC:I = 0x2

.field public static final SLICE_STATUS_ALLOWED:I = 0x2

.field public static final SLICE_STATUS_CONFIGURED:I = 0x1

.field public static final SLICE_STATUS_DEFAULT_CONFIGURED:I = 0x5

.field public static final SLICE_STATUS_REJECTED_NOT_AVAILABLE_IN_PLMN:I = 0x3

.field public static final SLICE_STATUS_REJECTED_NOT_AVAILABLE_IN_REGISTERED_AREA:I = 0x4

.field public static final SLICE_STATUS_UNKNOWN:I


# instance fields
.field private final mMappedHplmnSliceDifferentiator:I

.field private final mMappedHplmnSliceServiceType:I

.field private final mSliceDifferentiator:I

.field private final mSliceServiceType:I

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$1;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    iput p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    iput p4, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    iput p3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    iput p5, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/telephony/data/NetworkSliceInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/telephony/data/NetworkSliceInfo;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/NetworkSliceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/NetworkSliceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static sliceServiceTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "MIOT"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "URLLC"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "EMBB"

    return-object v0

    :pswitch_11  #0x0
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method

.method private static sliceStatusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x5
    const-string v0, "DEFAULT_CONFIGURED"

    return-object v0

    :pswitch_b  #0x4
    const-string v0, "REJECTED_NOT_AVAILABLE_IN_REGISTERED_AREA"

    return-object v0

    :pswitch_e  #0x3
    const-string v0, "REJECTED_NOT_AVAILABLE_IN_PLMN"

    return-object v0

    :pswitch_11  #0x2
    const-string v0, "ALLOWED"

    return-object v0

    :pswitch_14  #0x1
    const-string v0, "CONFIGURED"

    return-object v0

    :pswitch_17  #0x0
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_14  #00000001
        :pswitch_11  #00000002
        :pswitch_e  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
    .end packed-switch
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
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/NetworkSliceInfo;

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public getMappedHplmnSliceDifferentiator()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    return v0
.end method

.method public getMappedHplmnSliceServiceType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    return v0
.end method

.method public getSliceDifferentiator()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    return v0
.end method

.method public getSliceServiceType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceInfo{mSliceServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceServiceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSliceDifferentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMappedHplmnSliceServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceServiceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMappedHplmnSliceDifferentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
