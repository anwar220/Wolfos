# classes2.dex

.class public final Landroid/hardware/radio/V1_4/CellInfo$Info$hidl_discriminator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/CellInfo$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdma:B = 0x1t

.field public static final gsm:B = 0x0t

.field public static final lte:B = 0x4t

.field public static final nr:B = 0x5t

.field public static final tdscdma:B = 0x3t

.field public static final wcdma:B = 0x2t


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string v0, "Unknown"

    return-object v0

    :pswitch_6  #0x5
    const-string v0, "nr"

    return-object v0

    :pswitch_9  #0x4
    const-string v0, "lte"

    return-object v0

    :pswitch_c  #0x3
    const-string v0, "tdscdma"

    return-object v0

    :pswitch_f  #0x2
    const-string v0, "wcdma"

    return-object v0

    :pswitch_12  #0x1
    const-string v0, "cdma"

    return-object v0

    :pswitch_15  #0x0
    const-string v0, "gsm"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_12  #00000001
        :pswitch_f  #00000002
        :pswitch_c  #00000003
        :pswitch_9  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
