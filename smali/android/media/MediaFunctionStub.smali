# classes2.dex

.class public interface abstract Landroid/media/MediaFunctionStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/media/MediaFunctionStub;
    .registers 1

    const-class v0, Landroid/media/MediaFunctionStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFunctionStub;

    return-object v0
.end method


# virtual methods
.method public abstract broadcastHeadSetPlugInState(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract broadcastRecorderState(ILandroid/media/AudioRecordingConfiguration;)V
.end method
