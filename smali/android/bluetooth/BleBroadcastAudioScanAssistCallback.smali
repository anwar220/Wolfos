# classes.dex

.class public abstract Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastAudioScanAssistCallback$Bass_Status;
    }
.end annotation


# static fields
.field public static final BASS_STATUS_COLOCATED_SRC_UNAVAILABLE:I = 0x5

.field public static final BASS_STATUS_DUPLICATE_ADDITION:I = 0x8

.field public static final BASS_STATUS_FAILURE:I = 0x1

.field public static final BASS_STATUS_FATAL:I = 0x2

.field public static final BASS_STATUS_INVALID_GROUP_OP:I = 0x10

.field public static final BASS_STATUS_INVALID_SOURCE_ID:I = 0x4

.field public static final BASS_STATUS_INVALID_SOURCE_SELECTED:I = 0x6

.field public static final BASS_STATUS_NO_EMPTY_SLOT:I = 0x9

.field public static final BASS_STATUS_SOURCE_UNAVAILABLE:I = 0x7

.field public static final BASS_STATUS_SUCCESS:I = 0x0

.field public static final BASS_STATUS_TXN_TIMEOUT:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 4

    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 4

    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 4

    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 4

    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .registers 2

    return-void
.end method

.method public onBleBroadcastSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
