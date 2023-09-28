# classes3.dex

.class public Landroid/telephony/AccessNetworkUtils;
.super Ljava/lang/Object;


# static fields
.field private static final FREQUENCY_KHZ:I = 0x3e8

.field private static final FREQUENCY_RANGE_HIGH_KHZ:I = 0x5b8d80

.field private static final FREQUENCY_RANGE_LOW_KHZ:I = 0xf4240

.field private static final FREQUENCY_RANGE_MID_KHZ:I = 0x2dc6c0

.field public static final INVALID_BAND:I = -0x1

.field public static final INVALID_FREQUENCY:I = -0x1

.field private static final JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "jp"

.field private static final TAG:Ljava/lang/String; = "AccessNetworkUtils"

.field private static final UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertArfcnToFrequency(III)I
    .registers 4

    sub-int v0, p0, p2

    mul-int/lit16 v0, v0, 0xc8

    add-int/2addr v0, p1

    return v0
.end method

.method private static convertEarfcnToFrequency(III)I
    .registers 4

    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p0

    return v0
.end method

.method private static convertUarfcnTddToFrequency(II)I
    .registers 4

    const/16 v0, 0x68

    if-eq p0, v0, :cond_9

    mul-int/lit8 v0, p1, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_9
    mul-int/lit16 v0, p1, 0x3e8

    const v1, 0x20ced4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private static convertUarfcnToFrequency(II)I
    .registers 3

    mul-int/lit16 v0, p1, 0xc8

    add-int/2addr v0, p0

    return v0
.end method

.method public static getDuplexModeForEutranBand(I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_5

    return v0

    :cond_5
    const/16 v1, 0x58

    if-le p0, v1, :cond_a

    return v0

    :cond_a
    const/16 v1, 0x41

    const/4 v2, 0x1

    if-lt p0, v1, :cond_10

    return v2

    :cond_10
    const/16 v1, 0x21

    if-lt p0, v1, :cond_16

    const/4 v0, 0x2

    return v0

    :cond_16
    if-lt p0, v2, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public static getFrequencyFromArfcn(IIZ)I
    .registers 13

    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_7

    return v0

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_5c

    aget-object v8, v5, v7

    iget v9, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    if-ne p0, v9, :cond_59

    iget v5, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    if-lt p1, v5, :cond_2c

    iget v5, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    if-gt p1, v5, :cond_2c

    iget v1, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    iget v3, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    iget v2, v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    invoke-static {p1, v1, v2}, Landroid/telephony/AccessNetworkUtils;->convertArfcnToFrequency(III)I

    move-result v4

    goto :goto_5c

    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Band and the range of ARFCN are not consistent: band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,arfcn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,isUplink = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AccessNetworkUtils"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_5c
    :goto_5c
    if-eqz p2, :cond_60

    move v0, v4

    goto :goto_62

    :cond_60
    add-int v0, v4, v3

    :goto_62
    return v0
.end method

.method public static getFrequencyFromEarfcn(IIZ)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_58

    aget-object v5, v2, v4

    iget v6, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_55

    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_1b

    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkLowKhz:I

    goto :goto_1d

    :cond_1b
    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkLowKhz:I

    :goto_1d
    move v0, v2

    if-eqz p2, :cond_23

    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_25

    :cond_23
    iget v2, v5, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    :goto_25
    move v1, v2

    goto :goto_58

    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band and the range of EARFCN are not consistent: band = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,earfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isUplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessNetworkUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_58
    :goto_58
    invoke-static {v0, p1, v1}, Landroid/telephony/AccessNetworkUtils;->convertEarfcnToFrequency(III)I

    move-result v2

    return v2
.end method

.method public static getFrequencyFromNrArfcn(I)I
    .registers 9

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_7

    const/4 v0, -0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_26

    aget-object v6, v3, v5

    iget v7, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeFirst:I

    if-lt p0, v7, :cond_23

    iget v7, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeLast:I

    if-gt p0, v7, :cond_23

    iget v0, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->globalKhz:I

    iget v1, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeOffset:I

    iget v2, v6, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->arfcnOffset:I

    goto :goto_26

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_26
    :goto_26
    sub-int v3, p0, v2

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    return v3
.end method

.method public static getFrequencyFromUarfcn(IIZ)I
    .registers 10

    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_7

    return v0

    :cond_7
    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->values()[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    iget v6, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->band:I

    if-ne p0, v6, :cond_52

    invoke-static {p1, v5, p2}, Landroid/telephony/AccessNetworkUtils;->isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz p2, :cond_21

    iget v0, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkOffset:I

    goto :goto_23

    :cond_21
    iget v0, v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkOffset:I

    :goto_23
    move v1, v0

    goto :goto_55

    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band and the range of UARFCN are not consistent: band = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,uarfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,isUplink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessNetworkUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_55
    :goto_55
    sget-object v0, Landroid/telephony/AccessNetworkUtils;->UARFCN_NOT_GENERAL_BAND:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    invoke-static {v1, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnToFrequency(II)I

    move-result v0

    return v0

    :cond_66
    invoke-static {p0, p1}, Landroid/telephony/AccessNetworkUtils;->convertUarfcnTddToFrequency(II)I

    move-result v0

    return v0
.end method

.method public static getFrequencyRangeFromArfcn(I)I
    .registers 3

    const v0, 0xf4240

    if-ge p0, v0, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const v1, 0x2dc6c0

    if-ge p0, v1, :cond_10

    if-lt p0, v0, :cond_10

    const/4 v0, 0x2

    return v0

    :cond_10
    const v0, 0x5b8d80

    if-ge p0, v0, :cond_19

    if-lt p0, v1, :cond_19

    const/4 v0, 0x3

    return v0

    :cond_19
    const/4 v0, 0x4

    return v0
.end method

.method public static getFrequencyRangeGroupFromEutranBand(I)I
    .registers 2

    packed-switch p0, :pswitch_data_c

    :pswitch_3  #0xf, 0x10, 0x1d, 0x20, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x43, 0x45, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x56
    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x16, 0x2a, 0x2b, 0x2e, 0x2f, 0x30, 0x31, 0x34
    const/4 v0, 0x3

    return v0

    :pswitch_7  #0x5, 0x6, 0x8, 0xc, 0xd, 0xe, 0x11, 0x12, 0x13, 0x14, 0x1a, 0x1b, 0x1c, 0x1f, 0x2c, 0x32, 0x33, 0x44, 0x47, 0x48, 0x49, 0x55, 0x57, 0x58
    const/4 v0, 0x1

    return v0

    :pswitch_9  #0x1, 0x2, 0x3, 0x4, 0x7, 0x9, 0xa, 0xb, 0x15, 0x17, 0x18, 0x19, 0x1e, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2d, 0x35, 0x41, 0x42, 0x46, 0x4a
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_9  #00000002
        :pswitch_9  #00000003
        :pswitch_9  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_9  #00000007
        :pswitch_7  #00000008
        :pswitch_9  #00000009
        :pswitch_9  #0000000a
        :pswitch_9  #0000000b
        :pswitch_7  #0000000c
        :pswitch_7  #0000000d
        :pswitch_7  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_7  #00000011
        :pswitch_7  #00000012
        :pswitch_7  #00000013
        :pswitch_7  #00000014
        :pswitch_9  #00000015
        :pswitch_5  #00000016
        :pswitch_9  #00000017
        :pswitch_9  #00000018
        :pswitch_9  #00000019
        :pswitch_7  #0000001a
        :pswitch_7  #0000001b
        :pswitch_7  #0000001c
        :pswitch_3  #0000001d
        :pswitch_9  #0000001e
        :pswitch_7  #0000001f
        :pswitch_3  #00000020
        :pswitch_9  #00000021
        :pswitch_9  #00000022
        :pswitch_9  #00000023
        :pswitch_9  #00000024
        :pswitch_9  #00000025
        :pswitch_9  #00000026
        :pswitch_9  #00000027
        :pswitch_9  #00000028
        :pswitch_9  #00000029
        :pswitch_5  #0000002a
        :pswitch_5  #0000002b
        :pswitch_7  #0000002c
        :pswitch_9  #0000002d
        :pswitch_5  #0000002e
        :pswitch_5  #0000002f
        :pswitch_5  #00000030
        :pswitch_5  #00000031
        :pswitch_7  #00000032
        :pswitch_7  #00000033
        :pswitch_5  #00000034
        :pswitch_9  #00000035
        :pswitch_3  #00000036
        :pswitch_3  #00000037
        :pswitch_3  #00000038
        :pswitch_3  #00000039
        :pswitch_3  #0000003a
        :pswitch_3  #0000003b
        :pswitch_3  #0000003c
        :pswitch_3  #0000003d
        :pswitch_3  #0000003e
        :pswitch_3  #0000003f
        :pswitch_3  #00000040
        :pswitch_9  #00000041
        :pswitch_9  #00000042
        :pswitch_3  #00000043
        :pswitch_7  #00000044
        :pswitch_3  #00000045
        :pswitch_9  #00000046
        :pswitch_7  #00000047
        :pswitch_7  #00000048
        :pswitch_7  #00000049
        :pswitch_9  #0000004a
        :pswitch_3  #0000004b
        :pswitch_3  #0000004c
        :pswitch_3  #0000004d
        :pswitch_3  #0000004e
        :pswitch_3  #0000004f
        :pswitch_3  #00000050
        :pswitch_3  #00000051
        :pswitch_3  #00000052
        :pswitch_3  #00000053
        :pswitch_3  #00000054
        :pswitch_7  #00000055
        :pswitch_3  #00000056
        :pswitch_7  #00000057
        :pswitch_7  #00000058
    .end packed-switch
.end method

.method public static getFrequencyRangeGroupFromGeranBand(I)I
    .registers 2

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0xc, 0xd
    const/4 v0, 0x2

    return v0

    :pswitch_7  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xe
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7  #00000001
        :pswitch_7  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_7  #00000007
        :pswitch_7  #00000008
        :pswitch_7  #00000009
        :pswitch_7  #0000000a
        :pswitch_7  #0000000b
        :pswitch_5  #0000000c
        :pswitch_5  #0000000d
        :pswitch_7  #0000000e
    .end packed-switch
.end method

.method public static getFrequencyRangeGroupFromNrBand(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_e

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x4

    return v0

    :sswitch_7
    const/4 v0, 0x3

    return v0

    :sswitch_9
    const/4 v0, 0x1

    return v0

    :sswitch_b
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x3 -> :sswitch_b
        0x5 -> :sswitch_9
        0x7 -> :sswitch_b
        0x8 -> :sswitch_9
        0xc -> :sswitch_9
        0xe -> :sswitch_9
        0x12 -> :sswitch_9
        0x14 -> :sswitch_9
        0x19 -> :sswitch_b
        0x1a -> :sswitch_9
        0x1c -> :sswitch_9
        0x1d -> :sswitch_9
        0x1e -> :sswitch_b
        0x22 -> :sswitch_b
        0x26 -> :sswitch_b
        0x27 -> :sswitch_b
        0x28 -> :sswitch_b
        0x29 -> :sswitch_b
        0x2e -> :sswitch_7
        0x30 -> :sswitch_7
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x35 -> :sswitch_b
        0x41 -> :sswitch_b
        0x42 -> :sswitch_b
        0x46 -> :sswitch_b
        0x47 -> :sswitch_9
        0x4a -> :sswitch_b
        0x4b -> :sswitch_b
        0x4c -> :sswitch_b
        0x4d -> :sswitch_7
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x50 -> :sswitch_b
        0x51 -> :sswitch_9
        0x52 -> :sswitch_9
        0x53 -> :sswitch_9
        0x54 -> :sswitch_b
        0x56 -> :sswitch_b
        0x59 -> :sswitch_9
        0x5a -> :sswitch_b
        0x5b -> :sswitch_b
        0x5c -> :sswitch_b
        0x5d -> :sswitch_b
        0x5e -> :sswitch_b
        0x5f -> :sswitch_b
        0x60 -> :sswitch_5
        0x101 -> :sswitch_5
        0x102 -> :sswitch_5
        0x104 -> :sswitch_5
        0x105 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getFrequencyRangeGroupFromUtranBand(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_c

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x3

    return v0

    :sswitch_7
    const/4 v0, 0x1

    return v0

    :sswitch_9
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_9
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x15 -> :sswitch_9
        0x16 -> :sswitch_5
        0x19 -> :sswitch_9
        0x1a -> :sswitch_7
        0x65 -> :sswitch_9
        0x66 -> :sswitch_9
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x69 -> :sswitch_9
        0x6a -> :sswitch_9
    .end sparse-switch
.end method

.method public static getOperatingBandForArfcn(I)I
    .registers 3

    const/16 v0, 0xa

    if-ltz p0, :cond_9

    const/16 v1, 0x7c

    if-gt p0, v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_14

    const/16 v1, 0xfb

    if-gt p0, v1, :cond_14

    const/16 v0, 0x8

    return v0

    :cond_14
    const/16 v1, 0x103

    if-lt p0, v1, :cond_1e

    const/16 v1, 0x125

    if-gt p0, v1, :cond_1e

    const/4 v0, 0x3

    return v0

    :cond_1e
    const/16 v1, 0x132

    if-lt p0, v1, :cond_28

    const/16 v1, 0x154

    if-gt p0, v1, :cond_28

    const/4 v0, 0x4

    return v0

    :cond_28
    const/16 v1, 0x1b6

    if-lt p0, v1, :cond_32

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_32

    const/4 v0, 0x6

    return v0

    :cond_32
    const/16 v1, 0x200

    if-lt p0, v1, :cond_3d

    const/16 v1, 0x375

    if-gt p0, v1, :cond_3d

    const/16 v0, 0xc

    return v0

    :cond_3d
    const/16 v1, 0x3ac

    if-lt p0, v1, :cond_48

    const/16 v1, 0x3ce

    if-gt p0, v1, :cond_48

    const/16 v0, 0xe

    return v0

    :cond_48
    const/16 v1, 0x3cf

    if-lt p0, v1, :cond_51

    const/16 v1, 0x3ff

    if-gt p0, v1, :cond_51

    return v0

    :cond_51
    const/4 v0, -0x1

    return v0
.end method

.method public static getOperatingBandForEarfcn(I)I
    .registers 3

    const/4 v0, -0x1

    const v1, 0x113f5

    if-le p0, v1, :cond_7

    return v0

    :cond_7
    const v1, 0x113c4

    if-lt p0, v1, :cond_f

    const/16 v0, 0x58

    return v0

    :cond_f
    const v1, 0x11392

    if-lt p0, v1, :cond_17

    const/16 v0, 0x57

    return v0

    :cond_17
    const v1, 0x112de

    if-lt p0, v1, :cond_1f

    const/16 v0, 0x55

    return v0

    :cond_1f
    const v1, 0x10f59

    if-le p0, v1, :cond_25

    return v0

    :cond_25
    const v1, 0x10dac

    if-lt p0, v1, :cond_2d

    const/16 v0, 0x4a

    return v0

    :cond_2d
    const v1, 0x10d7a

    if-lt p0, v1, :cond_35

    const/16 v0, 0x49

    return v0

    :cond_35
    const v1, 0x10d48

    if-lt p0, v1, :cond_3d

    const/16 v0, 0x48

    return v0

    :cond_3d
    const v1, 0x10bea

    if-lt p0, v1, :cond_45

    const/16 v0, 0x47

    return v0

    :cond_45
    const v1, 0x10af0

    if-lt p0, v1, :cond_4d

    const/16 v0, 0x46

    return v0

    :cond_4d
    const v1, 0x108fb

    if-le p0, v1, :cond_53

    return v0

    :cond_53
    const v1, 0x107d0

    if-lt p0, v1, :cond_5b

    const/16 v0, 0x44

    return v0

    :cond_5b
    const v1, 0x10726

    if-lt p0, v1, :cond_61

    return v0

    :cond_61
    const v1, 0x10384

    if-lt p0, v1, :cond_69

    const/16 v0, 0x42

    return v0

    :cond_69
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_70

    const/16 v0, 0x41

    return v0

    :cond_70
    const v1, 0xeb5e

    if-le p0, v1, :cond_76

    return v0

    :cond_76
    const v1, 0xeaec

    if-lt p0, v1, :cond_7e

    const/16 v0, 0x35

    return v0

    :cond_7e
    const v1, 0xe704

    if-lt p0, v1, :cond_86

    const/16 v0, 0x34

    return v0

    :cond_86
    const v1, 0xe6d2

    if-lt p0, v1, :cond_8e

    const/16 v0, 0x33

    return v0

    :cond_8e
    const v1, 0xe380

    if-lt p0, v1, :cond_96

    const/16 v0, 0x32

    return v0

    :cond_96
    const v1, 0xdda4

    if-lt p0, v1, :cond_9e

    const/16 v0, 0x31

    return v0

    :cond_9e
    const v1, 0xd7c8

    if-lt p0, v1, :cond_a6

    const/16 v0, 0x30

    return v0

    :cond_a6
    const v1, 0xd50c

    if-lt p0, v1, :cond_ae

    const/16 v0, 0x2f

    return v0

    :cond_ae
    const v1, 0xb6c6

    if-lt p0, v1, :cond_b6

    const/16 v0, 0x2e

    return v0

    :cond_b6
    const v1, 0xb5fe

    if-lt p0, v1, :cond_be

    const/16 v0, 0x2d

    return v0

    :cond_be
    const v1, 0xb216

    if-lt p0, v1, :cond_c6

    const/16 v0, 0x2c

    return v0

    :cond_c6
    const v1, 0xaa46

    if-lt p0, v1, :cond_ce

    const/16 v0, 0x2b

    return v0

    :cond_ce
    const v1, 0xa276

    if-lt p0, v1, :cond_d6

    const/16 v0, 0x2a

    return v0

    :cond_d6
    const v1, 0x9ae2

    if-lt p0, v1, :cond_de

    const/16 v0, 0x29

    return v0

    :cond_de
    const v1, 0x96fa

    if-lt p0, v1, :cond_e6

    const/16 v0, 0x28

    return v0

    :cond_e6
    const v1, 0x956a

    if-lt p0, v1, :cond_ee

    const/16 v0, 0x27

    return v0

    :cond_ee
    const v1, 0x9376

    if-lt p0, v1, :cond_f6

    const/16 v0, 0x26

    return v0

    :cond_f6
    const v1, 0x92ae

    if-lt p0, v1, :cond_fe

    const/16 v0, 0x25

    return v0

    :cond_fe
    const v1, 0x9056

    if-lt p0, v1, :cond_106

    const/16 v0, 0x24

    return v0

    :cond_106
    const v1, 0x8dfe

    if-lt p0, v1, :cond_10e

    const/16 v0, 0x23

    return v0

    :cond_10e
    const v1, 0x8d68

    if-lt p0, v1, :cond_116

    const/16 v0, 0x22

    return v0

    :cond_116
    const v1, 0x8ca0

    if-lt p0, v1, :cond_11e

    const/16 v0, 0x21

    return v0

    :cond_11e
    const/16 v1, 0x2877

    if-le p0, v1, :cond_123

    return v0

    :cond_123
    const/16 v1, 0x26c0

    if-lt p0, v1, :cond_128

    return v0

    :cond_128
    const/16 v1, 0x268e

    if-lt p0, v1, :cond_12f

    const/16 v0, 0x1f

    return v0

    :cond_12f
    const/16 v1, 0x262a

    if-lt p0, v1, :cond_136

    const/16 v0, 0x1e

    return v0

    :cond_136
    const/16 v1, 0x25bc

    if-lt p0, v1, :cond_13b

    return v0

    :cond_13b
    const/16 v1, 0x23fa

    if-lt p0, v1, :cond_142

    const/16 v0, 0x1c

    return v0

    :cond_142
    const/16 v1, 0x2350

    if-lt p0, v1, :cond_149

    const/16 v0, 0x1b

    return v0

    :cond_149
    const/16 v1, 0x21f2

    if-lt p0, v1, :cond_150

    const/16 v0, 0x1a

    return v0

    :cond_150
    const/16 v1, 0x1f68

    if-lt p0, v1, :cond_157

    const/16 v0, 0x19

    return v0

    :cond_157
    const/16 v1, 0x1e14

    if-lt p0, v1, :cond_15e

    const/16 v0, 0x18

    return v0

    :cond_15e
    const/16 v1, 0x1d4c

    if-lt p0, v1, :cond_165

    const/16 v0, 0x17

    return v0

    :cond_165
    const/16 v1, 0x19c8

    if-lt p0, v1, :cond_16c

    const/16 v0, 0x16

    return v0

    :cond_16c
    const/16 v1, 0x1932

    if-lt p0, v1, :cond_173

    const/16 v0, 0x15

    return v0

    :cond_173
    const/16 v1, 0x1806

    if-lt p0, v1, :cond_17a

    const/16 v0, 0x14

    return v0

    :cond_17a
    const/16 v1, 0x1770

    if-lt p0, v1, :cond_181

    const/16 v0, 0x13

    return v0

    :cond_181
    const/16 v1, 0x16da

    if-lt p0, v1, :cond_188

    const/16 v0, 0x12

    return v0

    :cond_188
    const/16 v1, 0x1662

    if-lt p0, v1, :cond_18f

    const/16 v0, 0x11

    return v0

    :cond_18f
    const/16 v1, 0x1503

    if-le p0, v1, :cond_194

    return v0

    :cond_194
    const/16 v1, 0x14a0

    if-lt p0, v1, :cond_19b

    const/16 v0, 0xe

    return v0

    :cond_19b
    const/16 v1, 0x143c

    if-lt p0, v1, :cond_1a2

    const/16 v0, 0xd

    return v0

    :cond_1a2
    const/16 v1, 0x1392

    if-lt p0, v1, :cond_1a9

    const/16 v0, 0xc

    return v0

    :cond_1a9
    const/16 v1, 0x128e

    if-lt p0, v1, :cond_1b0

    const/16 v0, 0xb

    return v0

    :cond_1b0
    const/16 v1, 0x1036

    if-lt p0, v1, :cond_1b7

    const/16 v0, 0xa

    return v0

    :cond_1b7
    const/16 v1, 0xed8

    if-lt p0, v1, :cond_1be

    const/16 v0, 0x9

    return v0

    :cond_1be
    const/16 v1, 0xd7a

    if-lt p0, v1, :cond_1c5

    const/16 v0, 0x8

    return v0

    :cond_1c5
    const/16 v1, 0xabe

    if-lt p0, v1, :cond_1cb

    const/4 v0, 0x7

    return v0

    :cond_1cb
    const/16 v1, 0xa5a

    if-lt p0, v1, :cond_1d1

    const/4 v0, 0x6

    return v0

    :cond_1d1
    const/16 v1, 0x960

    if-lt p0, v1, :cond_1d7

    const/4 v0, 0x5

    return v0

    :cond_1d7
    const/16 v1, 0x79e

    if-lt p0, v1, :cond_1dd

    const/4 v0, 0x4

    return v0

    :cond_1dd
    const/16 v1, 0x4b0

    if-lt p0, v1, :cond_1e3

    const/4 v0, 0x3

    return v0

    :cond_1e3
    const/16 v1, 0x258

    if-lt p0, v1, :cond_1e9

    const/4 v0, 0x2

    return v0

    :cond_1e9
    if-ltz p0, :cond_1ed

    const/4 v0, 0x1

    return v0

    :cond_1ed
    return v0
.end method

.method public static getOperatingBandForUarfcn(I)I
    .registers 17

    move/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [I

    fill-array-data v2, :array_17e

    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_19a

    const/4 v5, 0x6

    new-array v6, v5, [I

    fill-array-data v6, :array_1b0

    const/4 v7, 0x2

    new-array v8, v7, [I

    fill-array-data v8, :array_1c0

    const/16 v9, 0xe

    new-array v10, v9, [I

    fill-array-data v10, :array_1c8

    new-array v11, v1, [I

    fill-array-data v11, :array_1e8

    const/4 v12, 0x5

    new-array v13, v12, [I

    fill-array-data v13, :array_204

    new-array v14, v7, [I

    fill-array-data v14, :array_212

    new-array v15, v7, [I

    fill-array-data v15, :array_21a

    const/4 v9, 0x3

    new-array v1, v9, [I

    fill-array-data v1, :array_222

    const/16 v3, 0xd

    new-array v12, v3, [I

    fill-array-data v12, :array_22c

    const/16 v3, 0xb

    new-array v5, v3, [I

    fill-array-data v5, :array_24a

    const/16 v3, 0x2942

    if-lt v0, v3, :cond_56

    const/16 v3, 0x2a56

    if-gt v0, v3, :cond_56

    const/4 v3, 0x1

    return v3

    :cond_56
    const/16 v3, 0x25be

    if-lt v0, v3, :cond_5e

    const/16 v3, 0x26d2

    if-le v0, v3, :cond_64

    :cond_5e
    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_65

    :cond_64
    return v7

    :cond_65
    const/16 v3, 0x48a

    if-lt v0, v3, :cond_6e

    const/16 v3, 0x5e9

    if-gt v0, v3, :cond_6e

    return v9

    :cond_6e
    const/16 v3, 0x601

    if-lt v0, v3, :cond_76

    const/16 v3, 0x6ca

    if-le v0, v3, :cond_7c

    :cond_76
    invoke-static {v4, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_7e

    :cond_7c
    const/4 v3, 0x4

    return v3

    :cond_7e
    const/16 v3, 0x1123

    if-lt v0, v3, :cond_9b

    const/16 v3, 0x113d

    if-gt v0, v3, :cond_9b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "jp"

    invoke-virtual {v7, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_99

    const/4 v7, 0x6

    return v7

    :cond_99
    const/4 v7, 0x5

    return v7

    :cond_9b
    const/16 v3, 0x1105

    if-lt v0, v3, :cond_a3

    const/16 v3, 0x116a

    if-le v0, v3, :cond_a9

    :cond_a3
    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_ab

    :cond_a9
    const/4 v3, 0x5

    return v3

    :cond_ab
    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_b3

    const/4 v3, 0x6

    return v3

    :cond_b3
    const/16 v3, 0x8bd

    if-lt v0, v3, :cond_bb

    const/16 v3, 0xa03

    if-le v0, v3, :cond_c1

    :cond_bb
    invoke-static {v10, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_c3

    :cond_c1
    const/4 v3, 0x7

    return v3

    :cond_c3
    const/16 v3, 0xb79

    if-lt v0, v3, :cond_ce

    const/16 v3, 0xc10

    if-gt v0, v3, :cond_ce

    const/16 v3, 0x8

    return v3

    :cond_ce
    const/16 v3, 0x2415

    if-lt v0, v3, :cond_d9

    const/16 v3, 0x24ab

    if-gt v0, v3, :cond_d9

    const/16 v3, 0x9

    return v3

    :cond_d9
    const/16 v3, 0xc28

    if-lt v0, v3, :cond_e1

    const/16 v3, 0xd3c

    if-le v0, v3, :cond_e7

    :cond_e1
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_ea

    :cond_e7
    const/16 v3, 0xa

    return v3

    :cond_ea
    const/16 v3, 0xe80

    if-lt v0, v3, :cond_f5

    const/16 v3, 0xecb

    if-gt v0, v3, :cond_f5

    const/16 v3, 0xb

    return v3

    :cond_f5
    const/16 v3, 0xf02

    if-lt v0, v3, :cond_fd

    const/16 v3, 0xf3f

    if-le v0, v3, :cond_103

    :cond_fd
    invoke-static {v13, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_106

    :cond_103
    const/16 v3, 0xc

    return v3

    :cond_106
    const/16 v3, 0xfb1

    if-lt v0, v3, :cond_10e

    const/16 v3, 0xfcb

    if-le v0, v3, :cond_114

    :cond_10e
    invoke-static {v14, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_117

    :cond_114
    const/16 v3, 0xd

    return v3

    :cond_117
    const/16 v3, 0x1015

    if-lt v0, v3, :cond_11f

    const/16 v3, 0x102f

    if-le v0, v3, :cond_125

    :cond_11f
    invoke-static {v15, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_128

    :cond_125
    const/16 v3, 0xe

    return v3

    :cond_128
    const/16 v3, 0x2c8

    if-lt v0, v3, :cond_130

    const/16 v3, 0x2fb

    if-le v0, v3, :cond_136

    :cond_130
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_139

    :cond_136
    const/16 v3, 0x13

    return v3

    :cond_139
    const/16 v3, 0x11a0

    if-lt v0, v3, :cond_144

    const/16 v3, 0x121e

    if-gt v0, v3, :cond_144

    const/16 v3, 0x14

    return v3

    :cond_144
    const/16 v3, 0x35e

    if-lt v0, v3, :cond_14f

    const/16 v3, 0x390

    if-gt v0, v3, :cond_14f

    const/16 v3, 0x15

    return v3

    :cond_14f
    const/16 v3, 0x1236

    if-lt v0, v3, :cond_15a

    const/16 v3, 0x13ae

    if-gt v0, v3, :cond_15a

    const/16 v3, 0x16

    return v3

    :cond_15a
    const/16 v3, 0x13f8

    if-lt v0, v3, :cond_162

    const/16 v3, 0x1525

    if-le v0, v3, :cond_168

    :cond_162
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_16b

    :cond_168
    const/16 v3, 0x19

    return v3

    :cond_16b
    const/16 v3, 0x1682

    if-lt v0, v3, :cond_173

    const/16 v3, 0x1719

    if-le v0, v3, :cond_179

    :cond_173
    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_17c

    :cond_179
    const/16 v3, 0x1a

    return v3

    :cond_17c
    const/4 v3, -0x1

    return v3

    :array_17e
    .array-data 4
        0x19c
        0x1b5
        0x1ce
        0x1e7
        0x200
        0x219
        0x232
        0x24b
        0x264
        0x27d
        0x296
        0x2af
    .end array-data

    :array_19a
    .array-data 4
        0x75f
        0x778
        0x791
        0x7aa
        0x7c3
        0x7dc
        0x7f5
        0x80e
        0x827
    .end array-data

    :array_1b0
    .array-data 4
        0x3ef
        0x3f4
        0x408
        0x40d
        0x426
        0x43f
    .end array-data

    :array_1c0
    .array-data 4
        0x40d
        0x426
    .end array-data

    :array_1c8
    .array-data 4
        0xa1b
        0xa34
        0xa4d
        0xa66
        0xa7f
        0xa98
        0xab1
        0xaca
        0xae3
        0xafc
        0xb15
        0xb2e
        0xb47
        0xb60
    .end array-data

    :array_1e8
    .array-data 4
        0xd54
        0xd6d
        0xd86
        0xd9f
        0xdb8
        0xdd1
        0xdea
        0xe03
        0xe1c
        0xe35
        0xe4e
        0xe67
    .end array-data

    :array_204
    .array-data 4
        0xf5c
        0xf75
        0xf7a
        0xf93
        0xf98
    .end array-data

    :array_212
    .array-data 4
        0xfe3
        0xffc
    .end array-data

    :array_21a
    .array-data 4
        0x1047
        0x1060
    .end array-data

    :array_222
    .array-data 4
        0x313
        0x32c
        0x345
    .end array-data

    :array_22c
    .array-data 4
        0x1894
        0x18ad
        0x18c6
        0x18df
        0x18f8
        0x1911
        0x192a
        0x1943
        0x195c
        0x1975
        0x198e
        0x19a7
        0x19c0
    .end array-data

    :array_24a
    .array-data 4
        0x1731
        0x174a
        0x1763
        0x1768
        0x177c
        0x1781
        0x1795
        0x179a
        0x17ae
        0x17b3
        0x17c7
    .end array-data
.end method

.method private static isInEarfcnRange(ILandroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkOffset:I

    if-lt p0, v2, :cond_d

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->uplinkRange:I

    if-gt p0, v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkOffset:I

    if-lt p0, v2, :cond_18

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;->downlinkRange:I

    if-gt p0, v2, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0
.end method

.method private static isInUarfcnRange(ILandroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_e

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeFirst:I

    if-lt p0, v2, :cond_d

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeLast:I

    if-gt p0, v2, :cond_d

    move v0, v1

    :cond_d
    return v0

    :cond_e
    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-eqz v2, :cond_20

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-eqz v2, :cond_20

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    if-lt p0, v2, :cond_1f

    iget v2, p1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    if-gt p0, v2, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    :cond_20
    return v1
.end method
