# classes2.dex

.class public final Landroid/hardware/tv/tuner/FrontendStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendStatus$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final agc:I = 0xe

.field public static final allPlpInfo:I = 0x29

.field public static final bandwidth:I = 0x19

.field public static final ber:I = 0x2

.field public static final bers:I = 0x17

.field public static final codeRates:I = 0x18

.field public static final dvbtCellIds:I = 0x28

.field public static final freqOffset:I = 0x12

.field public static final hierarchy:I = 0x13

.field public static final innerFec:I = 0x8

.field public static final interleaving:I = 0x1e

.field public static final interval:I = 0x1a

.field public static final inversion:I = 0xa

.field public static final isDemodLocked:I = 0x0

.field public static final isEWBS:I = 0xd

.field public static final isLayerError:I = 0x10

.field public static final isLinear:I = 0x23

.field public static final isLnaOn:I = 0xf

.field public static final isMiso:I = 0x22

.field public static final isRfLocked:I = 0x14

.field public static final isShortFrames:I = 0x24

.field public static final isdbtMode:I = 0x25

.field public static final isdbtSegment:I = 0x1f

.field public static final lnbVoltage:I = 0xb

.field public static final mer:I = 0x11

.field public static final modulationStatus:I = 0x9

.field public static final modulations:I = 0x16

.field public static final partialReceptionFlag:I = 0x26

.field public static final per:I = 0x3

.field public static final plpId:I = 0xc

.field public static final plpInfo:I = 0x15

.field public static final preBer:I = 0x4

.field public static final rollOff:I = 0x21

.field public static final signalQuality:I = 0x5

.field public static final signalStrength:I = 0x6

.field public static final snr:I = 0x1

.field public static final streamIdList:I = 0x27

.field public static final symbolRate:I = 0x7

.field public static final systemId:I = 0x1d

.field public static final transmissionMode:I = 0x1b

.field public static final tsDataRate:I = 0x20

.field public static final uec:I = 0x1c


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_9a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x29
    const-string v0, "allPlpInfo"

    return-object v0

    :pswitch_1f  #0x28
    const-string v0, "dvbtCellIds"

    return-object v0

    :pswitch_22  #0x27
    const-string v0, "streamIdList"

    return-object v0

    :pswitch_25  #0x26
    const-string v0, "partialReceptionFlag"

    return-object v0

    :pswitch_28  #0x25
    const-string v0, "isdbtMode"

    return-object v0

    :pswitch_2b  #0x24
    const-string v0, "isShortFrames"

    return-object v0

    :pswitch_2e  #0x23
    const-string v0, "isLinear"

    return-object v0

    :pswitch_31  #0x22
    const-string v0, "isMiso"

    return-object v0

    :pswitch_34  #0x21
    const-string v0, "rollOff"

    return-object v0

    :pswitch_37  #0x20
    const-string v0, "tsDataRate"

    return-object v0

    :pswitch_3a  #0x1f
    const-string v0, "isdbtSegment"

    return-object v0

    :pswitch_3d  #0x1e
    const-string v0, "interleaving"

    return-object v0

    :pswitch_40  #0x1d
    const-string v0, "systemId"

    return-object v0

    :pswitch_43  #0x1c
    const-string v0, "uec"

    return-object v0

    :pswitch_46  #0x1b
    const-string v0, "transmissionMode"

    return-object v0

    :pswitch_49  #0x1a
    const-string v0, "interval"

    return-object v0

    :pswitch_4c  #0x19
    const-string v0, "bandwidth"

    return-object v0

    :pswitch_4f  #0x18
    const-string v0, "codeRates"

    return-object v0

    :pswitch_52  #0x17
    const-string v0, "bers"

    return-object v0

    :pswitch_55  #0x16
    const-string v0, "modulations"

    return-object v0

    :pswitch_58  #0x15
    const-string v0, "plpInfo"

    return-object v0

    :pswitch_5b  #0x14
    const-string v0, "isRfLocked"

    return-object v0

    :pswitch_5e  #0x13
    const-string v0, "hierarchy"

    return-object v0

    :pswitch_61  #0x12
    const-string v0, "freqOffset"

    return-object v0

    :pswitch_64  #0x11
    const-string v0, "mer"

    return-object v0

    :pswitch_67  #0x10
    const-string v0, "isLayerError"

    return-object v0

    :pswitch_6a  #0xf
    const-string v0, "isLnaOn"

    return-object v0

    :pswitch_6d  #0xe
    const-string v0, "agc"

    return-object v0

    :pswitch_70  #0xd
    const-string v0, "isEWBS"

    return-object v0

    :pswitch_73  #0xc
    const-string v0, "plpId"

    return-object v0

    :pswitch_76  #0xb
    const-string v0, "lnbVoltage"

    return-object v0

    :pswitch_79  #0xa
    const-string v0, "inversion"

    return-object v0

    :pswitch_7c  #0x9
    const-string v0, "modulationStatus"

    return-object v0

    :pswitch_7f  #0x8
    const-string v0, "innerFec"

    return-object v0

    :pswitch_82  #0x7
    const-string v0, "symbolRate"

    return-object v0

    :pswitch_85  #0x6
    const-string v0, "signalStrength"

    return-object v0

    :pswitch_88  #0x5
    const-string v0, "signalQuality"

    return-object v0

    :pswitch_8b  #0x4
    const-string v0, "preBer"

    return-object v0

    :pswitch_8e  #0x3
    const-string v0, "per"

    return-object v0

    :pswitch_91  #0x2
    const-string v0, "ber"

    return-object v0

    :pswitch_94  #0x1
    const-string v0, "snr"

    return-object v0

    :pswitch_97  #0x0
    const-string v0, "isDemodLocked"

    return-object v0

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_94  #00000001
        :pswitch_91  #00000002
        :pswitch_8e  #00000003
        :pswitch_8b  #00000004
        :pswitch_88  #00000005
        :pswitch_85  #00000006
        :pswitch_82  #00000007
        :pswitch_7f  #00000008
        :pswitch_7c  #00000009
        :pswitch_79  #0000000a
        :pswitch_76  #0000000b
        :pswitch_73  #0000000c
        :pswitch_70  #0000000d
        :pswitch_6d  #0000000e
        :pswitch_6a  #0000000f
        :pswitch_67  #00000010
        :pswitch_64  #00000011
        :pswitch_61  #00000012
        :pswitch_5e  #00000013
        :pswitch_5b  #00000014
        :pswitch_58  #00000015
        :pswitch_55  #00000016
        :pswitch_52  #00000017
        :pswitch_4f  #00000018
        :pswitch_4c  #00000019
        :pswitch_49  #0000001a
        :pswitch_46  #0000001b
        :pswitch_43  #0000001c
        :pswitch_40  #0000001d
        :pswitch_3d  #0000001e
        :pswitch_3a  #0000001f
        :pswitch_37  #00000020
        :pswitch_34  #00000021
        :pswitch_31  #00000022
        :pswitch_2e  #00000023
        :pswitch_2b  #00000024
        :pswitch_28  #00000025
        :pswitch_25  #00000026
        :pswitch_22  #00000027
        :pswitch_1f  #00000028
        :pswitch_1c  #00000029
    .end packed-switch
.end method

.method public static agc(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static allPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x29

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ber(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bers([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static codeRates([J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v1

    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_26
    return v0
.end method

.method public static dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x28

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static freqOffset(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 5

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hierarchy(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static innerFec(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 5

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static interleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static interval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static inversion(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isDemodLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isEWBS(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isLayerError([Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isLinear(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x23

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isLnaOn(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isMiso(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isRfLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isShortFrames(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbtMode(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbtSegment([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static lnbVoltage(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static modulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static modulations([Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static partialReceptionFlag(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static per(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static plpId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static plpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static preBer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static rollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x21

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static signalQuality(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static signalStrength(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static snr(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static streamIdList([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x27

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static symbolRate(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static systemId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static transmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static tsDataRate([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static uec(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_64

    goto :goto_63

    :sswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_31
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_45
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_4f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :sswitch_59
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_63
    return v0

    :sswitch_data_64
    .sparse-switch
        0x9 -> :sswitch_59
        0x15 -> :sswitch_4f
        0x16 -> :sswitch_45
        0x19 -> :sswitch_3b
        0x1a -> :sswitch_31
        0x1b -> :sswitch_27
        0x1e -> :sswitch_1d
        0x21 -> :sswitch_13
        0x29 -> :sswitch_9
    .end sparse-switch
.end method

.method public getAgc()I
    .registers 2

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .registers 2

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object v0
.end method

.method public getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;
    .registers 2

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    return-object v0
.end method

.method public getBer()I
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBers()[I
    .registers 2

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getCodeRates()[J
    .registers 2

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public getDvbtCellIds()[I
    .registers 2

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getFreqOffset()J
    .registers 3

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHierarchy()I
    .registers 2

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInnerFec()J
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .registers 2

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    return-object v0
.end method

.method public getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;
    .registers 2

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    return-object v0
.end method

.method public getInversion()I
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsDemodLocked()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsEWBS()Z
    .registers 2

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsLayerError()[Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Z

    return-object v0
.end method

.method public getIsLinear()Z
    .registers 2

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsLnaOn()Z
    .registers 2

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsMiso()Z
    .registers 2

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsRfLocked()Z
    .registers 2

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsShortFrames()Z
    .registers 2

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsdbtMode()I
    .registers 2

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbtSegment()[I
    .registers 2

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getLnbVoltage()I
    .registers 2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMer()I
    .registers 2

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .registers 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    return-object v0
.end method

.method public getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 2

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendModulation;

    return-object v0
.end method

.method public getPartialReceptionFlag()I
    .registers 2

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPer()I
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPlpId()I
    .registers 2

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    .registers 2

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    return-object v0
.end method

.method public getPreBer()I
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;
    .registers 2

    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendRollOff;

    return-object v0
.end method

.method public getSignalQuality()I
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()I
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSnr()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getStreamIdList()[I
    .registers 2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getSymbolRate()I
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSystemId()I
    .registers 2

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    return v0
.end method

.method public getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    .registers 2

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    return-object v0
.end method

.method public getTsDataRate()[I
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getUec()I
    .registers 2

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_1fc

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_20  #0x29
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x28
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_34  #0x27
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3c  #0x26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_48  #0x25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_54  #0x24
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_60  #0x23
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_6c  #0x22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_78  #0x21
    sget-object v1, Landroid/hardware/tv/tuner/FrontendRollOff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendRollOff;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_84  #0x20
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_8c  #0x1f
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_94  #0x1e
    sget-object v1, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_a0  #0x1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_ac  #0x1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_b8  #0x1b
    sget-object v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_c4  #0x1a
    sget-object v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_d0  #0x19
    sget-object v1, Landroid/hardware/tv/tuner/FrontendBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendBandwidth;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_dc  #0x18
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_e4  #0x17
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_ec  #0x16
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendModulation;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_f8  #0x15
    sget-object v1, Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_104  #0x14
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_110  #0x13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_11c  #0x12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_128  #0x11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_134  #0x10
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_13c  #0xf
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_148  #0xe
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_154  #0xd
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_160  #0xc
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_16c  #0xb
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_178  #0xa
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_184  #0x9
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_190  #0x8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_19c  #0x7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1a8  #0x6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1b4  #0x5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1c0  #0x4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1cc  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1d8  #0x2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1e4  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1f0  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_1f0  #00000000
        :pswitch_1e4  #00000001
        :pswitch_1d8  #00000002
        :pswitch_1cc  #00000003
        :pswitch_1c0  #00000004
        :pswitch_1b4  #00000005
        :pswitch_1a8  #00000006
        :pswitch_19c  #00000007
        :pswitch_190  #00000008
        :pswitch_184  #00000009
        :pswitch_178  #0000000a
        :pswitch_16c  #0000000b
        :pswitch_160  #0000000c
        :pswitch_154  #0000000d
        :pswitch_148  #0000000e
        :pswitch_13c  #0000000f
        :pswitch_134  #00000010
        :pswitch_128  #00000011
        :pswitch_11c  #00000012
        :pswitch_110  #00000013
        :pswitch_104  #00000014
        :pswitch_f8  #00000015
        :pswitch_ec  #00000016
        :pswitch_e4  #00000017
        :pswitch_dc  #00000018
        :pswitch_d0  #00000019
        :pswitch_c4  #0000001a
        :pswitch_b8  #0000001b
        :pswitch_ac  #0000001c
        :pswitch_a0  #0000001d
        :pswitch_94  #0000001e
        :pswitch_8c  #0000001f
        :pswitch_84  #00000020
        :pswitch_78  #00000021
        :pswitch_6c  #00000022
        :pswitch_60  #00000023
        :pswitch_54  #00000024
        :pswitch_48  #00000025
        :pswitch_3c  #00000026
        :pswitch_34  #00000027
        :pswitch_2c  #00000028
        :pswitch_20  #00000029
    .end packed-switch
.end method

.method public setAgc(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setAllPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .registers 3

    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setBandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)V
    .registers 3

    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setBer(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setBers([I)V
    .registers 3

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setCodeRates([J)V
    .registers 3

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDvbtCellIds([I)V
    .registers 3

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setFreqOffset(J)V
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setHierarchy(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setInnerFec(J)V
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setInterleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)V
    .registers 3

    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setInterval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)V
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setInversion(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsDemodLocked(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsEWBS(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsLayerError([Z)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsLinear(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsLnaOn(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsMiso(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsRfLocked(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsShortFrames(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbtMode(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIsdbtSegment([I)V
    .registers 3

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setLnbVoltage(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setMer(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setModulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)V
    .registers 3

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setModulations([Landroid/hardware/tv/tuner/FrontendModulation;)V
    .registers 3

    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPartialReceptionFlag(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPer(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlpId(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPlpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)V
    .registers 3

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPreBer(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setRollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)V
    .registers 3

    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSignalQuality(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSignalStrength(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSnr(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setStreamIdList([I)V
    .registers 3

    const/16 v0, 0x27

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSymbolRate(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSystemId(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTransmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)V
    .registers 3

    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTsDataRate([I)V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setUec(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    packed-switch v0, :pswitch_data_17a

    goto/16 :goto_179

    :pswitch_c  #0x29
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_15  #0x28
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getDvbtCellIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_179

    :pswitch_1e  #0x27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStreamIdList()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_179

    :pswitch_27  #0x26
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPartialReceptionFlag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_30  #0x25
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_39  #0x24
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsShortFrames()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_179

    :pswitch_42  #0x23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLinear()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_179

    :pswitch_4b  #0x22
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsMiso()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_179

    :pswitch_54  #0x21
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_5d  #0x20
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTsDataRate()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_179

    :pswitch_66  #0x1f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtSegment()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_179

    :pswitch_6f  #0x1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_78  #0x1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSystemId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_81  #0x1c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getUec()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_8a  #0x1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_93  #0x1a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_9c  #0x19
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_a5  #0x18
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getCodeRates()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_179

    :pswitch_ae  #0x17
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBers()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_179

    :pswitch_b7  #0x16
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_c0  #0x15
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_179

    :pswitch_c9  #0x14
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsRfLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_179

    :pswitch_d2  #0x13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getHierarchy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_db  #0x12
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getFreqOffset()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_179

    :pswitch_e4  #0x11
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getMer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_ed  #0x10
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLayerError()[Z

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_179

    :pswitch_f6  #0xf
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLnaOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_179

    :pswitch_ff  #0xe
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAgc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_179

    :pswitch_108  #0xd
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsEWBS()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_179

    :pswitch_111  #0xc
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_119  #0xb
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getLnbVoltage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_121  #0xa
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInversion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_129  #0x9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_179

    :pswitch_131  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInnerFec()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_179

    :pswitch_139  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSymbolRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_141  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalStrength()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_149  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalQuality()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_151  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPreBer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_159  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_161  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_169  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSnr()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    :pswitch_171  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsDemodLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_179
    return-void

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_171  #00000000
        :pswitch_169  #00000001
        :pswitch_161  #00000002
        :pswitch_159  #00000003
        :pswitch_151  #00000004
        :pswitch_149  #00000005
        :pswitch_141  #00000006
        :pswitch_139  #00000007
        :pswitch_131  #00000008
        :pswitch_129  #00000009
        :pswitch_121  #0000000a
        :pswitch_119  #0000000b
        :pswitch_111  #0000000c
        :pswitch_108  #0000000d
        :pswitch_ff  #0000000e
        :pswitch_f6  #0000000f
        :pswitch_ed  #00000010
        :pswitch_e4  #00000011
        :pswitch_db  #00000012
        :pswitch_d2  #00000013
        :pswitch_c9  #00000014
        :pswitch_c0  #00000015
        :pswitch_b7  #00000016
        :pswitch_ae  #00000017
        :pswitch_a5  #00000018
        :pswitch_9c  #00000019
        :pswitch_93  #0000001a
        :pswitch_8a  #0000001b
        :pswitch_81  #0000001c
        :pswitch_78  #0000001d
        :pswitch_6f  #0000001e
        :pswitch_66  #0000001f
        :pswitch_5d  #00000020
        :pswitch_54  #00000021
        :pswitch_4b  #00000022
        :pswitch_42  #00000023
        :pswitch_39  #00000024
        :pswitch_30  #00000025
        :pswitch_27  #00000026
        :pswitch_1e  #00000027
        :pswitch_15  #00000028
        :pswitch_c  #00000029
    .end packed-switch
.end method
