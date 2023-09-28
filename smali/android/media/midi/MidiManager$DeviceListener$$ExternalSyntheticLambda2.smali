# classes2.dex

.class public final synthetic Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/midi/MidiManager$DeviceListener;

.field public final synthetic f$1:Landroid/media/midi/MidiDeviceStatus;


# direct methods
.method public synthetic constructor <init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$0:Landroid/media/midi/MidiManager$DeviceListener;

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$1:Landroid/media/midi/MidiDeviceStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$0:Landroid/media/midi/MidiManager$DeviceListener;

    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;->f$1:Landroid/media/midi/MidiDeviceStatus;

    invoke-virtual {v0, v1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceStatusChanged$2$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method
