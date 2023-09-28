# classes2.dex

.class public final synthetic Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/midi/MidiManager$DeviceListener;

.field public final synthetic f$1:Landroid/media/midi/MidiDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;->f$0:Landroid/media/midi/MidiManager$DeviceListener;

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;->f$1:Landroid/media/midi/MidiDeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;->f$0:Landroid/media/midi/MidiManager$DeviceListener;

    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;->f$1:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceRemoved$1$android-media-midi-MidiManager$DeviceListener(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method
