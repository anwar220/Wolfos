# classes2.dex

.class public final synthetic Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    iput-object p2, p0, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;

    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl$2$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/media/AudioRecordingMonitorImpl$2;->lambda$handleMessage$0(Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;Ljava/util/ArrayList;)V

    return-void
.end method
