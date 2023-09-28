# classes.dex

.class public Landroid/graphics/PorterDuff;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PorterDuff$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intToMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    packed-switch p0, :pswitch_data_3a

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_6  #0x11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_9  #0x10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_c  #0xf
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_f  #0xe
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_12  #0xd
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_15  #0xc
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_18  #0xb
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1b  #0xa
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1e  #0x9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_21  #0x8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_24  #0x7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_27  #0x6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2a  #0x5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2d  #0x4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_30  #0x3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_33  #0x2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_36  #0x1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36  #00000001
        :pswitch_33  #00000002
        :pswitch_30  #00000003
        :pswitch_2d  #00000004
        :pswitch_2a  #00000005
        :pswitch_27  #00000006
        :pswitch_24  #00000007
        :pswitch_21  #00000008
        :pswitch_1e  #00000009
        :pswitch_1b  #0000000a
        :pswitch_18  #0000000b
        :pswitch_15  #0000000c
        :pswitch_12  #0000000d
        :pswitch_f  #0000000e
        :pswitch_c  #0000000f
        :pswitch_9  #00000010
        :pswitch_6  #00000011
    .end packed-switch
.end method

.method public static modeToInt(Landroid/graphics/PorterDuff$Mode;)I
    .registers 2

    iget v0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    return v0
.end method
