# classes2.dex

.class public final Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdmaInfo:B = 0x1t

.field public static final eutranInfo:B = 0x2t

.field public static final noinit:B


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
    const-string v0, "eutranInfo"

    return-object v0

    :pswitch_9  #0x1
    const-string v0, "cdmaInfo"

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
