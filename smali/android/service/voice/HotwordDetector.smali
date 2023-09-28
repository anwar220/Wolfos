# classes3.dex

.class public interface abstract Landroid/service/voice/HotwordDetector;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetector$Callback;
    }
.end annotation


# static fields
.field public static final DETECTOR_TYPE_NORMAL:I = 0x0

.field public static final DETECTOR_TYPE_TRUSTED_HOTWORD_DSP:I = 0x1

.field public static final DETECTOR_TYPE_TRUSTED_HOTWORD_SOFTWARE:I = 0x2


# direct methods
.method public static detectorTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2
    const-string/jumbo v0, "trusted_hotword_software"

    return-object v0

    :pswitch_c  #0x1
    const-string/jumbo v0, "trusted_hotword_dsp"

    return-object v0

    :pswitch_10  #0x0
    const-string/jumbo v0, "normal"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_c  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract startRecognition()Z
.end method

.method public abstract startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
.end method

.method public abstract stopRecognition()Z
.end method

.method public abstract updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method
