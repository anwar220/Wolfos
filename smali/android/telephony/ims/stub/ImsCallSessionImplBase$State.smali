# classes3.dex

.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ESTABLISHED:I = 0x4

.field public static final ESTABLISHING:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final INITIATED:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NEGOTIATING:I = 0x2

.field public static final REESTABLISHING:I = 0x6

.field public static final RENEGOTIATING:I = 0x5

.field public static final TERMINATED:I = 0x8

.field public static final TERMINATING:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_22

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6  #0x8
    const-string v0, "TERMINATED"

    return-object v0

    :pswitch_9  #0x7
    const-string v0, "TERMINATING"

    return-object v0

    :pswitch_c  #0x6
    const-string v0, "REESTABLISHING"

    return-object v0

    :pswitch_f  #0x5
    const-string v0, "RENEGOTIATING"

    return-object v0

    :pswitch_12  #0x4
    const-string v0, "ESTABLISHED"

    return-object v0

    :pswitch_15  #0x3
    const-string v0, "ESTABLISHING"

    return-object v0

    :pswitch_18  #0x2
    const-string v0, "NEGOTIATING"

    return-object v0

    :pswitch_1b  #0x1
    const-string v0, "INITIATED"

    return-object v0

    :pswitch_1e  #0x0
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_1b  #00000001
        :pswitch_18  #00000002
        :pswitch_15  #00000003
        :pswitch_12  #00000004
        :pswitch_f  #00000005
        :pswitch_c  #00000006
        :pswitch_9  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
