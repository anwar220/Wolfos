# classes2.dex

.class public Landroid/media/midi/MidiManager$DeviceCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2

    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 2

    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2

    return-void
.end method
