# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcastMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final PA_SYNC_INTERVAL_UNKNOWN:I = 0xffff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final mBroadcastCode:[B

.field private final mBroadcastId:I

.field private final mIsEncrypted:Z

.field private final mPaSyncInterval:I

.field private final mPresentationDelayMicros:I

.field private final mSourceAddressType:I

.field private final mSourceAdvertisingSid:I

.field private final mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mSubgroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/BluetoothDevice;",
            "IIIZ[BI",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    iput p4, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    iput p5, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    iput-boolean p6, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    iput-object p7, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    iput p8, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    iput-object p9, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;-><init>(ILandroid/bluetooth/BluetoothDevice;IIIZ[BILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v3

    if-ne v2, v3, :cond_5f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v3

    if-ne v2, v3, :cond_5f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->isEncrypted()Z

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPresentationDelayMicros()I

    move-result v3

    if-ne v2, v3, :cond_5f

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v1, 0x1

    goto :goto_60

    :cond_5f
    nop

    :goto_60
    return v1
.end method

.method public getBroadcastCode()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    return-object v0
.end method

.method public getBroadcastId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    return v0
.end method

.method public getPaSyncInterval()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    return v0
.end method

.method public getPresentationDelayMicros()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    return v0
.end method

.method public getSourceAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    return v0
.end method

.method public getSourceAdvertisingSid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    return v0
.end method

.method public getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getSubgroups()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_17

    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    if-eqz v0, :cond_39

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_3d

    :cond_39
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3d
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->mSubgroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
