# classes2.dex

.class public Landroid/nfc/ErrorCodes;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_BUFFER_TO_SMALL:I = -0xc

.field public static final ERROR_BUSY:I = -0x4

.field public static final ERROR_CANCELLED:I = -0x2

.field public static final ERROR_CONNECT:I = -0x5

.field public static final ERROR_DISCONNECT:I = -0x5

.field public static final ERROR_INSUFFICIENT_RESOURCES:I = -0x9

.field public static final ERROR_INVALID_PARAM:I = -0x8

.field public static final ERROR_IO:I = -0x1

.field public static final ERROR_NFC_ON:I = -0x10

.field public static final ERROR_NOT_INITIALIZED:I = -0x11

.field public static final ERROR_NOT_SUPPORTED:I = -0x15

.field public static final ERROR_NO_SE_CONNECTED:I = -0x14

.field public static final ERROR_READ:I = -0x6

.field public static final ERROR_SAP_USED:I = -0xd

.field public static final ERROR_SERVICE_NAME_USED:I = -0xe

.field public static final ERROR_SE_ALREADY_SELECTED:I = -0x12

.field public static final ERROR_SE_CONNECTED:I = -0x13

.field public static final ERROR_SOCKET_CREATION:I = -0xa

.field public static final ERROR_SOCKET_NOT_CONNECTED:I = -0xb

.field public static final ERROR_SOCKET_OPTIONS:I = -0xf

.field public static final ERROR_TIMEOUT:I = -0x3

.field public static final ERROR_WRITE:I = -0x7

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_48

    const-string v0, "UNKNOWN ERROR"

    return-object v0

    :pswitch_6  #0x0
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_9  #0xffffffff
    const-string v0, "IO"

    return-object v0

    :pswitch_c  #0xfffffffe
    const-string v0, "CANCELLED"

    return-object v0

    :pswitch_f  #0xfffffffd
    const-string v0, "TIMEOUT"

    return-object v0

    :pswitch_12  #0xfffffffc
    const-string v0, "BUSY"

    return-object v0

    :pswitch_15  #0xfffffffb
    const-string v0, "CONNECT/DISCONNECT"

    return-object v0

    :pswitch_18  #0xfffffffa
    const-string v0, "READ"

    return-object v0

    :pswitch_1b  #0xfffffff9
    const-string v0, "WRITE"

    return-object v0

    :pswitch_1e  #0xfffffff8
    const-string v0, "INVALID_PARAM"

    return-object v0

    :pswitch_21  #0xfffffff7
    const-string v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    :pswitch_24  #0xfffffff6
    const-string v0, "SOCKET_CREATION"

    return-object v0

    :pswitch_27  #0xfffffff5
    const-string v0, "SOCKET_NOT_CONNECTED"

    return-object v0

    :pswitch_2a  #0xfffffff4
    const-string v0, "BUFFER_TO_SMALL"

    return-object v0

    :pswitch_2d  #0xfffffff3
    const-string v0, "SAP_USED"

    return-object v0

    :pswitch_30  #0xfffffff2
    const-string v0, "SERVICE_NAME_USED"

    return-object v0

    :pswitch_33  #0xfffffff1
    const-string v0, "SOCKET_OPTIONS"

    return-object v0

    :pswitch_36  #0xfffffff0
    const-string v0, "NFC_ON"

    return-object v0

    :pswitch_39  #0xffffffef
    const-string v0, "NOT_INITIALIZED"

    return-object v0

    :pswitch_3c  #0xffffffee
    const-string v0, "SE_ALREADY_SELECTED"

    return-object v0

    :pswitch_3f  #0xffffffed
    const-string v0, "SE_CONNECTED"

    return-object v0

    :pswitch_42  #0xffffffec
    const-string v0, "NO_SE_CONNECTED"

    return-object v0

    :pswitch_45  #0xffffffeb
    const-string v0, "NOT_SUPPORTED"

    return-object v0

    :pswitch_data_48
    .packed-switch -0x15
        :pswitch_45  #ffffffeb
        :pswitch_42  #ffffffec
        :pswitch_3f  #ffffffed
        :pswitch_3c  #ffffffee
        :pswitch_39  #ffffffef
        :pswitch_36  #fffffff0
        :pswitch_33  #fffffff1
        :pswitch_30  #fffffff2
        :pswitch_2d  #fffffff3
        :pswitch_2a  #fffffff4
        :pswitch_27  #fffffff5
        :pswitch_24  #fffffff6
        :pswitch_21  #fffffff7
        :pswitch_1e  #fffffff8
        :pswitch_1b  #fffffff9
        :pswitch_18  #fffffffa
        :pswitch_15  #fffffffb
        :pswitch_12  #fffffffc
        :pswitch_f  #fffffffd
        :pswitch_c  #fffffffe
        :pswitch_9  #ffffffff
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public static isError(I)Z
    .registers 2

    if-gez p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
