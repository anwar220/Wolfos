# classes4.dex

.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .registers 4

    const v0, 0x1040471

    packed-switch p0, :pswitch_data_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Http"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_1f  #0x0
    const v0, 0x1040479

    return v0

    :pswitch_23  #0xffffffff
    return v0

    :pswitch_24  #0xfffffffe
    const v0, 0x1040478

    return v0

    :pswitch_28  #0xfffffffd
    const v0, 0x104047e

    return v0

    :pswitch_2c  #0xfffffffc
    const v0, 0x1040472

    return v0

    :pswitch_30  #0xfffffffb
    const v0, 0x104047a

    return v0

    :pswitch_34  #0xfffffffa
    const v0, 0x1040473

    return v0

    :pswitch_38  #0xfffffff9
    const v0, 0x1040477

    return v0

    :pswitch_3c  #0xfffffff8
    const v0, 0x104047c

    return v0

    :pswitch_40  #0xfffffff7
    const v0, 0x104047b

    return v0

    :pswitch_44  #0xfffffff6
    const v0, 0x1040008

    return v0

    :pswitch_48  #0xfffffff5
    const v0, 0x1040474

    return v0

    :pswitch_4c  #0xfffffff4
    const v0, 0x1040007

    return v0

    :pswitch_50  #0xfffffff3
    const v0, 0x1040475

    return v0

    :pswitch_54  #0xfffffff2
    const v0, 0x1040476

    return v0

    :pswitch_58  #0xfffffff1
    const v0, 0x104047d

    return v0

    :pswitch_data_5c
    .packed-switch -0xf
        :pswitch_58  #fffffff1
        :pswitch_54  #fffffff2
        :pswitch_50  #fffffff3
        :pswitch_4c  #fffffff4
        :pswitch_48  #fffffff5
        :pswitch_44  #fffffff6
        :pswitch_40  #fffffff7
        :pswitch_3c  #fffffff8
        :pswitch_38  #fffffff9
        :pswitch_34  #fffffffa
        :pswitch_30  #fffffffb
        :pswitch_2c  #fffffffc
        :pswitch_28  #fffffffd
        :pswitch_24  #fffffffe
        :pswitch_23  #ffffffff
        :pswitch_1f  #00000000
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
