# classes2.dex

.class public Landroid/mtp/MtpEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpEvent$IllegalParameterAccess;
    }
.end annotation


# static fields
.field public static final EVENT_CANCEL_TRANSACTION:I = 0x4001

.field public static final EVENT_CAPTURE_COMPLETE:I = 0x400d

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x4008

.field public static final EVENT_DEVICE_PROP_CHANGED:I = 0x4006

.field public static final EVENT_DEVICE_RESET:I = 0x400b

.field public static final EVENT_OBJECT_ADDED:I = 0x4002

.field public static final EVENT_OBJECT_INFO_CHANGED:I = 0x4007

.field public static final EVENT_OBJECT_PROP_CHANGED:I = 0xc801

.field public static final EVENT_OBJECT_PROP_DESC_CHANGED:I = 0xc802

.field public static final EVENT_OBJECT_REFERENCES_CHANGED:I = 0xc803

.field public static final EVENT_OBJECT_REMOVED:I = 0x4003

.field public static final EVENT_REQUEST_OBJECT_TRANSFER:I = 0x4009

.field public static final EVENT_STORAGE_INFO_CHANGED:I = 0x400c

.field public static final EVENT_STORE_ADDED:I = 0x4004

.field public static final EVENT_STORE_FULL:I = 0x400a

.field public static final EVENT_STORE_REMOVED:I = 0x4005

.field public static final EVENT_UNDEFINED:I = 0x4000

.field public static final EVENT_UNREPORTED_STATUS:I = 0x400e


# instance fields
.field private mEventCode:I

.field private mParameter1:I

.field private mParameter2:I

.field private mParameter3:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    iput v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return-void
.end method


# virtual methods
.method public getDevicePropCode()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_12

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "devicePropCode"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_f  #0x4006
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_data_12
    .packed-switch 0x4006
        :pswitch_f  #00004006
    .end packed-switch
.end method

.method public getEventCode()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return v0
.end method

.method public getObjectFormatCode()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_12

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "objectFormatCode"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_f  #0xc802
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0

    :pswitch_data_12
    .packed-switch 0xc802
        :pswitch_f  #0000c802
    .end packed-switch
.end method

.method public getObjectHandle()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    sparse-switch v0, :sswitch_data_22

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "objectHandle"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_f
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_12
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_15
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_18
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_1b
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_1e
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x4002 -> :sswitch_1e
        0x4003 -> :sswitch_1b
        0x4007 -> :sswitch_18
        0x4009 -> :sswitch_15
        0xc801 -> :sswitch_12
        0xc803 -> :sswitch_f
    .end sparse-switch
.end method

.method public getObjectPropCode()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_16

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "objectPropCode"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_f  #0xc802
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_12  #0xc801
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0xc801
        :pswitch_12  #0000c801
        :pswitch_f  #0000c802
    .end packed-switch
.end method

.method public getParameter1()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0
.end method

.method public getParameter2()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0
.end method

.method public getParameter3()I
    .registers 2

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter3:I

    return v0
.end method

.method public getStorageId()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    sparse-switch v0, :sswitch_data_1c

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "storageID"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_f
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_12
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_15
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :sswitch_18
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x4004 -> :sswitch_18
        0x4005 -> :sswitch_15
        0x400a -> :sswitch_12
        0x400c -> :sswitch_f
    .end sparse-switch
.end method

.method public getTransactionId()I
    .registers 4

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    packed-switch v0, :pswitch_data_12

    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    iget v1, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    const-string v2, "transactionID"

    invoke-direct {v0, v2, v1}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_f  #0x400d
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0

    :pswitch_data_12
    .packed-switch 0x400d
        :pswitch_f  #0000400d
    .end packed-switch
.end method
