# classes3.dex

.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CDMA:I = 0x48

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x2830

.field private static final GSM:I = 0x8003

.field private static final HS:I = 0x4380

.field private static final LTE:I = 0x41000

.field private static final NR:I = 0x80000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x2

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x10

.field public static final RAF_EVDO_A:I = 0x20

.field public static final RAF_EVDO_B:I = 0x800

.field public static final RAF_GPRS:I = 0x1

.field public static final RAF_GSM:I = 0x8000

.field public static final RAF_HSDPA:I = 0x80

.field public static final RAF_HSPA:I = 0x200

.field public static final RAF_HSPAP:I = 0x4000

.field public static final RAF_HSUPA:I = 0x100

.field public static final RAF_IS95A:I = 0x8

.field public static final RAF_IS95B:I = 0x8

.field public static final RAF_LTE:I = 0x1000

.field public static final RAF_LTE_CA:I = 0x40000

.field public static final RAF_NR:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x10000

.field public static final RAF_UMTS:I = 0x4

.field public static final RAF_UNKNOWN:I = 0x0

.field private static final WCDMA:I = 0x4384


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return-void
.end method

.method public static compare(JJ)I
    .registers 22

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_38

    not-long v5, v2

    and-long/2addr v5, v0

    not-long v7, v0

    and-long/2addr v7, v2

    array-length v9, v4

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v9, :cond_2d

    aget-wide v11, v4, v10

    const/4 v13, 0x0

    and-long v14, v5, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1f

    add-int/lit8 v13, v13, 0x1

    :cond_1f
    and-long v14, v7, v11

    cmp-long v14, v14, v16

    if-eqz v14, :cond_27

    add-int/lit8 v13, v13, -0x1

    :cond_27
    if-eqz v13, :cond_2a

    return v13

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_2d
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    return v9

    nop

    :array_38
    .array-data 8
        0x80000
        0x61000
        0x16bb4
        0x804b
    .end array-data
.end method

.method private static getAdjustedRaf(I)I
    .registers 3

    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_9

    or-int/2addr v0, p0

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    move p0, v0

    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_12

    or-int/lit16 v0, p0, 0x4384

    goto :goto_13

    :cond_12
    move v0, p0

    :goto_13
    move p0, v0

    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_1b

    or-int/lit8 v0, p0, 0x48

    goto :goto_1c

    :cond_1b
    move v0, p0

    :goto_1c
    move p0, v0

    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_24

    or-int/lit16 v0, p0, 0x2830

    goto :goto_25

    :cond_24
    move v0, p0

    :goto_25
    move p0, v0

    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_2f

    or-int/2addr v0, p0

    goto :goto_30

    :cond_2f
    move v0, p0

    :goto_30
    move p0, v0

    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_39

    or-int/2addr v0, p0

    goto :goto_3a

    :cond_39
    move v0, p0

    :goto_3a
    move p0, v0

    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .registers 2

    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_66

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    :sswitch_a
    const/16 v0, 0x21

    return v0

    :sswitch_d
    const/16 v0, 0x20

    return v0

    :sswitch_10
    const/16 v0, 0x1e

    return v0

    :sswitch_13
    const/16 v0, 0x1f

    return v0

    :sswitch_16
    const/16 v0, 0x1d

    return v0

    :sswitch_19
    const/16 v0, 0x1b

    return v0

    :sswitch_1c
    const/16 v0, 0x1a

    return v0

    :sswitch_1f
    const/16 v0, 0x1c

    return v0

    :sswitch_22
    const/16 v0, 0x19

    return v0

    :sswitch_25
    const/16 v0, 0x18

    return v0

    :sswitch_28
    const/16 v0, 0x17

    return v0

    :sswitch_2b
    const/16 v0, 0x16

    return v0

    :sswitch_2e
    const/16 v0, 0x14

    return v0

    :sswitch_31
    const/16 v0, 0x11

    return v0

    :sswitch_34
    const/16 v0, 0x13

    return v0

    :sswitch_37
    const/16 v0, 0xf

    return v0

    :sswitch_3a
    const/16 v0, 0xa

    return v0

    :sswitch_3d
    const/16 v0, 0x9

    return v0

    :sswitch_40
    const/16 v0, 0xc

    return v0

    :sswitch_43
    const/16 v0, 0x8

    return v0

    :sswitch_46
    const/16 v0, 0xb

    return v0

    :sswitch_49
    const/16 v0, 0x15

    return v0

    :sswitch_4c
    const/16 v0, 0x12

    return v0

    :sswitch_4f
    const/16 v0, 0x10

    return v0

    :sswitch_52
    const/16 v0, 0xe

    return v0

    :sswitch_55
    const/16 v0, 0xd

    return v0

    :sswitch_58
    const/4 v0, 0x7

    return v0

    :sswitch_5a
    const/4 v0, 0x0

    return v0

    :sswitch_5c
    const/4 v0, 0x1

    return v0

    :sswitch_5e
    const/4 v0, 0x2

    return v0

    :sswitch_60
    const/4 v0, 0x4

    return v0

    :sswitch_62
    const/4 v0, 0x6

    return v0

    :sswitch_64
    const/4 v0, 0x5

    return v0

    :sswitch_data_66
    .sparse-switch
        0x48 -> :sswitch_64
        0x2830 -> :sswitch_62
        0x2878 -> :sswitch_60
        0x4384 -> :sswitch_5e
        0x8003 -> :sswitch_5c
        0xc387 -> :sswitch_5a
        0xebff -> :sswitch_58
        0x10000 -> :sswitch_55
        0x14384 -> :sswitch_52
        0x18003 -> :sswitch_4f
        0x1c387 -> :sswitch_4c
        0x1ebff -> :sswitch_49
        0x41000 -> :sswitch_46
        0x43878 -> :sswitch_43
        0x45384 -> :sswitch_40
        0x4d387 -> :sswitch_3d
        0x4fbff -> :sswitch_3a
        0x51000 -> :sswitch_37
        0x55384 -> :sswitch_34
        0x59003 -> :sswitch_31
        0x5d387 -> :sswitch_2e
        0x5fbff -> :sswitch_2b
        0x80000 -> :sswitch_28
        0xc1000 -> :sswitch_25
        0xc3878 -> :sswitch_22
        0xc5384 -> :sswitch_1f
        0xcd387 -> :sswitch_1c
        0xcfbff -> :sswitch_19
        0xd1000 -> :sswitch_16
        0xd5384 -> :sswitch_13
        0xd9003 -> :sswitch_10
        0xdd387 -> :sswitch_d
        0xdfbff -> :sswitch_a
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .registers 2

    const v0, 0xc387

    packed-switch p0, :pswitch_data_84

    const/4 v0, 0x0

    return v0

    :pswitch_8  #0x21
    const v0, 0xdfbff

    return v0

    :pswitch_c  #0x20
    const v0, 0xdd387

    return v0

    :pswitch_10  #0x1f
    const v0, 0xd5384

    return v0

    :pswitch_14  #0x1e
    const v0, 0xd9003

    return v0

    :pswitch_18  #0x1d
    const v0, 0xd1000

    return v0

    :pswitch_1c  #0x1c
    const v0, 0xc5384

    return v0

    :pswitch_20  #0x1b
    const v0, 0xcfbff

    return v0

    :pswitch_24  #0x1a
    const v0, 0xcd387

    return v0

    :pswitch_28  #0x19
    const v0, 0xc3878

    return v0

    :pswitch_2c  #0x18
    const v0, 0xc1000

    return v0

    :pswitch_30  #0x17
    const/high16 v0, 0x80000

    return v0

    :pswitch_33  #0x16
    const v0, 0x5fbff

    return v0

    :pswitch_37  #0x15
    const v0, 0x1ebff

    return v0

    :pswitch_3b  #0x14
    const v0, 0x5d387

    return v0

    :pswitch_3f  #0x13
    const v0, 0x55384

    return v0

    :pswitch_43  #0x12
    const v0, 0x1c387

    return v0

    :pswitch_47  #0x11
    const v0, 0x59003

    return v0

    :pswitch_4b  #0x10
    const v0, 0x18003

    return v0

    :pswitch_4f  #0xf
    const v0, 0x51000

    return v0

    :pswitch_53  #0xe
    const v0, 0x14384

    return v0

    :pswitch_57  #0xd
    const/high16 v0, 0x10000

    return v0

    :pswitch_5a  #0xc
    const v0, 0x45384

    return v0

    :pswitch_5e  #0xb
    const v0, 0x41000

    return v0

    :pswitch_62  #0xa
    const v0, 0x4fbff

    return v0

    :pswitch_66  #0x9
    const v0, 0x4d387

    return v0

    :pswitch_6a  #0x8
    const v0, 0x43878

    return v0

    :pswitch_6e  #0x7
    const v0, 0xebff

    return v0

    :pswitch_72  #0x6
    const/16 v0, 0x2830

    return v0

    :pswitch_75  #0x5
    const/16 v0, 0x48

    return v0

    :pswitch_78  #0x4
    const/16 v0, 0x2878

    return v0

    :pswitch_7b  #0x3
    return v0

    :pswitch_7c  #0x2
    const/16 v0, 0x4384

    return v0

    :pswitch_7f  #0x1
    const v0, 0x8003

    return v0

    :pswitch_83  #0x0
    return v0

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_83  #00000000
        :pswitch_7f  #00000001
        :pswitch_7c  #00000002
        :pswitch_7b  #00000003
        :pswitch_78  #00000004
        :pswitch_75  #00000005
        :pswitch_72  #00000006
        :pswitch_6e  #00000007
        :pswitch_6a  #00000008
        :pswitch_66  #00000009
        :pswitch_62  #0000000a
        :pswitch_5e  #0000000b
        :pswitch_5a  #0000000c
        :pswitch_57  #0000000d
        :pswitch_53  #0000000e
        :pswitch_4f  #0000000f
        :pswitch_4b  #00000010
        :pswitch_47  #00000011
        :pswitch_43  #00000012
        :pswitch_3f  #00000013
        :pswitch_3b  #00000014
        :pswitch_37  #00000015
        :pswitch_33  #00000016
        :pswitch_30  #00000017
        :pswitch_2c  #00000018
        :pswitch_28  #00000019
        :pswitch_24  #0000001a
        :pswitch_20  #0000001b
        :pswitch_1c  #0000001c
        :pswitch_18  #0000001d
        :pswitch_14  #0000001e
        :pswitch_10  #0000001f
        :pswitch_c  #00000020
        :pswitch_8  #00000021
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1c

    return v5

    :cond_1c
    or-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_20
    return v1
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    sparse-switch v0, :sswitch_data_152

    :cond_f
    goto/16 :goto_112

    :sswitch_11
    const-string v0, "EVDO_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_113

    :sswitch_1d
    const-string v0, "EVDO_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_113

    :sswitch_28
    const-string v0, "EVDO_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto/16 :goto_113

    :sswitch_33
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto/16 :goto_113

    :sswitch_3f
    const-string v0, "IS95B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto/16 :goto_113

    :sswitch_4a
    const-string v0, "IS95A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_113

    :sswitch_55
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_113

    :sswitch_61
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto/16 :goto_113

    :sswitch_6d
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    goto/16 :goto_113

    :sswitch_78
    const-string v0, "EHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_113

    :sswitch_84
    const-string v0, "1XRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_113

    :sswitch_8f
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto/16 :goto_113

    :sswitch_9a
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_113

    :sswitch_a6
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_113

    :sswitch_b1
    const-string v0, "EVDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto :goto_113

    :sswitch_bc
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_113

    :sswitch_c6
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto :goto_113

    :sswitch_d1
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto :goto_113

    :sswitch_dc
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto :goto_113

    :sswitch_e7
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto :goto_113

    :sswitch_f2
    const-string v0, "HS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto :goto_113

    :sswitch_fd
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_113

    :sswitch_107
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto :goto_113

    :goto_112
    const/4 v0, -0x1

    :goto_113
    packed-switch v0, :pswitch_data_1b0

    return v1

    :pswitch_117  #0x16
    const/high16 v0, 0x80000

    return v0

    :pswitch_11a  #0x15
    const/high16 v0, 0x40000

    return v0

    :pswitch_11d  #0x14
    const/16 v0, 0x4384

    return v0

    :pswitch_120  #0x13
    const/16 v0, 0x2830

    return v0

    :pswitch_123  #0x12
    const/16 v0, 0x48

    return v0

    :pswitch_126  #0x11
    const/16 v0, 0x4380

    return v0

    :pswitch_129  #0x10
    const/high16 v0, 0x10000

    return v0

    :pswitch_12c  #0xf
    const v0, 0x8000

    return v0

    :pswitch_130  #0xe
    const/16 v0, 0x4000

    return v0

    :pswitch_133  #0xd
    const/16 v0, 0x1000

    return v0

    :pswitch_136  #0xc
    const/16 v0, 0x2000

    return v0

    :pswitch_139  #0xb
    const/16 v0, 0x800

    return v0

    :pswitch_13c  #0xa
    const/16 v0, 0x200

    return v0

    :pswitch_13f  #0x9
    const/16 v0, 0x100

    return v0

    :pswitch_142  #0x8
    const/16 v0, 0x80

    return v0

    :pswitch_145  #0x7
    const/16 v0, 0x20

    return v0

    :pswitch_148  #0x6
    return v2

    :pswitch_149  #0x5
    const/16 v0, 0x40

    return v0

    :pswitch_14c  #0x4
    return v6

    :pswitch_14d  #0x3
    return v6

    :pswitch_14e  #0x2
    return v3

    :pswitch_14f  #0x1
    return v4

    :pswitch_150  #0x0
    return v5

    nop

    :sswitch_data_152
    .sparse-switch
        -0x798f2fe0 -> :sswitch_107
        -0x36280a07 -> :sswitch_fd
        0x90b -> :sswitch_f2
        0x9c4 -> :sswitch_e7
        0x114e1 -> :sswitch_dc
        0x127bd -> :sswitch_d1
        0x1f7db5 -> :sswitch_c6
        0x2065bd -> :sswitch_bc
        0x20a8fc -> :sswitch_b1
        0x217cea -> :sswitch_a6
        0x21fc3c -> :sswitch_9a
        0x27cf17 -> :sswitch_8f
        0x2dbbeab -> :sswitch_84
        0x3ee4e43 -> :sswitch_78
        0x41d604a -> :sswitch_6d
        0x41d8b94 -> :sswitch_61
        0x41da01b -> :sswitch_55
        0x42b4b3b -> :sswitch_4a
        0x42b4b3c -> :sswitch_3f
        0x4e97a8c -> :sswitch_33
        0x7a9a65ad -> :sswitch_28
        0x7a9a65be -> :sswitch_1d
        0x7a9a65bf -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_150  #00000000
        :pswitch_14f  #00000001
        :pswitch_14e  #00000002
        :pswitch_14d  #00000003
        :pswitch_14c  #00000004
        :pswitch_149  #00000005
        :pswitch_148  #00000006
        :pswitch_145  #00000007
        :pswitch_142  #00000008
        :pswitch_13f  #00000009
        :pswitch_13c  #0000000a
        :pswitch_139  #0000000b
        :pswitch_136  #0000000c
        :pswitch_133  #0000000d
        :pswitch_130  #0000000e
        :pswitch_12c  #0000000f
        :pswitch_129  #00000010
        :pswitch_126  #00000011
        :pswitch_123  #00000012
        :pswitch_120  #00000013
        :pswitch_11d  #00000014
        :pswitch_11a  #00000015
        :pswitch_117  #00000016
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .registers 2

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .registers 2

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRadioAccessFamily = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

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

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
