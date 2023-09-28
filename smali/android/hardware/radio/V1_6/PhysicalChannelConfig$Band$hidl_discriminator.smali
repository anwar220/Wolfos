# classes2.dex

.class public final Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final eutranBand:B = 0x2t

.field public static final geranBand:B = 0x0t

.field public static final ngranBand:B = 0x3t

.field public static final utranBand:B = 0x1t


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "Unknown"

    return-object v0

    :pswitch_6  #0x3
    const-string v0, "ngranBand"

    return-object v0

    :pswitch_9  #0x2
    const-string v0, "eutranBand"

    return-object v0

    :pswitch_c  #0x1
    const-string v0, "utranBand"

    return-object v0

    :pswitch_f  #0x0
    const-string v0, "geranBand"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_c  #00000001
        :pswitch_9  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
