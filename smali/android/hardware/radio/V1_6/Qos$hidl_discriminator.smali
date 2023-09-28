# classes2.dex

.class public final Landroid/hardware/radio/V1_6/Qos$hidl_discriminator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/Qos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final eps:B = 0x1t

.field public static final noinit:B = 0x0t

.field public static final nr:B = 0x2t


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "Unknown"

    return-object v0

    :pswitch_6  #0x2
    const-string v0, "nr"

    return-object v0

    :pswitch_9  #0x1
    const-string v0, "eps"

    return-object v0

    :pswitch_c  #0x0
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_9  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
