# classes3.dex

.class public final synthetic Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

.field public final synthetic f$2:Landroid/service/voice/VisibleActivityInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;->f$1:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;->f$2:Landroid/service/voice/VisibleActivityInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;->f$1:Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$$ExternalSyntheticLambda5;->f$2:Landroid/service/voice/VisibleActivityInfo;

    invoke-static {v0, v1, v2}, Landroid/service/voice/VoiceInteractionSession;->lambda$informVisibleActivityChanged$4(Ljava/util/concurrent/Executor;Landroid/service/voice/VoiceInteractionSession$VisibleActivityCallback;Landroid/service/voice/VisibleActivityInfo;)V

    return-void
.end method
