# classes3.dex

.class public final Landroid/telephony/PhysicalChannelConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhysicalChannelConfig$Builder;,
        Landroid/telephony/PhysicalChannelConfig$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final BAND_UNKNOWN:I = 0x0

.field public static final CELL_BANDWIDTH_UNKNOWN:I = 0x0

.field public static final CHANNEL_NUMBER_UNKNOWN:I = 0x7fffffff

.field public static final CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final CONNECTION_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final FREQUENCY_UNKNOWN:I = -0x1

.field public static final PHYSICAL_CELL_ID_MAXIMUM_VALUE:I = 0x3ef

.field public static final PHYSICAL_CELL_ID_UNKNOWN:I = -0x1


# instance fields
.field private mBand:I

.field private mCellBandwidthDownlinkKhz:I

.field private mCellBandwidthUplinkKhz:I

.field private mCellConnectionStatus:I

.field private mContextIds:[I

.field private mDownlinkChannelNumber:I

.field private mDownlinkFrequency:I

.field private mFrequencyRange:I

.field private mNetworkType:I

.field private mPhysicalCellId:I

.field private mUplinkChannelNumber:I

.field private mUplinkFrequency:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/PhysicalChannelConfig$1;

    invoke-direct {v0}, Landroid/telephony/PhysicalChannelConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-lez v0, :cond_4a

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    :cond_4a
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellConnectionStatus(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthDownlinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthUplinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmNetworkType(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmDownlinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmUplinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmFrequencyRange(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmContextIds(Landroid/telephony/PhysicalChannelConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmPhysicalCellId(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmBand(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-lez v0, :cond_4a

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    :cond_4a
    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V

    return-void
.end method

.method private getConnectionStatusString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    packed-switch v0, :pswitch_data_2a

    :pswitch_5  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_21  #0x2
    const-string v0, "SecondaryServing"

    return-object v0

    :pswitch_24  #0x1
    const-string v0, "PrimaryServing"

    return-object v0

    :pswitch_27  #0xffffffff
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_27  #ffffffff
        :pswitch_5  #00000000
        :pswitch_24  #00000001
        :pswitch_21  #00000002
    .end packed-switch
.end method

.method private setDownlinkFrequency()V
    .registers 4

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_32

    :pswitch_6  #0x4, 0x5, 0x6, 0x7, 0xb, 0xc, 0xe, 0x12, 0x13
    goto :goto_30

    :pswitch_7  #0x14
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    goto :goto_30

    :pswitch_10  #0xd
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    goto :goto_30

    :pswitch_1b  #0x3, 0x8, 0x9, 0xa, 0xf, 0x11
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    goto :goto_30

    :pswitch_26  #0x1, 0x2, 0x10
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_26  #00000002
        :pswitch_1b  #00000003
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_1b  #00000008
        :pswitch_1b  #00000009
        :pswitch_1b  #0000000a
        :pswitch_6  #0000000b
        :pswitch_6  #0000000c
        :pswitch_10  #0000000d
        :pswitch_6  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_26  #00000010
        :pswitch_1b  #00000011
        :pswitch_6  #00000012
        :pswitch_6  #00000013
        :pswitch_7  #00000014
    .end packed-switch
.end method

.method private setFrequencyRange()V
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    packed-switch v0, :pswitch_data_40

    :pswitch_a  #0x4, 0x5, 0x6, 0x7, 0xb, 0xc, 0xe, 0x12, 0x13
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_32

    :pswitch_e  #0x14
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromNrBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_32

    :pswitch_17  #0xd
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromEutranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_32

    :pswitch_20  #0x3, 0x8, 0x9, 0xa, 0xf, 0x11
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromUtranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_32

    :pswitch_29  #0x1, 0x2, 0x10
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromGeranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    nop

    :goto_32
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-nez v0, :cond_3e

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeFromArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    :cond_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_29  #00000002
        :pswitch_20  #00000003
        :pswitch_a  #00000004
        :pswitch_a  #00000005
        :pswitch_a  #00000006
        :pswitch_a  #00000007
        :pswitch_20  #00000008
        :pswitch_20  #00000009
        :pswitch_20  #0000000a
        :pswitch_a  #0000000b
        :pswitch_a  #0000000c
        :pswitch_17  #0000000d
        :pswitch_a  #0000000e
        :pswitch_20  #0000000f
        :pswitch_29  #00000010
        :pswitch_20  #00000011
        :pswitch_a  #00000012
        :pswitch_a  #00000013
        :pswitch_e  #00000014
    .end packed-switch
.end method

.method private setUplinkFrequency()V
    .registers 4

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_32

    :pswitch_6  #0x4, 0x5, 0x6, 0x7, 0xb, 0xc, 0xe, 0x12, 0x13
    goto :goto_30

    :pswitch_7  #0x14
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    goto :goto_30

    :pswitch_10  #0xd
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    goto :goto_30

    :pswitch_1b  #0x3, 0x8, 0x9, 0xa, 0xf, 0x11
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    goto :goto_30

    :pswitch_26  #0x1, 0x2, 0x10
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_26  #00000002
        :pswitch_1b  #00000003
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_1b  #00000008
        :pswitch_1b  #00000009
        :pswitch_1b  #0000000a
        :pswitch_6  #0000000b
        :pswitch_6  #0000000c
        :pswitch_10  #0000000d
        :pswitch_6  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_26  #00000010
        :pswitch_1b  #00000011
        :pswitch_6  #00000012
        :pswitch_6  #00000013
        :pswitch_7  #00000014
    .end packed-switch
.end method


# virtual methods
.method public createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;
    .registers 3

    new-instance v0, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v0, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>(Landroid/telephony/PhysicalChannelConfig;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v0

    return-object v0
.end method

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
    instance-of v1, p1, Landroid/telephony/PhysicalChannelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    iget-object v4, v1, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    if-ne v3, v4, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v2

    :goto_5b
    return v0
.end method

.method public getBand()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    return v0
.end method

.method public getCellBandwidthDownlinkKhz()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    return v0
.end method

.method public getCellBandwidthUplinkKhz()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    return v0
.end method

.method public getConnectionStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    return v0
.end method

.method public getContextIds()[I
    .registers 2

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    return-object v0
.end method

.method public getDownlinkChannelNumber()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    return v0
.end method

.method public getDownlinkFrequencyKhz()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return v0
.end method

.method public getFrequencyRange()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    return v0
.end method

.method public getNetworkType()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    return v0
.end method

.method public getPhysicalCellId()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return v0
.end method

.method public getUplinkChannelNumber()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    return v0
.end method

.method public getUplinkFrequencyKhz()I
    .registers 2

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCellBandwidthDownlinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCellBandwidthUplinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDownlinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mUplinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mContextIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPhysicalCellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDownlinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mUplinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
